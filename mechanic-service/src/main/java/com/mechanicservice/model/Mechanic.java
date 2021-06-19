package com.mechanicservice.model;

import java.util.List;

public class Mechanic {
    private Long id;
    private String name;
    private List<ServiceType> specializations;
    private boolean isBusy;
    private List<Car> assignedCars;
}
