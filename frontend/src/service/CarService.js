import axios from 'axios';

const CARS_REST_API_URL = 'http://localhost:8080/cars';

class CarService {

    getCar(id) {
        return axios.get(CARS_REST_API_URL + "/" + id);
    }

    getAllCars() {
        return axios.get(CARS_REST_API_URL);
    }

    createCarAndAssignIt(id, car) {
        return axios.post(CARS_REST_API_URL + "/" + id, car);
    }

    updateCarStatus(id) {
        return axios.put(CARS_REST_API_URL + "/update-status/" + id);
    }
}

export default new CarService();