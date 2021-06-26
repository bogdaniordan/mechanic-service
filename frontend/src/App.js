import logo from './logo.svg';
import './App.css';
import MechanicComponent from "./components/MechanicComponent"
import {BrowserRouter as Router, Route, Switch}from 'react-router-dom'
import CreateMechanicComponent from "./components/CreateMechanicComponent";
import UpdateMechanicComponent from "./components/UpdateMechanicComponent";
import MechanicProfile from "./components/MechanicProfile";
import CreateCarComponent from "./components/CreateCarComponent";

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
