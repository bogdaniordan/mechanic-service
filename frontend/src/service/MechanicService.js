import axios from 'axios';

const CARS_REST_API_URL = 'http://localhost:8080/mechanics';

class MechanicService {

    getMechanic(id) {
        return axios.get(CARS_REST_API_URL + "/" + id);
    }

    getAllMechanics() {
        return axios.get(CARS_REST_API_URL);
    }
}

export default new MechanicService();