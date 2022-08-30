package com.wyu.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class User {
    @Id
    private String userid;
    private String username;
    private String password;


}
