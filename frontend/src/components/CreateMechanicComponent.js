import React, {Component} from 'react';
import MechanicService from "../service/MechanicService";

class CreateMechanicComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: "",
            specialization: ""
        }
        this.setNameHandler = this.setNameHandler.bind(this);
        this.setSpecialization = this.setSpecialization.bind(this);
        this.saveMechanic = this.saveMechanic.bind(this);
    }

    saveMechanic = (e) => {
        e.preventDefault();
        const mechanic = {
            name: this.state.name,
            specialization: this.state.specialization
        }
        MechanicService.createMechanic(mechanic).then(response => {
            this.props.history.push("/");
        });
        console.log(JSON.stringify(mechanic))
    }

    setNameHandler = (event) => {
        this.setState({name : event.target.value});
    }

    setSpecialization = (event) => {
        this.setState({specialization: event.target.value});
    }

    cancel() {
        this.props.history.push("/")
    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row">
                        <div className="card col-md-6 offset-md-3 offset-md-3">
                            <h3 className="text-center">Add Mechanic</h3>
                            <div className="card-body">
                                <form>
                                    <div className="form-group">
                                        <label>Add name
                                            <input placeholder="Name" name="name" className="form-control"
                                                   value={this.state.name} onChange={this.setNameHandler}/>
                                        </label>
                                    </div>
                                    {/*<div className="form-group">*/}
                                    {/*    <label>Select a specialization*/}
                                    {/*        <select name="specialization" value={this.state.specialization} onClick={this.setSpecialization}>*/}
                                    {/*            <option value="ENGINE_REPAIR">ENGINE_REPAIR</option>*/}
                                    {/*            <option value="OIL_CHANGE">OIL_CHANGE</option>*/}
                                    {/*            <option value="BUMPER_REPLACEMENT">BUMPER_REPLACEMENT</option>*/}
                                    {/*        </select>*/}
                                    {/*    </label>*/}
                                    {/*</div>*/}
                                    <div className="form-group">
                                        <label>Add a specialization
                                            <input placeholder="Specialization" name="specialization" className="form-control"
                                                   value={this.state.specialization} onChange={this.setSpecialization}/>
                                        </label>
                                    </div>

                                    <br/>
                                    <button className="btn btn-success" onClick={this.saveMechanic}>Save</button>
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

export default CreateMechanicComponent;