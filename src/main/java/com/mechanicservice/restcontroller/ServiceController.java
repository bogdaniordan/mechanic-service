package com.mechanicservice.restcontroller;

import com.mechanicservice.model.Service;
import com.mechanicservice.service.ServiceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "http://localhost:3000")
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

    @PostMapping("/mechanic/{mechanic-id}/car/{car-id}")
    public ResponseEntity<Service> addNewService(@RequestBody Service newService,
                                                 @PathVariable("car-id") Long carId,
                                                 @PathVariable("mechanic-id") Long mechanicId) {
        log.info("Creating a new car service.");
        Service service = serviceService.createNewCarService(newService, carId, mechanicId);
        return new ResponseEntity<>(service, HttpStatus.CREATED);
    }


    @GetMapping("/services-by-mechanic-id/{mechanicId}")
    public ResponseEntity<List<Service>> getAllServices(@PathVariable Long mechanicId) {
        log.info("Fetching all car services.");
        List<Service> services = serviceService.getAllByMechanicId(mechanicId);
        return new ResponseEntity<>(services, HttpStatus.OK);
    }

}
