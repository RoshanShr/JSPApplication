/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jspapp.dao.impl;

import com.leapfrog.jspapp.dao.StudentDAO;
import com.leapfrog.jspapp.entity.Student;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sagar
 */
public class StudentDAOImpl implements StudentDAO {

    @Override
    public List<Student> getAll() {
        List<Student> studentList=new ArrayList<>();
        studentList.add(new Student(1, "Roshan", "Shrestha", "Roshan@gmail.com", "9801103967", true));
        studentList.add(new Student(2, "BJ", "Shrestha", "bj@gmail.com", "9801103455", true));
        return studentList;
        
    }

    @Override
    public Student getById(int id) {
        for(Student c:getAll()){
           if(c.getId()==id){
               return c;
           }
          
       }
       return null;
    }
    

    
}
