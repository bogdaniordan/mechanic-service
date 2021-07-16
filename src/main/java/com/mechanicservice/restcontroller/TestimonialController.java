package com.mechanicservice.restcontroller;


import com.mechanicservice.model.Testimonial;
import com.mechanicservice.service.TestimonialService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@Slf4j
@RequestMapping("/testimonials")
public class TestimonialController {

    @Autowired
    private TestimonialService testimonialService;

    @GetMapping("/{mechanicId}")
    public ResponseEntity<List<Testimonial>> getTestimonialsByMechanic(@PathVariable Long mechanicId) {
        log.info("Fetching testimonials for mechanic with id: " + mechanicId);
        List<Testimonial> testimonials = testimonialService.getTestimonialsByMechanic(mechanicId);
        return new ResponseEntity<>(testimonials, HttpStatus.OK);
    }

    @PostMapping("/create-testimonial/{mechanicId}/{customerId}/{carId}")
    public ResponseEntity<Testimonial> addNewTestimonial(@RequestBody Testimonial testimonial,
                                                         @PathVariable Long carId,
                                                         @PathVariable Long customerId,
                                                         @PathVariable Long mechanicId) {
        log.info("Adding a new testimonial.");
        Testimonial newTestimonial = testimonialService.addTestimonial(testimonial, carId, customerId, mechanicId);
        return new ResponseEntity<>(newTestimonial, HttpStatus.CREATED);
    }

}
