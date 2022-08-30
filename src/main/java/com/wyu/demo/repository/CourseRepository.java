package com.wyu.demo.repository;

import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.entity.Course;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface CourseRepository extends CrudRepository<Course,String> {


}
