package com.mechanicservice.service;

import com.mechanicservice.model.Testimonial;
import com.mechanicservice.repository.TestimonialRepository;
import org.apache.velocity.exception.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TestimonialService {
    @Autowired
    private TestimonialRepository testimonialRepository;

    public List<Testimonial> getTestimonialsByMechanic(Long id) {
        return testimonialRepository.getTestimonialsByMechanic_Id(id)
                .orElseThrow(() -> new ResourceNotFoundException("Couldn't find testimonials for mechanic with id: " + id));
    }
}
