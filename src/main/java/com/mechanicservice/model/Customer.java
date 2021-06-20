package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import net.minidev.json.annotate.JsonIgnore;

import javax.persistence.*;

@Entity(name = "customer")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "name")
    private String name;

    @OneToOne
    @JoinColumn(name = "ownedcar_id")
    private Car ownedCar;

    @OneToOne
    private Credentials credentials;

    public Customer(String name) {
        this.name = name;
    }

    public void assignCar(Car ownedCar) {
        this.ownedCar = ownedCar;
    }

    public void assignCredentials(Credentials credentials) {
        this.credentials = credentials;
    }
}
