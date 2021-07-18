import './App.css';
import HomeComponent from "./components/mechanic/HomeComponent"
import {BrowserRouter as Router, Route, Switch}from 'react-router-dom'
import CreateMechanicComponent from "./components/mechanic/CreateMechanicComponent";
import UpdateMechanicComponent from "./components/mechanic/UpdateMechanicComponent";
import MechanicProfile from "./components/mechanic/MechanicProfile";
import CreateCarComponent from "./components/car/CreateCarComponent";
import React, {Component} from "react";
import LoginComponent from "./components/authentication/LoginComponent";
import CustomerProfileComponent from "./components/customer/CustomerProfileComponent";
import LogoutComponent from "./components/authentication/LogoutComponent";
import ReplaceUserCarComponent from "./components/car/ReplaceUserCarComponent";
import AppointmentComponent from "./components/car-service/AppointmentComponent";
import RedirectHomeComponent from "./components/car-service/RedirectHomeComponent";
import CreateTestimonialComponent from "./components/testimonial/CreateTestimonialComponent";
import AllServicesComponent from "./components/car-service/AllServicesComponent";
// import '../node_modules/bootstrap/dist/css/bootstrap.min.css';
import "./index.css";
import CardDetailsComponent from "./components/payment/CardDetailsComponent";
import UpdateCustomerComponent from "./components/customer/UpdateCustomerComponent";



class App extends Component{
    constructor(props) {
        super(props);
        this.state = {
        }
    }

    render() {
        return (
            <div className="App">
                <Router>
                    <div className="container">
                        <Switch>
                            <Route path="/" exact component={HomeComponent} ></Route>
                            <Route path="/add-mechanic" component = {CreateMechanicComponent}></Route>
                            <Route path="/update-mechanic/:id" component = {UpdateMechanicComponent}></Route>
                            <Route path="/mechanic/:id" component = {MechanicProfile}></Route>
                            <Route path="/add-car/:mechanicId" component = {CreateCarComponent}></Route>
                            <Route path="/login" component={LoginComponent}></Route>
                            <Route path="/logout" component={LogoutComponent}></Route>
                            <Route path="/profile" component={CustomerProfileComponent}></Route>
                            <Route path="/replace-user-car/:id" component={ReplaceUserCarComponent}></Route>
                            <Route path="/appointment/mechanic/:mechanicId/:carId" component={AppointmentComponent}></Route>
                            <Route path="/redirect-home-appointment" component={RedirectHomeComponent}></Route>
                            <Route path="/testimonial/:mechanicId/:requiredService/:carId" component={CreateTestimonialComponent}></Route>
                            <Route path="/services" component={AllServicesComponent}></Route>
                            <Route path="/payment/:customerId" component={CardDetailsComponent}></Route>
                            <Route path="/update-customer-details/:customerId" component={UpdateCustomerComponent}></Route>
                        </Switch>
                    </div>
                </Router>
            </div>
        );
    }
}

export default App;
