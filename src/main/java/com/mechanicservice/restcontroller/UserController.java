package com.mechanicservice.restcontroller;


import com.mechanicservice.jwt.JWTUtility;
import com.mechanicservice.jwt.JwtRequest;
import com.mechanicservice.jwt.JwtResponse;
import com.mechanicservice.model.User;
import com.mechanicservice.repository.UserRepository;
import com.mechanicservice.service.JWTUserService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@Slf4j
@RequestMapping("/users")
public class UserController {

    @Autowired
    UserRepository userRepository;


    @Autowired
    private JWTUtility jwtUtility;

    @Autowired
    private AuthenticationManager authenticationManager;

    @Autowired
    private JWTUserService userService;

//    @PostMapping
//    public ResponseEntity<User> logIn(@RequestBody User user) {
//        User matchedUser = null;
//        List<User> userList = userRepository.findAll();
//        for (User credential: userList) {
//            if (user.getPassword().equals(credential.getPassword())
//            && user.getUsername().equals(credential.getUsername())) {
//                matchedUser = credential;
//            }
//        }
//        return new ResponseEntity<>(matchedUser, HttpStatus.OK);
//    }

//    @PostMapping
//    public ResponseEntity<UserDetails> login(@AuthenticationPrincipal User user) {
//        UserDetails userDetails = userDetailsService.loadUserByUsername(user.getUsername());
//        log.info(userDetails.toString());
//        return new ResponseEntity<>(userDetails, HttpStatus.OK);
//    }

    @PostMapping("/authenticate")
    public JwtResponse authenticate(@RequestBody JwtRequest jwtRequest) throws Exception{

        try {
            authenticationManager.authenticate(
                    new UsernamePasswordAuthenticationToken(
                            jwtRequest.getUsername(),
                            jwtRequest.getPassword()
                    )
            );
        } catch (BadCredentialsException e) {
            throw new Exception("INVALID_CREDENTIALS", e);
        }

        final UserDetails userDetails
                = userService.loadUserByUsername(jwtRequest.getUsername());

        final String token =
                jwtUtility.generateToken(userDetails);

        return  new JwtResponse(token);
    }
}
