import React, {Component} from 'react';
import MechanicService from "../../service/MechanicService";

class UpdateMechanicComponent extends Component {
    constructor(props) {
        super(props);

        this.state = {
            id: this.props.match.params.id,
            name: "",
            specialization: ""
        }
        this.fetchMechanic(this.state.id);
    }

    updateMechanic = (e) => {
        e.preventDefault();
        const mechanic = {
            id: this.state.id,
            name: this.state.name,
            specialization: this.state.specialization
        }
        MechanicService.updateMechanic(mechanic, this.state.id).then(response => {
            this.props.history.push("/");
        });
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

    fetchMechanic(id) {
        MechanicService.getMechanic(id).then(r => {
            this.setState({name: r.data.name})
            this.setState({specialization: r.data.specialization})
        })
    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row">
                        <div className="card col-md-6 offset-md-3 offset-md-3">
                            <h3 className="text-center">Update mechanic</h3>
                            <div className="card-body">
                                <form>
                                    <div className="form-group">
                                        <label>Change name
                                            <input placeholder="Name" name="name" className="form-control"
                                                   value={this.state.name} onChange={this.setNameHandler}/>
                                        </label>
                                    </div>
                                    <div className="form-group">
                                        <label>Select a specialization
                                            <select name="specialization" value={this.state.specialization} onChange={this.setSpecialization}>
                                                <option value="ENGINE_REPAIR">ENGINE_REPAIR</option>
                                                <option value="OIL_CHANGE">OIL_CHANGE</option>
                                                <option value="BUMPER_REPLACEMENT">BUMPER_REPLACEMENT</option>
                                            </select>
                                        </label>
                                    </div>
                                    {/*<div className="form-group">*/}
                                    {/*    <label>Update specialization*/}
                                    {/*        <input placeholder="Specialization" name="specialization" className="form-control"*/}
                                    {/*               value={this.state.specialization} onChange={this.setSpecialization}/>*/}
                                    {/*    </label>*/}
                                    {/*</div>*/}

                                    <br/>
                                    <button className="btn btn-success" onClick={this.updateMechanic}>Update</button>
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

export default UpdateMechanicComponent;