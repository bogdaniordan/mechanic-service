import React, {Component} from 'react';
import axios from "axios";
import AuthService from "../../service/AuthService";
import CustomerService from "../../service/CustomerService";
import AuthHeader from "../../service/AuthHeader";


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
        // this.currentUser = this.currentUser.bind(this);
        // this.logInFunction = this.logInFunction.bind(this);
        // this.props.handleLogin = this.props.handleLogin.bind(this);
    }

    setUserName = (event) => {
        this.setState({username: event.target.value});
    }

    setPassword = (event) => {
        this.setState({password: event.target.value});
    }

    // logInFunction(data) {
    //     this.props.handleLogin(data)
    // }

    login = (event) => {
        event.preventDefault();
        const user = {
            username: this.state.username,
            password: this.state.password
        }
        axios.post("http://localhost:8080/users/authenticate", user).then(r => {
            if (r.data) {
                // console.log(r.data);
                localStorage.setItem("user", JSON.stringify(r.data));
                // nu merge cu fctia din service trb facut ca mai sus
                // CustomerService.getCustomerByHisUsername(this.state.username).then(response => {
                //     console.log(r.data)
                //     localStorage.setItem("customer", JSON.stringify(r.data))
                // })

                axios.get("http://localhost:8080/customers/customer-by-username/" + this.state.username, {headers: AuthHeader()}).then(response => {
                    console.log(response.data);
                    localStorage.setItem("customer", JSON.stringify(response.data))

                })
                this.props.history.push("/");
            } else {
                alert("Incorrect username or password.")
            }
        })
    }

    componentDidMount() {
        if (AuthService.getCurrentUser()) {
            this.props.history.push("/logout");
        }
    }

    render() {
        return (
            <div>
                <form>

                    <h3>Log in</h3>

                    <div className="form-group">
                        <label>Email</label>
                        <input type="email" className="form-control" placeholder="Enter email" onChange={this.setUserName}/>
                    </div>

                    <div className="form-group">
                        <label>Password</label>
                        <input type="password" className="form-control" placeholder="Enter password" onChange={this.setPassword}/>
                    </div>

                    <button type="submit" className="btn btn-dark btn-lg btn-block" onClick={this.login}>Sign in</button>
                </form>
            </div>
        );
    }
}

export default LoginComponent;