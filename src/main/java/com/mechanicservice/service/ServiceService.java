package com.mechanicservice.service;

import com.mechanicservice.model.Service;
import com.mechanicservice.repository.ServiceRepository;
import lombok.extern.slf4j.Slf4j;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;


@Slf4j
@org.springframework.stereotype.Service
public class ServiceService {

    @Autowired
    ServiceRepository serviceRepository;

    public Service getServiceByMechanic(Long id) {
        return serviceRepository.getServiceByMechanicId(id)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find service!"));
    }
}
