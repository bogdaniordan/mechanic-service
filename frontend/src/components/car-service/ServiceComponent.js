import React, {Component} from 'react';
import CarServiceService from "../../service/CarServiceService";

class ServiceComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            service: "",
            mechanicName: "",
            carBrandName: ""
        }
    }

    componentDidMount() {
        CarServiceService.getServiceByMechanicId(this.props.mechanicId).then(response => {
            this.setState({service: response.data});
            this.setState({mechanicName: response.data.mechanic.name});
            this.setState({carBrandName: response.data.car.brandName});
        })
    }
    // componentDidMount() {
    //     CarServiceService.getAllServices(this.props.mechanicId).then(response => {
    //         this.setState({service: response.data});
    //         this.setState({mechanicName: response.data.mechanic.name});
    //         this.setState({carBrandName: response.data.car.brandName});
    //     })
    // }

    render() {
        return (
            <div>
                <div className="card" style={{width: "18rem"}}>
                    <div className="card-body">
                        <h5 className="card-title">Service ID for mechanic {this.state.mechanicName}: {this.state.service.id}</h5>
                        <h6 className="card-subtitle mb-2 text-muted">Date: {this.state.service.date}</h6>
                        <p className="card-text">Service type: {this.state.service.servicetype}</p>
                        <p className="card-text">Car: {this.state.carBrandName}</p>
                    </div>
                </div>
            </div>
        );
    }
}

export default ServiceComponent;