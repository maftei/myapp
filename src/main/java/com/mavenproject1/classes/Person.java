/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mavenproject1.classes;

import java.io.Serializable;

/**
 *
 * @author razvan
 */
public class Person implements Cloneable, Serializable,ValidateString {

    String firstname;
    String lastname;
    String personalIdentityCode;
    String phone;
    String emailaddress;
    String address;
    

    public Person() {
        this.firstname = "";
        this.lastname = "";
        this.personalIdentityCode = "";
        this.phone = "";
        this.emailaddress = "";
        this.address = "";
        this.studentnumber = 0;
    }

    public Person(String firstname, String lastname, String personalIdentityCode, String phone, String emailAddress, String address, int studentnumber) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.personalIdentityCode = personalIdentityCode;
        this.phone = phone;
        this.emailaddress = emailAddress;
        this.address = address;
        this.studentnumber = studentnumber;
    }

    public String get_firstname() {
        return firstname;
    }

    public int set_firstname(String pfirstname) {
        if (pfirstname != null) {
            this.firstname = pfirstname;
            return 1;
        }
        return 0;
    }

    public String get_lastname() {
        return lastname;
    }

    public int set_lastname(String plastname) {
        if (plastname != null) {
            this.lastname = plastname;
            return 1;
        }
        return 0;
    }

    @Override
    public String emailValidation(String emailaddress) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String personnameValidation(String personname) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String passwordValidation(String password) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
