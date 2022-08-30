package com.wyu.demo.mapper;

import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.ov.OvJobtitle;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface TeacherMapper {
    @Select("SELECT teacher.teacherid,teacher.deptid,teacher.gender,teacher.jobtitle,teacher.`name`,dept.deptname FROM teacher,dept WHERE teacher.deptid=dept.deptid")
    List<Teacher> findAllTeacher();
    @Select("SELECT teacher.teacherid,teacher.deptid,teacher.gender,teacher.jobtitle,teacher.`name`,dept.deptname FROM teacher,dept WHERE teacher.deptid=dept.deptid and teacherid=#{teacherid}")
    Teacher findATeacher(String teacherid);
    @Update("UPDATE teacher SET ${field}=#{value} WHERE teacherid=#{teacherid}")
    void edit(String teacherid,String field,String value);
    @Select("SELECT COUNT(jobtitle) sum ,teacher.jobtitle FROM teacher GROUP BY jobtitle")
    List<OvJobtitle> allJobtitle();
    @Select("SELECT * FROM teacher WHERE teacherid = #{quick} OR `name`= #{quick1}")
    Teacher quickSearch(String quick, String quick1);
}
