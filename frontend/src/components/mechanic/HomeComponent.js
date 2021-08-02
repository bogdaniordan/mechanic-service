import React, {Component} from 'react';
import MechanicService from "../../service/MechanicService";
import axios from "axios";
import AuthService from "../../service/AuthService";
import {Card, CardGroup, Navbar} from "react-bootstrap";
import {Container} from "react-bootstrap";
import {Nav} from "react-bootstrap";
import FooterComponent from "../car-service/FooterComponent";

class HomeComponent extends Component {
    constructor(props) {
        super(props)
        this.state = {
            mechanics: [ ],
            message: null
        }
        this.refreshMechanics = this.refreshMechanics.bind(this)
        this.addMechanic = this.addMechanic.bind(this);
        this.viewMechanic = this.viewMechanic.bind(this);
        // this.goToProfile = this.goToProfile.bind(this);
        // this.signedInUser = this.signedInUser.bind(this);
        this.filterBySpecialization = this.filterBySpecialization.bind(this);
        // this.login = this.login.bind(this);
        // this.logout = this.logout.bind(this);
    }

    // logout() {
    //     this.props.history.push("/logout");
    // }

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

    // goToProfile() {
    //     this.props.history.push("/profile")
    // }

    // signedInUser() {
    //     let user;
    //     if (AuthService.getCurrentCustomer() != null) {
    //         user = AuthService.getCurrentCustomer();
    //         return user.name
    //     } else {
    //         return "Guest";
    //     }
    // }

    filterBySpecialization = (event) => {
        MechanicService.getMechanicsBySpecialization(event.target.value).then(r => {
            this.setState({mechanics: r.data})
        })
    }

    // login() {
    //     this.props.history.push("/login");
    // }

    render() {
        // const user = this.signedInUser();
        return (
            <div>
                <Navbar bg="dark" variant="dark">
                    <Container>
                        <Navbar.Brand href="/profile">My profile</Navbar.Brand>
                        <Nav className="me-auto">
                            <Nav.Link href="/add-mechanic">Add mechanic</Nav.Link>
                            {AuthService.getCurrentCustomer() ?  <Nav.Link href="/logout">Logout</Nav.Link> :  <Nav.Link href="/login">Log in</Nav.Link>}
                            <Nav.Link href="/carServices">Services</Nav.Link>
                        </Nav>
                        {AuthService.getCurrentUser() ? <Navbar.Text>Signed in as: <a href="#">{AuthService.getCurrentCustomer().name}</a></Navbar.Text> : ""}
                    </Container>
                </Navbar>
                Filter by:
                <select className="form-select form-select-sm" aria-label=".form-select-sm example" onChange={this.filterBySpecialization}>
                    <option value="OIL_CHANGE">OIL_CHANGE</option>
                    <option value="ENGINE_REPAIR">ENGINE_REPAIR</option>
                    <option value="BUMPER_REPLACEMENT">BUMPER_REPLACEMENT</option>
                </select>
                <CardGroup>
                    {
                        this.state.mechanics.map(
                            mechanic =>
                                <Card key={mechanic.id}>
                                    <Card.Img variant="top" src={mechanic.picture} />
                                    <Card.Body>
                                        <Card.Title>{mechanic.name}</Card.Title>
                                        <Card.Text>
                                            Specialization {mechanic.specialization}
                                        </Card.Text>
                                    </Card.Body>
                                    <Card.Footer>
                                        <small className="text-muted">ID: {mechanic.id}</small>
                                        <button className="btn btn-info" onClick={() => this.props.history.push(`/update-mechanic/${mechanic.id}`)}>Update</button>
                                        <button className="btn btn-primary" onClick={() => this.viewMechanic(mechanic.id)}>View</button>
                                    </Card.Footer>
                                </Card>
                        )
                    }
                </CardGroup>
                {/*<div className="row">*/}
                {/*    <h4>Meet our experts</h4>*/}
                {/*    <table className="table table-striped table-bordered">*/}
                {/*        <thead>*/}
                {/*        <tr>*/}
                {/*            <td>ID</td>*/}
                {/*            <td>Name</td>*/}
                {/*            <td>Specialization</td>*/}
                {/*            <td>Actions</td>*/}
                {/*        </tr>*/}
                {/*        </thead>*/}
                {/*        <tbody>*/}
                {/*    {*/}
                {/*        this.state.mechanics.map(*/}
                {/*            mechanic =>*/}
                {/*                <tr key={mechanic.id}>*/}
                {/*                    <td>{mechanic.id}</td>*/}
                {/*                    <td>{mechanic.name}</td>*/}
                {/*                    <td>{mechanic.specialization}</td>*/}
                {/*                    <td>*/}
                {/*                        /!*<button className="btn btn-danger" onClick={()=> this.deleteMechanic(mechanic.id)}>Delete</button>*!/*/}
                {/*                        <button className="btn btn-info" onClick={() => this.props.history.push(`/update-mechanic/${mechanic.id}`)}>Update</button>*/}
                {/*                        <button className="btn btn-primary" onClick={() => this.viewMechanic(mechanic.id)}>View</button>*/}
                {/*                    </td>*/}
                {/*                </tr>*/}
                {/*        )*/}
                {/*    }*/}
                {/*        </tbody>*/}
                {/*    </table>*/}
                {/*</div>*/}
                {/*<br/>*/}
                {/*<button className="btn btn-primary" onClick={this.addMechanic}>Add mechanic</button>*/}
                {/*<button className="btn btn-dark" onClick={this.goToProfile}>My profile</button>*/}
                {/*{AuthService.getCurrentCustomer() ? <button className="btn btn-outline-info" onClick={this.logout}>Log out</button> : <button className="btn btn-outline-info" onClick={this.login}>Log in</button>}*/}
                {/*<div>*/}
                {/*    <p>Signed in as: {user.name}</p>*/}
                {/*</div>*/}
                {FooterComponent}
            </div>
        );
    }
}

export default HomeComponent;