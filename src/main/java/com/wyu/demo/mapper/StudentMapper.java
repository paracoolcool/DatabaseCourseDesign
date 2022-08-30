package com.wyu.demo.mapper;

import com.wyu.demo.ov.OVcountForDept_Fromplace;
import com.wyu.demo.ov.OVfromPlace;
import com.wyu.demo.entity.Student;
import com.wyu.demo.ov.OVgenderAndDept;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper

public interface StudentMapper {
    @Update("UPDATE student SET ${field}=#{value} WHERE studentid=#{studentid}")
     void edit(String studentid,String field,String value);

    List<Student> findAllStudent();
    //查找生源地是？的所有学生
    List<Student> findAllFromPlace(String fromplace);
    @Select("SELECT COUNT(*) count ,fromplace FROM student GROUP BY fromplace")
    List<OVfromPlace> findFromPlace();
    //  查询某个系别的学生生源地人数
    @Select("SELECT COUNT(fromplace) sum,fromplace,deptname FROM student,dept WHERE student.deptid=#{deptid} AND student.deptid=dept.deptid GROUP BY fromplace")
    List<OVcountForDept_Fromplace> findByDeptIdToFromPlace(String deptid);
    //查询系别学生男女比例
    @Select("SELECT COUNT(gender) sum,gender, deptname FROM student,dept WHERE student.deptid=#{deptid} AND student.deptid=dept.deptid GROUP BY gender")
    List<OVgenderAndDept> findGenderProportion(String deptid);

    @Select("SELECT * FROM student WHERE studentid = #{quick} OR `name`= #{quick1}")
    Student quickSearch(String quick,String quick1);
}
