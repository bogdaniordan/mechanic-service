package com.mechanicservice.restcontroller;


import com.mechanicservice.model.User;
import com.mechanicservice.repository.CredentialsRepository;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
@RestController
@Slf4j
@RequestMapping("/users")
public class UserController {
    @Autowired
    CredentialsRepository credentialsRepository;


    @PostMapping
    public ResponseEntity<User> logIn(@RequestBody User user) {
        User matchedUser = null;
        List<User> userList = credentialsRepository.findAll();
        for (User credential: userList) {
            if (user.getPassword().equals(credential.getPassword())
            && user.getUsername().equals(credential.getUsername())) {
                matchedUser = credential;
            }
        }
        return new ResponseEntity<>(matchedUser, HttpStatus.OK);
    }

//    @PostMapping
//    public ResponseEntity<UserDetails> login(@AuthenticationPrincipal User user) {
//        UserDetails userDetails = userDetailsService.loadUserByUsername(user.getUsername());
//        log.info(userDetails.toString());
//        return new ResponseEntity<>(userDetails, HttpStatus.OK);
//    }
}
