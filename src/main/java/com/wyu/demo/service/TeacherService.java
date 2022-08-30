package com.wyu.demo.service;

import com.alibaba.fastjson.JSON;
import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.ov.OVgenderAndDept;
import com.wyu.demo.ov.OvJobtitle;
import com.wyu.demo.repository.StudentRepository;
import com.wyu.demo.repository.TeacherRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class TeacherService {
    @Autowired
    TeacherRepository teacherRepository;
    @Resource
    TeacherMapper teacherMapper;
//    public int deleteStudent(){
//        String studentid = "AP11111";
//        studentRepository.delete(studentid);
//        return 1;
//
//
//    }
    @Transactional
    public Teacher edit(String teacherid,String field,String value){
        teacherMapper.edit(teacherid,field,value);
        Teacher teacher = teacherRepository.findById(teacherid).orElseThrow(null);
        return teacher;
    }

//    封装数据库数据
    public String allJobtitle(){
        List<OvJobtitle> jobtitles = teacherMapper.allJobtitle();
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<jobtitles.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("name",jobtitles.get(i).getJobtitle());
            map.put("value",jobtitles.get(i).getSum());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        return s;
    }
}
