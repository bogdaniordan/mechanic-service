import React, {Component} from 'react';

class CreateTestimonialComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            mechanicId: this.props.match.params.mechanicId,
            requiredService: this.props.match.params.requiredService,
            carId: this.props.match.params.carId,
            comment: "",
            rating: ""
        }
        this.setComment = this.setComment.bind(this);
        this.setRating = this.setRating.bind(this);
    }

    componentDidMount() {
        console.log(this.state.mechanicId)
        console.log(this.state.requiredService)
    }

    setComment = (event) => {
        this.setState({comment: event.target.value})
    }



    setRating = (event) => {
        this.setState({rating: event.target.value})
    }

    cancel() {
        this.props.history.push("/")
    }

    render() {
        return (
            <div>
                <div className="container">
                    <div className="row">
                        <div className="card col-md-6 offset-md-3 offset-md-3">
                            <h3 className="text-center">Add testimonial</h3>
                            <h5 className="text-center">This testimonial will be assigned to mechanic with id: {this.state.mechanicId}</h5>
                            <div className="card-body">
                                <form>
                                    <div className="form-group">
                                        <label>Add a comment
                                            <input placeholder="Name" name="name" className="form-control"
                                                   onChange={this.setComment}/>
                                        </label>
                                    </div>
                                    <div className="form-group">
                                        <label>Select a satisfaction rating
                                            <select name="fuel" onChange={this.setRating}>
                                                <option value="BAD">BAD</option>
                                                <option value="OK">OK</option>
                                                <option value="GOOD">GOOD</option>
                                                <option value="VERY_SATISFIED">VERY_SATISFIED</option>
                                            </select>
                                        </label>
                                    </div>
                                    <br/>
                                    {/*<button className="btn btn-success" onClick={this.saveCar}>Save</button>*/}
                                    <button className="btn btn-danger" onClick={this.cancel.bind(this)} style={{marginLeft: "10px"}}>Cancel</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        );
    }
}

export default CreateTestimonialComponent;