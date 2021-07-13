import React, {Component} from 'react';

class RedirectHomeComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {

        }
        this.goHome = this.goHome.bind(this)
    }

    goHome() {
        this.props.history.push("/");
    }

    render() {
        return (
            <div>
                <p>You don't have any car or your car is already repaired or you don't own this car.</p>
                <button onClick={this.goHome}>HOME</button>
            </div>
        );
    }
}

export default RedirectHomeComponent;