import React, {Component} from 'react';
import {Card} from "react-bootstrap";
import CarServiceService from "../../service/CarServiceService";

class AllServicesComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {

        }
    }

    componentDidMount() {
        CarServiceService.getAllServiceTypes().then(r => {
            console.log(r.data);
        })
    }

    render() {
        return (
            <div>
                <Card className="bg-dark text-white">
                    <Card.Img width="400px" height="400px" src="https://cdn11.bigcommerce.com/s-ycu4zkmhpl/images/stencil/830x518/uploaded_images/oil-change-101.jpg?t=1561563671" alt="Card image" />
                    <Card.ImgOverlay>
                        <Card.Title>Card title</Card.Title>
                        <Card.Text>
                            This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.
                        </Card.Text>
                        <Card.Text>Price: 100 EURO</Card.Text>
                    </Card.ImgOverlay>
                </Card>
            </div>
        );
    }
}

export default AllServicesComponent;