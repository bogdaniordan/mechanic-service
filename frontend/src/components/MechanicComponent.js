import React, {Component} from 'react';
import MechanicService from "../service/MechanicService";
class MechanicComponent extends Component {
    constructor(props) {
        super(props)
        // this.refreshCourses = this.refreshCourses.bind(this)
        this.state = {
            cars: [ ],
            message: null
        }
        this.refreshMechanics = this.refreshMechanics.bind(this)
        this.addMechanic = this.addMechanic.bind(this);
        // this.updateMechanic = this.addMechanic.bind(this);
    }

    refreshMechanics() {
        MechanicService.getAllMechanics().then((response) => {
            this.setState({ cars: response.data })
        });
    }

    componentDidMount() {
        this.refreshMechanics()
    }

    deleteMechanic(id) {
        MechanicService.deleteMechanic(id).then((response) => {
            this.setState({message: `Delete of car ${id} successful`});
            this.refreshMechanics();
            // this.props.history.push("/");
        })
    }

    addMechanic() {
        this.props.history.push("/add-mechanic");
    }

    // updateMechanic(mechanicId) {
    //     this.props.history.push(`/update-mechanic/${mechanicId}`);
    // }

    render() {
        return (
            <div>
                <div className="row">
                    <h4>Available mechanics</h4>
                    <table className="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <td>ID</td>
                            <td>Name</td>
                            <td>Specialization</td>
                        </tr>
                        </thead>
                    </table>
                    <tbody>
                    {
                        this.state.cars.map(
                            mechanic =>
                                <tr key={mechanic.id}>
                                    <td>{mechanic.id}</td>
                                    <td>{mechanic.name}</td>
                                    <td>{mechanic.specialization}</td>
                                    <td><button className="btn btn-danger" onClick={()=> this.deleteMechanic(mechanic.id)}>Delete</button></td>
                                    <td><button className="btn btn-info" onClick={() => this.props.history.push(`/update-mechanic/${mechanic.id}`)}>Update</button></td>
                                </tr>
                        )
                    }
                    </tbody>
                </div>
                <br/>
                <button className="btn btn-primary" onClick={this.addMechanic}>Add mechanic</button>
            </div>
        );
    }
}

export default MechanicComponent;