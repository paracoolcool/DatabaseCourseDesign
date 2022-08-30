package com.wyu.demo.repository;

import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.Teacher;
import org.springframework.data.repository.CrudRepository;

public interface TeacherRepository extends CrudRepository<Teacher,String> {


}
