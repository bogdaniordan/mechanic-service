package com.mechanicservice.service;

import com.mechanicservice.repository.MechanicRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MechanicService {

    @Autowired
    private MechanicRepository mechanicRepository;
}
