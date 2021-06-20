package com.mechanicservice.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.persistence.*;

@Entity(name = "credentials")
@Data
@NoArgsConstructor
@AllArgsConstructor
public class Credentials {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "password")
    private String password;

    public Credentials(String username, String password) {
        this.username = username;
        this.password = password;
    }
}
