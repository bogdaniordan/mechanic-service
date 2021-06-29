package com.mechanicservice.controller;

import com.mechanicservice.model.User;
import com.mechanicservice.service.CustomerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.view.RedirectView;

import java.util.List;

@org.springframework.stereotype.Controller
@CrossOrigin(origins = "*", allowedHeaders = "*")
public class Controller {
    @Autowired
    private CustomerService customerService;

    @GetMapping("/")
    public String indexPage() {
        return "index";
    }

    @PostMapping("/")
    public RedirectView logIn(@RequestParam(value = "username") String username,
                                @RequestParam(value = "password") String password) {
        List<User> credentials = customerService.getAllCredentials();
        for (User credential: credentials) {
            if (credential.getUsername().equals(username) && credential.getPassword().equals(password)) {
                return new RedirectView("/homepage");
            }
        }
        return new RedirectView("");
    }

    @GetMapping("/homepage")
    public String homePage() {
        return "homepage";
    }
}
