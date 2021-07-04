import React, {Component} from 'react';
import CustomerService from "../../service/CustomerService";
import AuthService from "../../service/AuthService";

class CustomerProfileComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            id: "",
            name: "",
            ownedCar: ""
        }

    }

    userLoggedInChecker() {
        if (!AuthService.getCurrentUser()) {
            this.props.history.push("/login")
        } else {
            // console.log(AuthService.getCurrentUser())
            this.setState({id: AuthService.getCurrentCustomerUser().id})
            this.setState({name: AuthService.getCurrentCustomerUser().name})
            this.setState({ownedCar: AuthService.getCurrentCustomerUser().ownedCar})
        }
    }

    componentDidMount() {
        this.userLoggedInChecker();
        // CustomerService.getCustomerByUserId(this.state.id).then(r => {
        //     this.setState({name: r.data.name})
        //     this.setState({ownedCar: r.data.ownedCar})
        //     console.log(r.data)
        //     console.log(r.data.ownedCar)
        // })
    }

    render() {
        return (
            <div>
                <p>{this.state.name}</p>
                <p>{this.state.id}</p>
                <p>{this.state.ownedCar.brandName}</p>
            </div>
        );
    }
}

export default CustomerProfileComponent;