package com.wyu.demo.repository;

import com.wyu.demo.entity.Student;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import javax.transaction.Transactional;
import java.util.List;

@Repository
public interface StudentRepository  extends CrudRepository<Student,String> {


}
