package com.wyu.demo.service;

import com.wyu.demo.entity.Course;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.mapper.CourseMapper;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.repository.CourseRepository;
import com.wyu.demo.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;

@Service
public class CourseService {
    @Autowired
    CourseRepository courseRepository;
    @Resource
    CourseMapper courseMapper;
//    public int deleteStudent(){
//        String studentid = "AP11111";
//        studentRepository.delete(studentid);
//        return 1;
//
//
//    }
    @Transactional
    public Course edit(String courseid,String field,String value){
        courseMapper.edit(courseid,field,value);

        Course course = courseRepository.findById(courseid).orElseThrow(null);

        return course;
    }

}
