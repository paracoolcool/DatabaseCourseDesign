package com.wyu.demo.service;

import com.alibaba.fastjson.JSON;
import com.wyu.demo.entity.Student;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.ov.OVgenderAndDept;
import com.wyu.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class StudentService {
    @Autowired
    StudentRepository studentRepository;
    @Resource
    StudentMapper studentMapper;
//    public int deleteStudent(){
//        String studentid = "AP11111";
//        studentRepository.delete(studentid);
//        return 1;
//
//
//    }
    @Transactional
    public Student edit(String studenid,String field,String value){
        studentMapper.edit(studenid,field,value);
        Student student = studentRepository.findById(studenid).orElseThrow(null);
        return student;
    }
    public String findGenderProportion(String deptid){
        List<OVgenderAndDept> proportion = studentMapper.findGenderProportion(deptid);
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<proportion.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("name",proportion.get(i).getGender());
            map.put("value",proportion.get(i).getSum());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        return s;
    }

}
