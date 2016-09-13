/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.jspapp.dao.impl;

import com.leapfrog.jspapp.dao.CourseDAO;
import com.leapfrog.jspapp.entity.Course;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sagar
 */
public class CourseDAOImpl implements CourseDAO {
    
    

    @Override
    public List<Course> getAll() {
        List<Course> courseList=new ArrayList<>();
        courseList.add(new Course(1, "Core Java", "Core Java Description", false));
        courseList.add(new Course(2, "Advance Java", "Advance Java Description", true));
        return courseList;
        
    }

    @Override
    public Course getById(int id) {
       for(Course c:getAll()){
           if(c.getId()==id){
               return c;
           }
          
       }
       return null;
    }
    
}
