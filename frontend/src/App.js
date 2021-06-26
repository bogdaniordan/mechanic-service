import logo from './logo.svg';
import './App.css';
import MechanicComponent from "./components/mechanic/MechanicComponent"
import {BrowserRouter as Router, Route, Switch}from 'react-router-dom'
import CreateMechanicComponent from "./components/mechanic/CreateMechanicComponent";
import UpdateMechanicComponent from "./components/mechanic/UpdateMechanicComponent";
import MechanicProfile from "./components/mechanic/MechanicProfile";
import CreateCarComponent from "./components/car/CreateCarComponent";
import ListCarsComponent from "./components/car/ListCarsComponent";
import React from "react";

function App() {
  return (
    <div className="App">
        <Router>
            <div className="container">
                <Switch>
                    <Route path="/" exact component = {MechanicComponent}></Route>
                    <Route path="/add-mechanic" component = {CreateMechanicComponent}></Route>
                    <Route path="/update-mechanic/:id" component = {UpdateMechanicComponent}></Route>
                    <Route path="/mechanic/:id" component = {MechanicProfile}></Route>
                    <Route path="/add-car/:mechanicId" component = {CreateCarComponent}></Route>

                </Switch>
            </div>
        </Router>
    </div>
  );
}

export default App;
