import axios from "axios";

const CAR_SERVICE_API_URL = "http://localhost:8080/services


class CarServiceService {

    getServiceByMechanicId(id) {
        return axios.get(CAR_SERVICE_API_URL + "/" + id);
    }

}


export default new CarServiceService();