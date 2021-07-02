import axios from "axios";

const CUSTOMER_SERVICE_API_URL = "http://localhost:8080/customers"


class CustomerService {

    getCustomerByUserId(id) {
        return axios.get(CUSTOMER_SERVICE_API_URL + "/by-user-id/" + id)
    }

}

export default new CustomerService();