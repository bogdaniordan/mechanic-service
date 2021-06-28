import React, {Component} from 'react';
import CarServiceService from "../../service/CarServiceService";

class ServiceComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            services: []
        }
    }

    componentDidMount() {
        CarServiceService.getServicesByMechanicId(this.props.mechanicId).then(response => {
            this.setState({services: response.data})
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
                {
                    this.state.services.map(
                        service =>
                        <div className="card" style={{width: "18rem"}}>
                            <div className="card-body">
                                <h5 className="card-title">Service ID for mechanic {service.mechanic.name}: {service.id}</h5>
                                <h6 className="card-subtitle mb-2 text-muted">Date: {service.date}</h6>
                                <p className="card-text">Service type: {service.servicetype}</p>
                                <p className="card-text">Car: {service.car.brandName}</p>
                            </div>
                        </div>
                    )
                }

            </div>
        );
    }
}

export default ServiceComponent;