import React, {Component} from 'react';
import MechanicService from "../../service/MechanicService";
import ListCarsComponent from "../car/ListCarsComponent";
import ServiceComponent from "../car-service/ServiceComponent";
import logo from "../resources/sergei.jpg"

class MechanicProfile extends Component {
    constructor(props) {
        super(props)

        this.state = {
            id: this.props.match.params.id,
            mechanic: {}
        }
        // this.createCar = this.createCar.bind(this);
    }

    componentDidMount(){
        MechanicService.getMechanic(this.state.id).then( res => {
            this.setState({mechanic: res.data});
            console.log(res.data)
        })
    }

    // createCar(id) {
    //     this.props.history.push(`/add-car/${id}`)
    // }

    render() {
        return (
            <div>
                <br></br>
                <div className = "card col-md-6 offset-md-3">
                    <h3 className = "text-center"> View Mechanic Details</h3>
                    {/*<img src={this.state.mechanic.picture}/>*/}
                            <div className = "card-body">
                        <div className = "row">
                            <label> Mechanic ID: </label>
                            <div> { this.state.mechanic.id }</div>
                        </div>
                        <div className = "row">
                            <label> Name: </label>
                            <div> { this.state.mechanic.name }</div>
                        </div>
                        <div className = "row">
                            <label> Specialization: </label>
                            <div> { this.state.mechanic.specialization }</div>
                        </div>
                    </div>
                    <button className="btn btn-success" onClick={() => {this.props.history.push(`/add-car/${this.state.id}`) }}>Create car</button>
                </div>
                <ListCarsComponent history={this.props.history} mechanicId = {this.state.id} specialization = {this.state.mechanic.specialization}/>
                <ServiceComponent mechanicId = {this.state.id}/>
            </div>
        );
    }
}

export default MechanicProfile;