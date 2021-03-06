import React, {Component} from 'react';
import CustomerService from "../../service/CustomerService";
import AuthService from "../../service/AuthService";
import AppointmentService from "../../service/AppointmentService";
import ReceivedServicesComponent from "../car-service/ReceivedServicesComponent";

class CustomerProfileComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: "",
            name: "",
            car: "",
            email: "",
            phoneNumber: "",
            address: "",
            username: "",
            city: "",
            fuel: "",
            appointment: "",
            picture: ""
        }
        this.replaceCar = this.replaceCar.bind(this);
        this.updateDetails = this.updateDetails.bind(this);
    }

    updateDetails() {
        this.props.history.push(`/update-customer-details/${AuthService.getCurrentCustomer().id}`)
    }

    userLoggedInChecker() {
        if (!AuthService.getCurrentUser()) {
            this.props.history.push("/login")
        } else {

            this.setState({name: AuthService.getCurrentCustomer().name})
            this.setState({email: AuthService.getCurrentCustomer}.email)

            CustomerService.getCustomerById(AuthService.getCurrentCustomer().id).then(r => {

                console.log(r.data)
                console.log(r.data.ownedCar.name)
                this.setState({id: AuthService.getCurrentCustomer().id})
                this.setState({phoneNumber: r.data.phoneNumber})
                this.setState({username: r.data.dbUser.username})
                this.setState({address: r.data.street})
                this.setState({city: r.data.city})
                this.setState({car: r.data.ownedCar})
                this.setState({fuel: r.data.ownedCar.fuel})
                this.setState({picture: r.data.picture})
            })

        }
    }

    getAppointment() {
        AppointmentService.getByCustomerId(AuthService.getCurrentCustomer().id).then(r => {
            if (!r.data) {
                return false;
            } else {
                this.setState({appointment: r.data})
                console.log(this.state.appointment)
                return true;
            }


        })
    }

    componentDidMount() {
        // console.log(AuthService.getCurrentCustomer())
        this.userLoggedInChecker();
        this.getAppointment();
    }

    // assignCarToMechanic() {
    //     // get dbUser's (customer's) car and assign it to a mechanic - mechanic selected from a dropdown list
    // }

    replaceCar() {
        this.props.history.push(`/replace-dbUser-car/${this.state.id}`)
    }

    render() {
        let appoint;
        if (this.state.appointment !== "") {
            appoint = `Appointment at ${this.state.appointment.time} on ${this.state.appointment.localDate}`
        } else {
            appoint = 'No appointments scheduled'
        }
        return (
            <div>
                <div className="container">
                    <div className="row gutters">
                        <div className="col-xl-3 col-lg-3 col-md-12 col-sm-12 col-12">
                            <div className="card h-100">
                                <div className="card-body">
                                    <div className="account-settings">
                                        <div className="dbUser-profile">
                                            <div className="dbUser-avatar">
                                                <img width="250px" height="350px" src={this.state.picture}
                                                     alt="Maxwell Admin"/>
                                            </div>
                                            <h5 className="dbUser-name">{this.state.name}</h5>
                                            <h6 className="dbUser-email">Username: {this.state.username}</h6>
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
                                                <p>{this.state.name}</p>
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
                                                <p>{this.state.car.brandName}</p>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="ciTy">Fuel type</label>
                                                <p>{this.state.fuel}</p>
                                            </div>
                                        </div>
                                        <div className="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                                            <div className="form-group">
                                                <label htmlFor="ciTy">Car status</label>
                                                <p>{this.state.car.repairedstatus}</p>
                                            </div>
                                        </div>
                                    </div>
                                    <div className="row gutters">
                                        <div className="col-xl-12 col-lg-12 col-md-12 col-sm-12 col-12">
                                            <div className="text-right">
                                                {/*<button type="button" id="submit" name="submit"*/}
                                                {/*        className="btn btn-secondary" onClick={this.assignCarToMechanic}>Assign to mechanic*/}
                                                {/*</button>*/}
                                                <button type="button" id="submit" name="submit"
                                                        className="btn btn-primary" onClick={this.updateDetails}>Update
                                                </button>
                                                <button type="button" id="submit" name = "submit" className="btn btn-success" onClick={this.replaceCar}>Replace car</button>
                                            </div>
                                        </div>
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                    {appoint}
                    <ReceivedServicesComponent history={this.props.history} />
                </div>
            </div>
        );
    }
}

export default CustomerProfileComponent;