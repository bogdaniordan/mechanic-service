package com.mechanicservice.restcontroller;

import com.mechanicservice.model.Service;
import com.mechanicservice.service.ServiceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@Slf4j
@RequestMapping("/services")
public class ServiceController {

    @Autowired
    ServiceService serviceService;

    @GetMapping("/{mechanicId}")
    public ResponseEntity<Service> getServiceByMechanicId(@PathVariable Long mechanicId) {
        log.info("Fetching service by mechanic with id: " + mechanicId);
        Service service = serviceService.getServiceByMechanic(mechanicId);
        return new ResponseEntity<>(service, HttpStatus.OK);
    }

}
