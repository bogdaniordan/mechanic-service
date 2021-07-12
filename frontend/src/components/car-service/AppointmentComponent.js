import React, {Component} from 'react';
import AuthService from "../../service/AuthService";
import CustomerService from "../../service/CustomerService";

class AppointmentComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: "",
            email: "",
            requiredService: "",
            car: "",
            time: "",
            date: ""
        }
        this.setTimeHandler = this.setTimeHandler.bind(this);
        this.setDateHandler = this.setDateHandler.bind(this);
        this.makeAppointment = this.makeAppointment.bind(this);
    }

    componentDidMount() {
        this.setState({name: AuthService.getCurrentCustomer().name})
        this.setState({email: AuthService.getCurrentCustomer}.email)
        CustomerService.getCustomerById(AuthService.getCurrentCustomer().id).then(r => {
            console.log(r.data)
            if (r.data.ownedCar.repairedstatus === "BROKEN") {
                this.props.history.push("/redirect-home-appointment");
            }
            this.setState({requiredService: r.data.ownedCar.requiredservice})
            this.setState({car: r.data.ownedCar.brandName})
            this.setState({fuel: r.data.ownedCar.fuel})
        })
        if (!AuthService.getCurrentUser()) {
            this.props.history.push("/login")
        }
    }


    setTimeHandler = (event) => {
        this.setState({time: event.target.value})
    }

    setDateHandler = (event) => {
        this.setState({date: event.target.value})
    }

    makeAppointment() {

    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row">
                        <div className="col-md-6">
                            <div className="well-block">
                                <div className="well-title">
                                    <h2>Questions? Book an Appointment</h2>
                                </div>
                                <form>
                                    <div className="row">
                                        <div className="col-md-6">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="name">Name</label>
                                                <p>{this.state.name}</p>
                                            </div>
                                        </div>
                                        <div className="col-md-6">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="email">Email</label>
                                                <p>{this.state.email}</p>
                                            </div>
                                        </div>
                                        <div className="col-md-6">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="date">Preferred Date</label>
                                                <input id="date" name="date" type="text" onChange={this.setDateHandler} placeholder="Preferred Date"
                                                       className="form-control input-md"/>
                                            </div>
                                        </div>
                                        <div className="col-md-6">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="time">Preferred Time</label>
                                                <select id="time" name="time" className="form-control" onChange={this.setTimeHandler}>
                                                    <option value="8:00 to 9:00">8:00 to 9:00</option>
                                                    <option value="9:00 to 10:00">9:00 to 10:00</option>
                                                    <option value="10:00 to 1:00">10:00 to 1:00</option>
                                                </select>
                                            </div>
                                        </div>
                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="appointmentfor">Appointment
                                                    for service:</label>
                                                <h4>{this.state.requiredService}</h4>
                                            </div>
                                        </div>
                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label className="control-label" htmlFor="appointmentfor">Car:</label>
                                                <h4>{this.state.car}</h4>
                                            </div>
                                        </div>
                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <button id="singlebutton" name="singlebutton"
                                                        className="btn btn-info">Make An Appointment
                                                </button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div className="col-md-6">
                            <div className="well-block">
                                <div className="well-title">
                                    <h2>Why Appointment with Us</h2>
                                </div>
                                <div className="feature-block">
                                    <div className="feature feature-blurb-text">
                                        <h4 className="feature-title">24/7 Hours Available</h4>
                                        <div className="feature-content">
                                            <p>Integer nec nisi sed mi hendrerit mattis. Vestibulum mi nunc, ultricies
                                                quis vehicula et, iaculis in magnestibulum.</p>
                                        </div>
                                    </div>
                                    <div className="feature feature-blurb-text">
                                        <h4 className="feature-title">Experienced Staff Available</h4>
                                        <div className="feature-content">
                                            <p>Aliquam sit amet mi eu libero fermentum bibendum pulvinar a turpis.
                                                Vestibulum quis feugiat risus. </p>
                                        </div>
                                    </div>
                                    <div className="feature feature-blurb-text">
                                        <h4 className="feature-title">Low Price & Fees</h4>
                                        <div className="feature-content">
                                            <p>Praesent eu sollicitudin nunc. Cras malesuada vel nisi consequat pretium.
                                                Integer auctor elementum nulla suscipit in.</p>
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

export default AppointmentComponent;