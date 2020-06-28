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
public class Student extends User implements Cloneable, Serializable{
    
   
    public  Student()
  {
      super();
  
  }
    
    public Student (String firstname, String lastname, String phone, String emailAddress, String address,String username, String password)
    {
        super(firstname, lastname, phone, emailAddress, address,username,password);
    }
    
    
    
}
