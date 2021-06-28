import React, {Component} from 'react';
import MechanicService from "../../service/MechanicService";

class MechanicComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            mechanics: [ ],
            message: null
        }
        this.refreshMechanics = this.refreshMechanics.bind(this)
        this.addMechanic = this.addMechanic.bind(this);
        this.viewMechanic = this.viewMechanic.bind(this);
    }

    refreshMechanics() {
        MechanicService.getAllMechanics().then((response) => {
            this.setState({ mechanics: response.data })
        });
    }

    componentDidMount() {
        this.refreshMechanics()
    }

    deleteMechanic(id) {
        MechanicService.deleteMechanic(id).then((response) => {
            this.setState({message: `Delete of mechanic ${id} successful`});
            // this.setState({mechanics: this.state.mechanics.filter(mechanic => mechanic.id !== id)})
            alert(this.state.message)
            this.refreshMechanics();
        })
    }

    addMechanic() {
        this.props.history.push("/add-mechanic");
    }

    viewMechanic(id) {
        this.props.history.push(`/mechanic/${id}`);
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
                            <td>Actions</td>
                        </tr>
                        </thead>
                        <tbody>
                    {
                        this.state.mechanics.map(
                            mechanic =>
                                <tr key={mechanic.id}>
                                    <td>{mechanic.id}</td>
                                    <td>{mechanic.name}</td>
                                    <td>{mechanic.specialization}</td>
                                    <td>
                                        <button className="btn btn-danger" onClick={()=> this.deleteMechanic(mechanic.id)}>Delete</button>
                                        <button className="btn btn-info" onClick={() => this.props.history.push(`/update-mechanic/${mechanic.id}`)}>Update</button>
                                        <button className="btn btn-primary" onClick={() => this.viewMechanic(mechanic.id)}>View</button>
                                    </td>
                                </tr>
                        )
                    }
                        </tbody>
                    </table>
                </div>
                <br/>
                <button className="btn btn-primary" onClick={this.addMechanic}>Add mechanic</button>
            </div>
        );
    }
}

export default MechanicComponent;