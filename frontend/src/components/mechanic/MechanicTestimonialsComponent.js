import React, {Component} from 'react';
import "react-responsive-carousel/lib/styles/carousel.min.css";
import {Carousel} from "react-responsive-carousel";
import TestimonialsService from "../../service/TestimonialsService";

class MechanicTestimonialsComponent extends Component {
    constructor(props) {
        super(props);
        this.state = {
            testimonials: []
        }
    }

    componentDidMount() {
        console.log(this.props.mechanicId)
        TestimonialsService.getTestimonialsByMechanic(this.props.mechanicId).then(r => {
            // console.log(r.data)
            this.setState({testimonials: r.data});
            console.log(this.state.testimonials);
        })
    }

    render() {
        return (
            <div>
                <h3>Client testimonials</h3>
                <Carousel autoPlay>
                    {/*<div>*/}
                    {/*    <img src="assets/1.jpeg" />*/}
                    {/*    <p className="legend">AYYYYYY LMAO</p>*/}
                    {/*</div>*/}
                    {/*<div>*/}
                    {/*    <img src="assets/2.jpeg" />*/}
                    {/*    <p className="legend">Legend 2</p>*/}
                    {/*</div>*/}
                    {/*<div>*/}
                    {/*    <h3>AAAAAA</h3>*/}
                    {/*</div>*/}
                    {
                        this.state.testimonials.map(
                            testimonial =>
                                <div key={testimonial.id}>
                                    <h3>{testimonial.customer.name}</h3>
                                    <p>Rating: {testimonial.rating}</p>
                                    <p>{testimonial.comment}</p>
                                </div>
                        )
                    }
                </Carousel>
            </div>
        );
    }
}

export default MechanicTestimonialsComponent;