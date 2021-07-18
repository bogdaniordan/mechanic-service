import React, {Component} from 'react';
import {Button, Form} from "react-bootstrap";
import CustomerService from "../../service/CustomerService";

class UpdateCustomerComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            name: "",
            email: "",
            phone: "",
            city: "",
            street: ""
        }
        this.setName = this.setName.bind(this);
        this.setEmail = this.setEmail.bind(this);
        this.setPhoneNumber = this.setPhoneNumber.bind(this);
        this.setCity = this.setCity.bind(this);
        this.setStreet = this.setStreet.bind(this);
        this.updateCustomer = this.updateCustomer.bind(this);
    }

    updateCustomer() {
        const updatedCustomer = {
            name: this.state.name,
            email: this.state.email,
            phoneNumber: this.state.phone,
            city: this.state.city,
            street: this.state.street
        }

        console.log(updatedCustomer)

        CustomerService.updateCustomerDetails(updatedCustomer, this.props.match.params.customerId).then(r => {
            console.log(r.data);
        })
    }

    setName = (event) => {
        this.setState({name : event.target.value});
    }


    setEmail = (event) => {
        this.setState({email : event.target.value});
    }

    setPhoneNumber = (event) => {
        this.setState({phone : event.target.value});
    }


    setCity = (event) => {
        this.setState({city : event.target.value});
    }


    setStreet = (event) => {
        this.setState({street : event.target.value});
    }




    render() {
        return (
            <div>
                <Form>
                    <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>Name</Form.Label>
                        <Form.Control type="text" placeholder="George Becali" onChange={this.setName}/>
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>Email address</Form.Label>
                        <Form.Control type="email" placeholder="name@example.com" onChange={this.setEmail}/>
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>Phone number</Form.Label>
                        <Form.Control type="number" placeholder="+4024244124" onChange={this.setPhoneNumber}/>
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>City</Form.Label>
                        <Form.Control type="text" placeholder="Bucharest" onChange={this.setCity}/>
                    </Form.Group>
                    <Form.Group className="mb-3" controlId="exampleForm.ControlInput1">
                        <Form.Label>Street</Form.Label>
                        <Form.Control type="text" placeholder="Magheru street" onChange={this.setStreet}/>
                    </Form.Group>
                    <Button onClick={this.updateCustomer}>Submit</Button>
                </Form>
            </div>
        );
    }
}

export default UpdateCustomerComponent;