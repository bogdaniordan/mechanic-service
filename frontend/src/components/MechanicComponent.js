import React, {Component} from 'react';
import CarService from "../service/MechanicService";

class MechanicComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            cars: [ ]
        }
    }

    componentDidMount() {
        CarService.getAllMechanics().then((response) => {
            this.setState({ cars: response.data })
        });
    }

    render() {
        return (
            <div>
                <table>
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
                            </tr>
                    )
                }
                </tbody>
            </div>
        );
    }
}

export default MechanicComponent;