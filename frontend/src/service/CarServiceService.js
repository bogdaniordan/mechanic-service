import axios from "axios";

const CAR_SERVICE_API_URL = "http://localhost:8080/services";


class CarServiceService {

    getServiceByMechanicId(id) {
        return axios.get(CAR_SERVICE_API_URL + "/" + id);
    }

    createNewService(mechanicId, carId, service) {
        return axios.post(CAR_SERVICE_API_URL + "/mechanic/" + mechanicId + "/car/" + carId, service)
    }

    getAllServices() {
        return axios.get(CAR_SERVICE_API_URL);
    }

    getServicesByMechanicId(id) {
        return axios.get(CAR_SERVICE_API_URL + "/services-by-mechanic-id/" + id);
    }

}


export default new CarServiceService();