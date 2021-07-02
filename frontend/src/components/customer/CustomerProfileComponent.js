import React, {Component} from 'react';
import CustomerService from "../../service/CustomerService";

class CustomerProfileComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: this.props.match.params.id,
            name: "",
            ownedCar: ""
        }

    }

    componentDidMount() {
        CustomerService.getCustomerByUserId(this.state.id).then(r => {
            this.setState({name: r.data.name})
            // this.setState({ownedCar: r.data.ownedCar})
            // console.log(r.data.ownedCar)
        })
    }

    render() {
        return (
            <div>
                <p>{this.state.name}</p>
            </div>
        );
    }
}

export default CustomerProfileComponent;