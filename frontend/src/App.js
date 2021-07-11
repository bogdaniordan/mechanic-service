import './App.css';
import MechanicComponent from "./components/mechanic/MechanicComponent"
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
                            <Route path="/" exact component={MechanicComponent} ></Route>
                            <Route path="/add-mechanic" component = {CreateMechanicComponent}></Route>
                            <Route path="/update-mechanic/:id" component = {UpdateMechanicComponent}></Route>
                            <Route path="/mechanic/:id" component = {MechanicProfile}></Route>
                            <Route path="/add-car/:mechanicId" component = {CreateCarComponent}></Route>
                            <Route path="/login" component={LoginComponent}></Route>
                            {/*<Route path="/user-profile" component={CustomerProfileComponent}></Route>*/}
                            <Route path="/logout" component={LogoutComponent}></Route>
                            <Route path="/profile" component={CustomerProfileComponent}></Route>
                            <Route path="/replace-user-car/:id" component={ReplaceUserCarComponent}></Route>
                        </Switch>
                    </div>
                </Router>
            </div>
        );
    }
}

export default App;
