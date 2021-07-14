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
        Long s = new Long(2);
        return new ResponseEntity<>(testimonials, HttpStatus.OK);
    }

}
