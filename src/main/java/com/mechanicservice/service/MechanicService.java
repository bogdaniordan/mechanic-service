package com.mechanicservice.service;

import com.mechanicservice.model.Car;
import com.mechanicservice.model.Mechanic;
import com.mechanicservice.repository.CarRepository;
import com.mechanicservice.repository.MechanicRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class MechanicService {

    @Autowired
    private MechanicRepository mechanicRepository;

    public List<Mechanic> getAllMechanics() {
        return mechanicRepository.findAll();
    }

    public Mechanic getMechanic(Long id) {
        return mechanicRepository.findById(id)
                .orElseThrow(() -> new ResourceNotFoundException("Unable to find mechanic with id: " + id));
    }

    public Mechanic addMechanic(Mechanic mechanic) {
        return mechanicRepository.save(mechanic);
    }

    public Mechanic updateMechanic(Mechanic mechanic) {
        return mechanicRepository.save(mechanic);
    }

    public Mechanic deleteById(Long id) {
        if (mechanicRepository.findById(id).isPresent()) {
            Mechanic mechanic = mechanicRepository.findById(id).get();
            mechanicRepository.delete(mechanic);
            return mechanic;
        }
        return null;
    }
}
