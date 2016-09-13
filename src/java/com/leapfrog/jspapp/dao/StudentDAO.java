/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jspapp.dao;

import com.leapfrog.jspapp.entity.Student;
import java.util.List;

/**
 *
 * @author Sagar
 */
public interface StudentDAO {
    List<Student> getAll();
    Student getById(int Id);
    
}
