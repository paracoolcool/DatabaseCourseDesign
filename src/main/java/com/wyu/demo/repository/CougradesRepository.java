package com.wyu.demo.repository;

import com.wyu.demo.entity.Cougrades;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.repository.CrudRepository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface CougradesRepository extends CrudRepository<Cougrades,String> {
    List<Cougrades> findByCourseid(String courseid);
    //通过学号和课程号查找到一条成绩
    Cougrades findByStudentidAndCourseid(String studentid,String courseid);
    //通过学号和课程号删除一条成绩
    @Modifying
    @Transactional
    void deleteByStudentidAndCourseid(String studentid,String courseid);
}
