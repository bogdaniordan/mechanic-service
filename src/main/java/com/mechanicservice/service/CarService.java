package com.mechanicservice.service;

import com.mechanicservice.model.Car;
import com.mechanicservice.model.Customer;
import com.mechanicservice.model.Mechanic;
import com.mechanicservice.repository.CarRepository;
import com.mechanicservice.repository.MechanicRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CarService {

    @Autowired
    private MechanicRepository mechanicRepository;

    @Autowired
    private CarRepository carRepository;

    public Car getCar(Long id) {
        return carRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Unable to find customer id: " + id));
    }

    public Car saveCar(Car car, Long mechanicId) {
        Mechanic mechanic = mechanicRepository.findById(mechanicId)
                .orElseThrow(() -> new ResourceNotFoundException("Unable to find mechanic with id: " + mechanicId));
        car.assignMechanic(mechanic);
        return carRepository.save(car);
    }

    public Car updateCar(Car car) { return carRepository.save(car);}

    public Car deleteById(Long id) {
        if (carRepository.findById(id).isPresent()) {
            Car car = carRepository.findById(id).get();
            carRepository.delete(car);
            return car;
        }
        return null;
    }
}
