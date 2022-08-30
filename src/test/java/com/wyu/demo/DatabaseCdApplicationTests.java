package com.wyu.demo;

import com.alibaba.fastjson.JSON;
import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.ov.OVfromPlace;
import com.wyu.demo.entity.Student;
import com.wyu.demo.mapper.CatechismMapper;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.repository.CougradesRepository;
import com.wyu.demo.repository.StudentRepository;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.repository.UserRepository;
import com.wyu.demo.service.StudentService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import javax.annotation.Resource;
import javax.sql.DataSource;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
//
@SpringBootTest
class DatabaseCdApplicationTests {
    @Autowired
    private DataSource dataSource;
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    UserRepository userRepository;
    @Autowired
    StudentService studentService;
    @Resource
    StudentMapper studentMapper;
    @Resource
    TeacherMapper teacherMapper;
    @Resource
    CougradesMapper cougradesMapper;
    @Resource
    CatechismMapper catechismMapper;
    @Autowired
    CougradesRepository cougradesRepository;
    @Test
    void contextLoads() {
    }
    @Test
    void getConnection() throws SQLException {
        System.out.println(dataSource.getConnection());
    }
    @Test
    void test1(){
        Cougrades cougrades = cougradesRepository.findByStudentidAndCourseid("AP0803107", "006A1060");
        System.out.println(cougrades);
    }
    @Test
    void test2(){
        Student student = new Student();
        student.setStudentid("AP11111");
        student.setName("冯宇康");
        student.setBirth("1");
        student.setDeptid("2");
        student.setFromplace("广东");
        student.setGender("nan");
        student.setIszhusu("Y");
        student.setPhoto("");
        student.setPtface("团员");
        student.setSushephone("1016");
        studentRepository.save(student);
    }
    @Test
    void test3(){
        Student student = studentMapper.quickSearch("冯宇康", "冯宇康");
        System.out.println(student);
    }
    @Test
    void test4(){
        List<OVfromPlace> fromPlace = studentMapper.findFromPlace();
        System.out.println(fromPlace.size());
        System.out.println(fromPlace);
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<fromPlace.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("count",fromPlace.get(i).getCount());
            map.put("fromplace",fromPlace.get(i).getFromplace());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        System.out.println("list为"+list);
        System.out.println("s为"+s);
    }
}
