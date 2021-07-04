import jwtDecode from "jwt-decode";
import AuthService from "./AuthService";

export default function ExpiredTokenService() {
    let token = localStorage.getItem("user");
    if (token) {
        let decodedToken = jwtDecode(token);
        console.log("Decoded Token", decodedToken);
        let currentDate = new Date();

        // let result;
        // JWT exp is in seconds
        if (decodedToken.exp * 1000 < currentDate.getTime()) {
            console.log("Token expired.");
            // result = false;
            AuthService.logout();
        } else {
            console.log("Valid token");
            // result = true;
        }
        // return result;
    }

}