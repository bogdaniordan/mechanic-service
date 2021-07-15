import React, {Component} from 'react';

class CreateTestimonialComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            mechanicId: this.props.match.params.mechanicId,
            requiredService: this.props.match.params.requiredService
        }
    }

    componentDidMount() {
        console.log(this.state.mechanicId)
        console.log(this.state.requiredService)
    }

    render() {
        return (
            <div>
                
            </div>
        );
    }
}

export default CreateTestimonialComponent;