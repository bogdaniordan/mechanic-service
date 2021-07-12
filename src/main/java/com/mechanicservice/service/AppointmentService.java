package com.mechanicservice.service;

import com.mechanicservice.model.Appointment;
import com.mechanicservice.model.Customer;
import com.mechanicservice.model.Mechanic;
import com.mechanicservice.repository.AppointmentRepository;
import com.mechanicservice.repository.CustomerRepository;
import com.mechanicservice.repository.MechanicRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    private MechanicRepository mechanicRepository;

    public Appointment addNewAppointment(Appointment appointment, Long customerId, Long mechanicId) {
        Customer customer = customerRepository.findById(customerId)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find customer with id " + customerId));
        Mechanic mechanic = mechanicRepository.findById(mechanicId)
                .orElseThrow(() -> new ResourceNotFoundException("Could not find mechanic with id: " + mechanicId));
        appointment.assignCustomer(customer);
        appointment.assignMechanic(mechanic);
        return appointmentRepository.save(appointment);
    }
}
