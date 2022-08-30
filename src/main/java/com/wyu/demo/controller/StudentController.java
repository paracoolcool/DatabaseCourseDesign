package com.wyu.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.entity.Student;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.repository.CougradesRepository;
import com.wyu.demo.repository.StudentRepository;
import com.wyu.demo.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    StudentRepository studentRepository;
    @Autowired
    StudentService studentService;
    @Resource
    CougradesMapper cougradesMapper;
    @Resource
    StudentMapper studentMapper;
    @RequestMapping("item1")
    public String item1(){
        return "student";
    }
    /*返回所有学生信息分页显示*/
    @RequestMapping("/all")
    @ResponseBody
    public String allStudents(@RequestParam int page,@RequestParam int limit){
//        List<Student> students = studentMapper.findAllStudent();
        List<Student> all = (List<Student>) studentRepository.findAll();
        System.out.println(all);
        int size = all.size();
        if(page*limit<=size){
            all=all.subList((page-1)*limit, page*limit);
        }else{
            all=all.subList((page-1)*limit, size);
        }
        //layui固定json格式
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",all);
        System.out.println(object.toJSONString());
        return object.toJSONString();
    }

    /* 删除一条学生记录*/
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam(name = "number",required = false) String id){
        Optional<Student> student = studentRepository.findById(id);
        if (student==null){
             String data ="0";
             return data;
        }
        studentRepository.deleteById(id);
        String data = "1";
        return data;
    }
//    显示某个学生的详细信息
    @RequestMapping("/detail")
    public String studentDetail(@RequestParam(name = "studentid",required = false)String studentid,Model model){
        Student student = studentRepository.findById(studentid).orElseThrow(null);
        //查询该学生的课程成绩
        List<Cougrades> cougrades = cougradesMapper.findGradesByStudentId(studentid);
        model.addAttribute("cougrades",cougrades);
        model.addAttribute("stu",student);
        return "detail";
    }

//修改学生信息
    @RequestMapping("/edit")
    public String deit(@RequestParam(name = "data",required = false) String data,
                       @RequestParam(name = "value",required = false) String value,
                       @RequestParam(name = "field",required = false) String field){
        Student student = studentService.edit(data, field, value);
        System.out.println(student);
        return "student";
    }
    //添加一个学生
    @RequestMapping(value = "/add")
    @ResponseBody
    public String addStudent(@RequestParam(name = "studentid",required = false) String studentid,
                             @RequestParam(name = "name",required = false) String name,
                             @RequestParam(name = "gender",required = false) String gender,Model model){

            Student student = new Student();
            student.setStudentid(studentid);
            student.setName(name);
            student.setGender(gender);
            studentRepository.save(student);
            String data = "学生添加成功";
            return data;
    }
    @RequestMapping("/addview")
    public String add(){
        return "addstudent";
    }


    @RequestMapping("/quickSearch")
    public String quickSearch(@RequestParam(name = "quick",required = false) String quick,
                              @RequestParam(name = "quick1",required = false) String quick1,Model model){
        Student student = studentMapper.quickSearch(quick, quick1);
        List<Cougrades> cougrades = cougradesMapper.findGradesByStudentId(student.getStudentid());
        model.addAttribute("stu",student);
        model.addAttribute("cougrades",cougrades);
        return "detail";
    }
}
