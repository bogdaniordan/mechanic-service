import React, {Component} from 'react';
import MechanicService from "../../service/MechanicService";
import axios from "axios";
import AuthHeader from "../../service/AuthHeader";
import AuthService from "../../service/AuthService";

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
        this.goToProfile = this.goToProfile.bind(this);
        this.signedInUser = this.signedInUser.bind(this);
        this.filterBySpecialization = this.filterBySpecialization.bind(this);
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

    goToProfile() {
        this.props.history.push("/profile")
    }

    signedInUser() {
        let user;
        if (AuthService.getCurrentUser()) {
            user = AuthService.getCurrentCustomer();
        } else {
            user = "Guest";
        }
        return user;
    }

    filterBySpecialization = (event) => {
        MechanicService.getMechanicsBySpecialization(event.target.value).then(r => {
            this.setState({mechanics: r.data})
        })
    }

    render() {
        const user = this.signedInUser();
        return (
            <div>
                Filter by:
                <select className="form-select form-select-sm" aria-label=".form-select-sm example" onChange={this.filterBySpecialization}>
                    <option value="OIL_CHANGE">OIL_CHANGE</option>
                    <option value="ENGINE_REPAIR">ENGINE_REPAIR</option>
                    <option value="BUMPER_REPLACEMENT">BUMPER_REPLACEMENT</option>
                </select>
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
                <button className="btn btn-dark" onClick={this.goToProfile}>My profile</button>
                <div>
                    <p>Signed in as: {user.name}</p>
                </div>
            </div>
        );
    }
}

export default MechanicComponent;