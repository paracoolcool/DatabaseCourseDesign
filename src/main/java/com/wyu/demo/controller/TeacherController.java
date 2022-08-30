package com.wyu.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.entity.Student;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.mapper.CatechismMapper;
import com.wyu.demo.repository.StudentRepository;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.repository.TeacherRepository;
import com.wyu.demo.service.StudentService;
import com.wyu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;

@Controller
@RequestMapping("/teacher")
public class TeacherController {
    @Resource
    TeacherMapper teacherMapper;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    TeacherService teacherService;
    @Resource
    CatechismMapper catechismMapper;
    @RequestMapping("item1")
    public String item1(){
        return "teacher";
    }
    /*返回所有教师信息分页显示*/
    @RequestMapping("/all")
    @ResponseBody
    public String allTeacher(@RequestParam int page,@RequestParam int limit){
        List<Teacher> allTeacher = teacherMapper.findAllTeacher();
        int size = allTeacher.size();
        if(page*limit<=size){
            allTeacher=allTeacher.subList((page-1)*limit, page*limit);
        }else{
            allTeacher=allTeacher.subList((page-1)*limit, size);
        }
        //layui固定json格式
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",allTeacher);

        return object.toJSONString();
    }

    /* 删除一条教师记录*/
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam(name = "number",required = false) String id){
        Teacher teacher = teacherRepository.findById(id).orElseThrow(null);
        if (teacher==null){
             String data ="0";
             return data;
        }
        teacherRepository.deleteById(id);
        String data = "1";
        return data;
    }
//    显示某个教师的详细信息
    @RequestMapping("/detail")
    public String studentDetail(@RequestParam(name = "teacherid",required = false)String teacherid,Model model){
        Teacher teacher = teacherMapper.findATeacher(teacherid);
        List<Cougrades> catechism = catechismMapper.findCatechismByTeacherId(teacherid);
        model.addAttribute("catechism",catechism);
        model.addAttribute("teacher",teacher);
        return "teacherDetail";
    }

//修改教师信息
    @RequestMapping("/edit")
    public String deit(@RequestParam(name = "data",required = false) String data,
                       @RequestParam(name = "value",required = false) String value,
                       @RequestParam(name = "field",required = false) String field){
        Teacher teacher = teacherService.edit(data, field, value);

        System.out.println(teacher);
        return "teacher";
    }

    @RequestMapping("/quickSearch")
    public String quickSearch(@RequestParam(name = "quick",required = false) String quick,
                              @RequestParam(name = "quick1",required = false) String quick1,Model model){
        Teacher teacher = teacherMapper.quickSearch(quick, quick1);
        List<Cougrades> catechism = catechismMapper.findCatechismByTeacherId(teacher.getTeacherid());
        model.addAttribute("teacher",teacher);
        model.addAttribute("catechism",catechism);
        return "teacherDetail";
    }
    //添加一个教师
    @RequestMapping(value = "/add")
    @ResponseBody
    public String addStudent(@RequestParam(name = "teacherid",required = false) String teacherid,
                             @RequestParam(name = "name",required = false) String name,
                             @RequestParam(name = "gender",required = false) String gender,Model model){

        Teacher teacher = new Teacher();
        teacher.setTeacherid(teacherid);
        teacher.setName(name);
        teacher.setGender(gender);
        teacherRepository.save(teacher);
        String data = "教工添加成功";
        return data;
    }
    @RequestMapping("/addview")
    public String add(){
        return "addteacher";
    }
}
