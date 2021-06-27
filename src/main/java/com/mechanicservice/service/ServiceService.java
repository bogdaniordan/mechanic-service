package com.mechanicservice.service;

import com.mechanicservice.model.Service;
import com.mechanicservice.repository.CarRepository;
import com.mechanicservice.repository.MechanicRepository;
import com.mechanicservice.repository.ServiceRepository;
import lombok.extern.slf4j.Slf4j;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;


@Slf4j
@org.springframework.stereotype.Service
public class ServiceService {

    @Autowired
    ServiceRepository serviceRepository;

    @Autowired
    CarRepository carRepository;

    @Autowired
    MechanicRepository mechanicRepository;

    public Service getServiceByMechanic(Long id) {
        return serviceRepository.getServiceByMechanicId(id)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find service!"));
    }

    public List<Service> getAllServices() {
        return serviceRepository.findAll();
    }

    public Service createNewCarService(Service service, Long carId, Long mechanicId) {
        service.assignCar(carRepository.findById(carId)
                        .orElseThrow(() -> new ResourceNotFoundException("Car not found!")));
        service.assignMechanic(mechanicRepository.findById(mechanicId).
                orElseThrow(() -> new ResourceNotFoundException("Mechanic not found!")));
        return serviceRepository.save(service);
    }

    public List<Service> getAllByMechanicId(Long id) {
        return serviceRepository.getServicesByMechanic_Id(id).
                orElseThrow(() -> new ResourceNotFoundException("Could not find services with this mechanic id: " + id));
    }
}
