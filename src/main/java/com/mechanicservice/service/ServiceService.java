package com.mechanicservice.service;

import com.mechanicservice.model.Service;
import com.mechanicservice.repository.CarRepository;
import com.mechanicservice.repository.CustomerRepository;
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

    @Autowired
    CustomerRepository customerRepository;

    public Service getServiceByMechanic(Long id) {
        return serviceRepository.getServiceByMechanicId(id)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find service!"));
    }

    public List<Service> getAllServices() {
        return serviceRepository.findAll();
    }

    public Service createNewCarService(Service service, Long carId, Long mechanicId, Long customerId) {
        service.assignCar(carRepository.findById(carId)
                        .orElseThrow(() -> new ResourceNotFoundException("Car not found!")));
        service.assignMechanic(mechanicRepository.findById(mechanicId).
                orElseThrow(() -> new ResourceNotFoundException("Mechanic not found!")));
        service.assignCustomer(customerRepository.findById(customerId)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find customer with id: " + customerId)));
        return serviceRepository.save(service);
    }

    public List<Service> getAllByMechanicId(Long id) {
        return serviceRepository.getServicesByMechanic_Id(id).
                orElseThrow(() -> new ResourceNotFoundException("Could not find services with this mechanic id: " + id));
    }


    public List<Service> getByCustomerId(Long id) {
        return serviceRepository.getServicesByCustomerId(id).
                orElseThrow(() -> new ResourceNotFoundException("Could not find services with this customer id: " + id));
    }
}
