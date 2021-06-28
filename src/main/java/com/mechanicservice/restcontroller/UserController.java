package com.mechanicservice.restcontroller;


import com.mechanicservice.model.Credentials;
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
    public ResponseEntity<Credentials> logIn(@RequestBody Credentials credentials) {
        Credentials matchedCredentials = null;
        List<Credentials> credentialsList = credentialsRepository.findAll();
        for (Credentials credential: credentialsList) {
            if (credentials.getPassword().equals(credential.getPassword())
            && credentials.getUsername().equals(credential.getUsername())) {
                matchedCredentials = credential;
            }
        }
        return new ResponseEntity<>(matchedCredentials, HttpStatus.OK);
    }
}
