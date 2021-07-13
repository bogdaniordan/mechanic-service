import axios from "axios";
import AuthHeader from "./AuthHeader";

const TESTIMONIALS_API_URL = "http://localhost:8080/testimonials"

class TestimonialsService {
    getTestimonialsByMechanic(id) {
        return axios.get(TESTIMONIALS_API_URL + "/" + id, {headers: AuthHeader() })
    }
}

export default new TestimonialsService();