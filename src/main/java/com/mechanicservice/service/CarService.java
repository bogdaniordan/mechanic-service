package com.mechanicservice.service;

import com.mechanicservice.model.Car;
import com.mechanicservice.repository.CarRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarService {

    @Autowired
    private CarRepository carRepository;

    public Car getCar(Long id) {
        return carRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Unable to find customer id: " + id));
    }
}
