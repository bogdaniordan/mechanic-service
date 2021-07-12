import React, {Component} from 'react';
import CarService from "../../service/CarService";
import CarServiceService from "../../service/CarServiceService";

class ListCarsComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            cars: []
        }
        this.repairCar = this.repairCar.bind(this);
        this.makeAppointment = this.makeAppointment.bind(this);
    }

    componentDidMount() {
        CarService.getAllCars().then(response=> {
            this.setState({cars: response.data});
        })
    }

    repairCar(carId, serviceType) {
        const service = {
            date: new Date().getDate(),
            servicetype: serviceType
        }
        console.log(service);
        CarServiceService.createNewService(this.props.mechanicId, carId, service).then(r => {

        })
        this.updateCarRepairStatus(carId)
    }

    updateCarRepairStatus(id) {
        CarService.updateCarStatus(id).then(response => {
            window.location.reload();
        })
    }

    makeAppointment() {
        this.props.history.push('/appointment/mechanic/' + this.props.mechanicId);
    }

    render() {
        return (
            <div>
                <div className="row">
                    <h4>Cars</h4>
                    <table className="table table-striped table-bordered">
                        <thead>
                        <tr>
                            <td>ID</td>
                            <td>Brand name</td>
                            <td>Fuel</td>
                            <td>Repair status</td>
                            <td>Required Service</td>
                            <td>Action</td>
                        </tr>
                        </thead>
                        <tbody>
                        {
                            this.state.cars.map(
                                car =>
                                    <tr key={car.id}>
                                        <td>{car.id}</td>
                                        <td>{car.brandName}</td>
                                        <td>{car.fuel}</td>
                                        <td>{car.repairedstatus}</td>
                                        <td>{car.requiredservice}</td>
                                        <td>{car.repairedstatus === "BROKEN" ? (this.props.specialization === car.requiredservice ? <button className="btn-dark" onClick={this.makeAppointment}>MAKE AN APPOINTMENT</button> : <strong>CANNOT REPAIR</strong>) : <strong>REPAIRED</strong>}</td>

                                        {/*<td>{car.repairedstatus === "BROKEN" ? (this.props.specialization === car.requiredservice ? <button className="btn-dark" onClick={() => this.repairCar(car.id, car.requiredservice)}>REPAIR</button> : <strong>CANNOT REPAIR</strong>) : <strong>REPAIRED</strong>}</td>*/}
                                    </tr>
                            )
                        }
                        </tbody>
                    </table>
                </div>
            </div>
        );
    }
}

export default ListCarsComponent;