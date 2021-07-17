import React, {Component} from 'react';
import {Card} from "react-bootstrap";
import CarServiceService from "../../service/CarServiceService";

class AllServicesComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            services: []
        }
    }

    componentDidMount() {
        CarServiceService.getAllServiceTypes().then(r => {
            console.log(r.data);
            this.setState({services: r.data})
        })
    }

    render() {
        return (
            <div>
                <h3>The services we offer:</h3>
                {
                    this.state.services.map(
                        service =>
                            <Card className="bg-dark text-white">
                                <Card.Img width="400px" height="500px" src={service.pictureURL} alt="Card image" />
                                <Card.ImgOverlay>
                                    <Card.Title>{service.serviceType}</Card.Title>
                                    <Card.Text>
                                        {service.description}
                                    </Card.Text>
                                    <Card.Text>Price: {service.price} EURO</Card.Text>
                                </Card.ImgOverlay>
                            </Card>

                    )
                }

            </div>
        );
    }
}

export default AllServicesComponent;