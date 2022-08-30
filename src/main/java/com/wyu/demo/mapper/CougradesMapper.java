package com.wyu.demo.mapper;

import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.ov.OvAvgGrades;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

@Mapper
public interface CougradesMapper {
    //查询一个学生的课程成绩详情
    List<Cougrades> findGradesByStudentId(String studentid);
    //查询所有学生的成绩
    List<Cougrades> allStudentGrades();

    //查询某一课程的平均成绩
    @Select("SELECT AVG(grades) FROM cougrades WHERE courseid=#{courseid}")
    float averageGrades(String courseid);
    //查出所有课程的平均成绩
    @Select("SELECT AVG(grades) avggrades,coursename FROM cougrades,course WHERE course.courseid=cougrades.courseid GROUP BY coursename")
    List<OvAvgGrades> AVG_GRADES_LIST();
    //查询成绩不及格的学生
    List<Cougrades> findFailed();
}
