package com.wyu.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.entity.Course;
import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.mapper.CatechismMapper;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.mapper.CourseMapper;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.repository.CougradesRepository;
import com.wyu.demo.repository.CourseRepository;
import com.wyu.demo.repository.StudentRepository;
import com.wyu.demo.repository.TeacherRepository;
import com.wyu.demo.service.CourseService;
import com.wyu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/course")
public class CourseController {

    @Autowired
    CougradesRepository cougradesRepository;
    @Autowired
    StudentRepository studentRepository;
    @Resource
    CougradesMapper cougradesMapper;
    @Autowired
    CourseRepository courseRepository;
    @Autowired
    CourseService courseService;
    @RequestMapping("item1")
    public String item1(){
        return "course";
    }
    /*返回所有课程信息分页显示*/
    @RequestMapping("/all")
    @ResponseBody
    public String allCrouse(@RequestParam int page,@RequestParam int limit){
        List<Course> allCourses = (List<Course>) courseRepository.findAll();
        int size = allCourses.size();
        if(page*limit<=size){
            allCourses=allCourses.subList((page-1)*limit, page*limit);
        }else{
            allCourses=allCourses.subList((page-1)*limit, size);
        }
        //layui固定json格式
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",allCourses);

        return object.toJSONString();
    }

    /* 删除一条课程记录*/
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam(name = "number",required = false) String id){
        Course course = courseRepository.findById(id).orElseThrow(null);
        if (course==null){
             String data ="0";
             return data;
        }
        courseRepository.deleteById(id);
        String data = "1";
        return data;
    }
//    显示某个课程的详细信息
    @RequestMapping("/detail")
    public String studentDetail(@RequestParam(name = "courseid",required = false)String courseid,Model model){
        List<Student> students = new ArrayList<>();
        List<Cougrades> cougradesList = cougradesRepository.findByCourseid(courseid);//调用课程成绩表查询选修该课程的学生的成绩
        for ( int i=0;i<cougradesList.size();i++){
            String studentid = cougradesList.get(i).getStudentid();
            Student student = studentRepository.findById(studentid).orElseThrow(null);
            students.add(student);
        }
        float averageGrades = cougradesMapper.averageGrades(courseid);
        model.addAttribute("averageGrades",averageGrades);
        model.addAttribute("students",students);//选课学生信息
        model.addAttribute("cougradesList",cougradesList);//该课程成绩信息
        model.addAttribute("count",cougradesList.size());//选修该课程的人数
        return "courseDetail";
    }

//修改课程信息
    @RequestMapping("/edit")
    public String deit(@RequestParam(name = "data",required = false) String data,
                       @RequestParam(name = "value",required = false) String value,
                       @RequestParam(name = "field",required = false) String field){
        Course course = courseService.edit(data, field, value);

        System.out.println(course);
        return "course";
    }
    //添加一个课程
    @RequestMapping(value = "/add")
    @ResponseBody
    public String addStudent(@RequestParam(name = "courseid",required = false) String courseid,
                             @RequestParam(name = "coursename",required = false) String coursename,
                             @RequestParam(name = "leibie",required = false) String leibie,Model model){

        Course course = new Course();
        course.setCourseid(courseid);
        course.setCoursename(coursename);
        course.setLeibie(leibie);
        courseRepository.save(course);
        String data = "课程添加成功";
        return data;
    }
    @RequestMapping("/addview")
    public String add(){
        return "addcourse";
    }
}
