package com.mechanicservice.restcontroller;

import com.mechanicservice.model.Car;
import com.mechanicservice.model.Customer;
import com.mechanicservice.model.Mechanic;
import com.mechanicservice.repository.MechanicRepository;
import com.mechanicservice.service.MechanicService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@Slf4j
@RequestMapping("/mechanics")
public class MechanicController {

    @Autowired
    private MechanicService mechanicService;

    @GetMapping
    public ResponseEntity<List<Mechanic>> getAllMechanics() {
        log.info("Fetching all mechanics.");
        List<Mechanic> mechanics = mechanicService.getAllMechanics();
        return new ResponseEntity<>(mechanics, HttpStatus.OK);
    }

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

    @PutMapping("/{id}")
    public ResponseEntity<Mechanic> updateMechanic(@RequestBody Mechanic mechanic,
                                                   @PathVariable Long id) {
        log.info("Updating mechanic with id: " + mechanic.getId());
        Mechanic updatedMechanic = mechanicService.updateMechanic(mechanic, id);
        return new ResponseEntity<>(updatedMechanic, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteMechanic(@PathVariable Long id)  {
        log.info("Trying to delete mechanic with id:"  + id);
        Mechanic mechanic = mechanicService.deleteById(id);
        if (mechanic == null) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }
}
