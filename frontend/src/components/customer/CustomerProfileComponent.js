import React, {Component} from 'react';
import CustomerService from "../../service/CustomerService";
import AuthService from "../../service/AuthService";

class CustomerProfileComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: "",
            name: "",
            ownedCar: "",
            email: "",
            phoneNumber: "",
            address: "",
            username: "",
            city: ""
        }
        this.assignCarToMechanic = this.assignCarToMechanic.bind(this);
    }

    userLoggedInChecker() {
        if (!AuthService.getCurrentUser()) {
            this.props.history.push("/login")
        } else {

            this.setState({name: AuthService.getCurrentCustomerUser().name})
            this.setState({email: AuthService.getCurrentCustomerUser}.email)

            CustomerService.getCustomerById(AuthService.getCurrentCustomerUser().id).then(r => {

                console.log(r.data)
                this.setState({phoneNumber: r.data.phoneNumber})
                this.setState({username: r.data.user.username})
                this.setState({address: r.data.street})
                this.setState({city: r.data.city})
                // this.setState({ownedCar: r.data.ownedCar.brandName})
                // console.log(this.state.ownedCar)
            })

        }
    }

    componentDidMount() {
        this.userLoggedInChecker();
    }

    assignCarToMechanic() {

    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row gutters">
                        <div className="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                            <div className="card h-100">
                                <div className="card-body">
                                    <div className="account-settings">
                                        <div className="user-profile">
                                            <div className="user-avatar">
                                                <img src="https://bootdey.com/img/Content/avatar/avatar7.png"
                                                     alt="Maxwell Admin"/>
                                            </div>
                                            <h5 className="user-name">{this.state.name}</h5>
                                            <h6 className="user-email">Username: {this.state.username}</h6>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div className="col-xl-9 col-lg-9 col-md-12 col-sm-12 col-12">
                            <div className="card h-100">
                                <div className="card-body">
                                    <div className="row gutters">
                                        <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <h6 className="mb-2 text-primary">Personal Details</h6>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="fullName">Full Name</label>
                                                <input type="text" className="form-control" id="fullName"
                                                       placeholder="Enter full name"/>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="eMail">Email</label>
                                                <p>{this.state.email}</p>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="phone">Phone</label>
                                                <p>{this.state.phoneNumber}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="row gutters">
                                        <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <h6 className="mt-3 mb-2 text-primary">Address</h6>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="Street">Street</label>
                                                <p>{this.state.address}</p>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="ciTy">City</label>
                                                <p>{this.state.city}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="row gutters">
                                        <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <h6 className="mt-3 mb-2 text-primary">My Car</h6>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="Street">Car brand</label>
                                                <p>{this.state.ownedCar.brandName}</p>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="ciTy">Fuel type</label>
                                                {/*<p>{this.state.city}</p>*/}
                                            </div>
                                        </div>
                                    </div>
                                    <div className="row gutters">
                                        <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div className="text-right">
                                                <button type="button" id="submit" name="submit"
                                                        className="btn btn-secondary" onClick={this.assignCarToMechanic}>Assign to mechanic
                                                </button>
                                                <button type="button" id="submit" name="submit"
                                                        className="btn btn-primary">Update
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default CustomerProfileComponent;