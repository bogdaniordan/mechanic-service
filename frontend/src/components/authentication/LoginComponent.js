import React, {Component} from 'react';
import axios from "axios";

class LoginComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            username: "",
            password: ""
        }
        this.setUserName = this.setUserName.bind(this);
        this.setPassword = this.setPassword.bind(this);
        this.login = this.login.bind(this);
        this.logInFunction = this.logInFunction.bind(this);
    }

    setUserName = (event) => {
        this.setState({username: event.target.value});
    }

    setPassword = (event) => {
        this.setState({password: event.target.value});
    }

    logInFunction(data) {
        this.props.handleLogin(data)
    }

    login = (event) => {
        event.preventDefault();
        const user = {
            username: this.state.username,
            password: this.state.password
        }
        axios.post("http://localhost:8080/users", user).then(r => {
            console.log(r.data)
            this.logInFunction(r.data)
            // this.props.handleLogin(r.data);
        })
    }

    render() {
        return (
            <div>
                <p>User</p>
                <input name="username" onChange={this.setUserName}/>
                <p>Password</p>
                <input name="password" onChange={this.setPassword}/>
                <button onClick={this.login}>btn</button>
            </div>
        );
    }
}

export default LoginComponent;