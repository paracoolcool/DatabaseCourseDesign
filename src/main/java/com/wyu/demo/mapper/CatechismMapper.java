package com.wyu.demo.mapper;

import com.wyu.demo.entity.Cougrades;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface CatechismMapper {
    //查询一个教师的讲授情况
    List<Cougrades> findCatechismByTeacherId(String teacherid);
}
