package com.wyu.demo.service;

import com.alibaba.fastjson.JSON;
import com.wyu.demo.entity.Student;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.ov.OVgenderAndDept;
import com.wyu.demo.ov.OvAvgGrades;
import com.wyu.demo.repository.StudentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Service
public class GradesService {
   @Resource
    CougradesMapper cougradesMapper;
//    public int deleteStudent(){
//        String studentid = "AP11111";
//        studentRepository.delete(studentid);
//        return 1;
//
//
//    }

    public String avgGrades(){
        List<OvAvgGrades> ovAvgGrades = cougradesMapper.AVG_GRADES_LIST();
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<ovAvgGrades.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("name",ovAvgGrades.get(i).getCoursename());
            map.put("value",ovAvgGrades.get(i).getAvggrades());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        return s;
    }

}
