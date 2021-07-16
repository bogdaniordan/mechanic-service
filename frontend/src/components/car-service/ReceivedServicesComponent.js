import React, {Component} from 'react';
import CarServiceService from "../../service/CarServiceService";
import AuthService from "../../service/AuthService";
import ReceivedServices from "../../css/ReceivedServices.css"

class ReceivedServicesComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            services: []
        }
    }

    componentDidMount() {
        CarServiceService.getServicesByCustomerId(AuthService.getCurrentCustomer().id).then(r => {
            console.log(r.data)
            this.setState({services: r.data})
        })
    }

    leaveTestimonial(mechanicId, serviceType, carId) {
        this.props.history.push(`/testimonial/${mechanicId}/${serviceType}/${carId}`)
    }

    render() {
        return (
            <div>
                <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
                      rel="stylesheet"/>
                    <div className="container">
                        <div className="row">
                            {
                                this.state.services.map(
                                    service =>    <div className="col-md-4 col-xl-3" key={service.id}>
                                        <div className="card bg-c-blue order-card">
                                            <div className="card-block">
                                                <h6 className="m-b-20">Mechanic: {service.mechanic.name}</h6>
                                                <h3 className="m-b-20">Car: {service.car.brandName}</h3>
                                                <h3 className="m-b-20">Service: {service.servicetype}</h3>

                                                <h2 className="text-right"><i
                                                    className="fa fa-cart-plus f-left"></i><span>Duration: {service.car.requiredservice === service.mechanic.specialization ?  "2 days" : "7 days"}</span></h2>
                                                <p className="m-b-0">Date<span className="f-right">{service.date}</span></p>
                                                <button className="btn btn-info" onClick={() => this.leaveTestimonial(service.mechanic.id, service.servicetype, service.car.id)}>Leave testimonial</button>
                                            </div>
                                        </div>
                                    </div>
                                )
                            }
                            {/*<div className="col-md-4 col-xl-3">*/}
                            {/*    <div className="card bg-c-blue order-card">*/}
                            {/*        <div className="card-block">*/}
                            {/*            <h6 className="m-b-20">Orders Received</h6>*/}
                            {/*            <h2 className="text-right"><i*/}
                            {/*                className="fa fa-cart-plus f-left"></i><span>486</span></h2>*/}
                            {/*            <p className="m-b-0">Completed Orders<span className="f-right">351</span></p>*/}
                            {/*        </div>*/}
                            {/*    </div>*/}
                            {/*</div>*/}
                        </div>
                    </div>
            </div>
        );
    }
}

export default ReceivedServicesComponent;