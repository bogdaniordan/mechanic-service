package com.mechanicservice.security;


import com.mechanicservice.repository.UserRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class JWTUserService implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public UserDetails loadUserByUsername(String userName) throws UsernameNotFoundException {

        com.mechanicservice.model.User user = userRepository.findByUsername(userName)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find user with username: " + userName));

        return new User(user.getUsername(),user.getPassword(),new ArrayList<>());
    }
}
