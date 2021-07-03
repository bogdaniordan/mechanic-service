import React, {Component} from 'react';
import AuthService from "../../service/AuthService";

class LogoutComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {

        }
        this.logout = this.logout.bind(this);
    }

    componentDidMount() {
        if (!AuthService.getCurrentUser()) {
            this.props.history.push("/login");
            alert("You can't logout since you aren't logged in!");
        }

    }

    logout() {
        AuthService.logout();
        this.props.history.push("/login");
    }

    render() {
        return (
            <div>
                <h4>Logout</h4>
                <button onClick={this.logout}>BOOM</button>
            </div>
        );
    }
}

export default LogoutComponent;