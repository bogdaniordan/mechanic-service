package com.mechanicservice.restcontroller;


import com.mechanicservice.model.Customer;
import com.mechanicservice.repository.CustomerRepository;
import com.mechanicservice.repository.MechanicRepository;
import lombok.extern.slf4j.Slf4j;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.hateoas.CollectionModel;
import org.springframework.hateoas.EntityModel;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.linkTo;
import static org.springframework.hateoas.server.mvc.WebMvcLinkBuilder.methodOn;

@RestController
@Slf4j
@RequestMapping("/customers")
public class CustomerController {

    @Autowired
    private CustomerRepository customerRepository;

    @Autowired
    MechanicRepository mechanicRepository;

    @GetMapping("")
    CollectionModel<EntityModel<Customer>> getCustomers() {
        log.info("Fetching " + Arrays.toString(customerRepository.findAll().toArray()));
        List<EntityModel<Customer>> customers = customerRepository.findAll().stream()
                .map(customer -> EntityModel.of(customer,
                        linkTo(methodOn(CustomerController.class).getCustomer(customer.getId())).withSelfRel(),
                        linkTo(methodOn(CustomerController.class).getCustomers()).withRel("customers")))
                .collect(Collectors.toList());

        return CollectionModel.of(customers, linkTo(methodOn(CustomerController.class).getCustomers()).withSelfRel());
    }
//
    @GetMapping("/{id}")
    public EntityModel<Customer> getCustomer(@PathVariable Long id) {
        log.info("Fetching customer with id: " + id);
        Customer customer = customerRepository.findById(id)
                .orElseThrow(() -> {
                    log.warn("Could not find customer with id: " + id);
                    throw new ResourceNotFoundException("Customer not found");
                });
        return EntityModel.of(customer,
                linkTo(methodOn(CustomerController.class).getCustomer(id)).withSelfRel(),
                linkTo(methodOn(CustomerController.class).getCustomers()).withRel("customers"));
    }

}
