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
        })
    }

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
                                    <td><button onClick={()=> this.deleteMechanic(mechanic.id)}>Delete</button></td>
                                </tr>
                        )
                    }
                    </tbody>
                </div>
            </div>
        );
    }
}

export default MechanicComponent;