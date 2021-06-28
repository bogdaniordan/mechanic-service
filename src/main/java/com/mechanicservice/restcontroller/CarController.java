package com.mechanicservice.restcontroller;


import com.mechanicservice.model.Car;
import com.mechanicservice.service.CarService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;


@CrossOrigin(origins = "http://localhost:3000")
@RestController
@Slf4j
@RequestMapping("/cars")
public class CarController {

    @Autowired
    private CarService carService;

    @GetMapping("/{id}")
    public ResponseEntity<Car> getCar(@PathVariable Long id) {
        log.info("Fetching car with id: " + id);
        Car car = carService.getCar(id);
        return new ResponseEntity<>(car, HttpStatus.OK);
    }

    @GetMapping
    public ResponseEntity<List<Car>> getAllCars() {
        log.info("Fetching all the cars in the db.");
        List<Car> cars = carService.getAllCars();
        return new ResponseEntity<>(cars, HttpStatus.OK);
    }

    @PostMapping("/{mechanic-id}")
    public ResponseEntity<Car> addCarAndAssignIt(@RequestBody Car car, @PathVariable("mechanic-id") Long mechanicId) {
        log.info("Adding a new car to the db.");
        Car savedCar = carService.saveCar(car, mechanicId);
        return new ResponseEntity<>(savedCar, HttpStatus.CREATED);
    }

    @PutMapping
    public ResponseEntity<Car> updateCar(@RequestBody Car car) {
        log.info("Updating car with id: " + car.getId());
        Car savedCar = carService.updateCar(car);
        return new ResponseEntity<>(savedCar, HttpStatus.OK);
    }

    @PutMapping("/update-status/{id}")
    public ResponseEntity<Car> updateCarRepairedStatus(@PathVariable Long id) {
        log.info("Updating repair status of car with id: " + id);
        Car updatedCar = carService.updateCarRepairStatus(id);
        return new ResponseEntity<>(updatedCar, HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<Void> deleteCar(@PathVariable Long id)  {
        Car car = carService.deleteById(id);
        if (car == null) {
            return ResponseEntity.noContent().build();
        }
        return ResponseEntity.notFound().build();
    }

}
