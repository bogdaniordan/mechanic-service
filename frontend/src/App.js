import './App.css';
import MechanicComponent from "./components/mechanic/MechanicComponent"
import {BrowserRouter as Router, Route, Switch}from 'react-router-dom'
import CreateMechanicComponent from "./components/mechanic/CreateMechanicComponent";
import UpdateMechanicComponent from "./components/mechanic/UpdateMechanicComponent";
import MechanicProfile from "./components/mechanic/MechanicProfile";
import CreateCarComponent from "./components/car/CreateCarComponent";
import React, {Component} from "react";
import LoginComponent from "./components/authentication/LoginComponent";
import axios from "axios";

class App extends Component{
    constructor(props) {
        super(props);
        this.state = {
            loggedInStatus: "NOT_LOGGED_IN",
            user: {}
        }
    }

    handleLogin(data) {
        this.setState({
            loggedInStatus: "LOGGED_IN",
            user: data.user
        });
    }

    render() {
        return (
            <div className="App">
                <Router>
                    <div className="container">
                        <Switch>
                            <Route path="/" exact render = {(props) => (
                                <MechanicComponent {...props} loggedInStatus = {this.state.loggedInStatus}/>
                            )}></Route>
                            <Route path="/add-mechanic" component = {CreateMechanicComponent}></Route>
                            <Route path="/update-mechanic/:id" component = {UpdateMechanicComponent}></Route>
                            <Route path="/mechanic/:id" component = {MechanicProfile}></Route>
                            <Route path="/add-car/:mechanicId" component = {CreateCarComponent}></Route>
                            <Route path="/login" render = {(props) => (
                                <LoginComponent {...props} handleLogin={this.handleLogin}/>
                                )}></Route>
                            {/*<Route path="/login" component={LoginComponent}></Route>*/}

                        </Switch>
                    </div>
                </Router>
            </div>
        );
    }
}

export default App;
