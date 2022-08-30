package com.wyu.demo.mapper;

import com.wyu.demo.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface CourseMapper {

    @Update("UPDATE course SET ${field}=#{value} WHERE courseid=#{courseid}")
    void edit(String courseid,String field,String value);
}
