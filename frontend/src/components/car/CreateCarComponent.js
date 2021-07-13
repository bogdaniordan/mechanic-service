import React, {Component} from 'react';
import CarService from "../../service/CarService";

class CreateCarComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            mechanicId: this.props.match.params.mechanicId,
            name: "",
            fuel: "",
            requiredService: "",
        }
        this.setNameHandler = this.setNameHandler.bind(this);
        this.setFuel = this.setFuel.bind(this);
        this.saveCar = this.saveCar.bind(this);
        this.setRequiredService = this.setRequiredService.bind(this);

    }

    saveCar = (e) => {
        e.preventDefault();
        const car = {
            brandName: this.state.name,
            fuel: this.state.fuel,
            repairedstatus: "BROKEN",
            requiredservice: this.state.requiredService
        }
        CarService.createCarAndAssignIt(this.state.mechanicId, car).then(response => {
            console.log(car)
            this.cancel();
        });
    }

    setRequiredService = (event) => {
        this.setState({requiredService: event.target.value});
    }

    setNameHandler = (event) => {
        this.setState({name : event.target.value});
    }

    setFuel = (event) => {
        this.setState({fuel: event.target.value});
    }

    cancel() {
        this.props.history.push(`/mechanic/${this.state.mechanicId}`)
    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row">
                        <div className="card col-md-6 offset-md-3 offset-md-3">
                            <h3 className="text-center">Add car</h3>
                            <h5 className="text-center">This car will be assigned to the previous mechanic.</h5>
                            <div className="card-body">
                                <form>
                                    <div className="form-group">
                                        <label>Add car name
                                            <input placeholder="Name" name="name" className="form-control"
                                                   value={this.state.name} onChange={this.setNameHandler}/>
                                        </label>
                                    </div>
                                    <div className="form-group">
                                        <label>Select a fuel type
                                            <select name="fuel" value={this.state.fuel} onChange={this.setFuel}>
                                                <option value="DIESEL">DIESEL</option>
                                                <option value="PETROL">PETROL</option>
                                                <option value="ELECTRIC">ELECTRIC</option>
                                            </select>
                                        </label>
                                    </div>
                                    <div className="form-group">
                                        <label>Select the required repair
                                            <select name="repair" value={this.state.requiredService} onChange={this.setRequiredService}>
                                                <option value="ENGINE_REPAIR">ENGINE_REPAIR</option>
                                                <option value="OIL_CHANGE">OIL_CHANGE</option>
                                                <option value="BUMPER_REPLACEMENT">BUMPER_REPLACEMENT</option>
                                            </select>
                                        </label>
                                    </div>
                                    <br/>
                                    <button className="btn btn-success" onClick={this.saveCar}>Save</button>
                                    <button className="btn btn-danger" onClick={this.cancel.bind(this)} style={{marginLeft: "10px"}}>Cancel</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }

}

export default CreateCarComponent;