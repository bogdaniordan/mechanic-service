package com.mechanicservice.restcontroller;

import com.mechanicservice.model.Customer;
import com.mechanicservice.model.Mechanic;
import com.mechanicservice.repository.MechanicRepository;
import com.mechanicservice.service.MechanicService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@Slf4j
@RequestMapping("/mechanics")
public class MechanicController {

    @Autowired
    private MechanicService mechanicService;


    @GetMapping("/{id}")
    public ResponseEntity<Mechanic> getMechanic(@PathVariable Long id) {
        log.info("Fetching mechanic with id: " + id);
        Mechanic mechanic = mechanicService.getMechanic(id);
        return new ResponseEntity<>(mechanic, HttpStatus.OK);
    }


    @PostMapping
    public ResponseEntity<Mechanic> addMechanic(@RequestBody Mechanic mechanic) {
        log.info("Saving a new mechanic");
        Mechanic savedMechanic = mechanicService.addMechanic(mechanic);
        return new ResponseEntity<>(savedMechanic, HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<Mechanic> updateMechanic(@RequestBody Mechanic mechanic) {
        log.info("Updating mechanic with id: " + mechanic.getId());
        Mechanic updatedMechanic = mechanicService.updateMechanic(mechanic);
        return new ResponseEntity<>(updatedMechanic, HttpStatus.OK);
}
