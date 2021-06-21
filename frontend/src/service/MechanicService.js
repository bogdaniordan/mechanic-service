import axios from 'axios';

const MECHANIC_REST_API = 'http://localhost:8080/mechanics';

class MechanicService {

    getMechanic(id) {
        return axios.get(MECHANIC_REST_API + "/" + id);
    }

    getAllMechanics() {
        return axios.get(MECHANIC_REST_API);
    }

    deleteMechanic(id) {
        return axios.delete(MECHANIC_REST_API + "/" + id)
    }
}

export default new MechanicService();