package com.wyu.demo.controller;

import com.alibaba.fastjson.JSON;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.ov.OVcountForDept_Fromplace;
import com.wyu.demo.ov.OVfromPlace;
import com.wyu.demo.entity.Student;
import com.wyu.demo.mapper.StudentMapper;
import com.wyu.demo.ov.OvAvgGrades;
import com.wyu.demo.service.GradesService;
import com.wyu.demo.service.StudentService;
import com.wyu.demo.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/*
统计查询
*/
@Controller
@RequestMapping("/search")
public class SearchController {
    @Resource
    StudentMapper studentMapper;
    @Autowired
    StudentService studentService;
    @Autowired
    TeacherService teacherService;
    @Autowired
    GradesService gradesService;

    //查询各生源地人数
    @RequestMapping("/fromplace")
    public String fromPlace(Model model){
        List<OVfromPlace> fromPlace = studentMapper.findFromPlace();
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<fromPlace.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("name",fromPlace.get(i).getFromplace());
            map.put("value",fromPlace.get(i).getCount());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        model.addAttribute("list",s);
        return "fromplace";
    }
    //查询某一省份的人员信息
    @RequestMapping("/detail")
    public String studentDetail(@RequestParam(name = "fromplace",required = false)String fromplace, Model model){
        List<Student> allFromPlace = studentMapper.findAllFromPlace(fromplace);
        System.out.println(allFromPlace);
        model.addAttribute("allfromplace",allFromPlace);
        model.addAttribute("place",fromplace);
        return "fromplacedetail";
    }
    @RequestMapping(value = "/dept",method = RequestMethod.GET)
    public String findByDept0(){

        return "selectbydept";
    }
    @RequestMapping(value = "/dept",method = RequestMethod.POST)
    public String findByDept(@RequestParam(name = "deptid",required = false)String deptid, Model model){
        List<OVcountForDept_Fromplace> fromPlace = studentMapper.findByDeptIdToFromPlace(deptid);
        ArrayList<Map<String,String>> list = new ArrayList<>();
        for (int i=0;i<fromPlace.size();i++){
            HashMap<String,String> map = new HashMap<>();
            map.put("name",fromPlace.get(i).getFromplace());
            map.put("value",fromPlace.get(i).getSum());
            list.add(map);
        }
        String s = JSON.toJSONString(list);
        model.addAttribute("deptname",fromPlace.get(0).getDeptname());
        model.addAttribute("list",s);
        String s1 = studentService.findGenderProportion(deptid);
        model.addAttribute("listGender",s1);
        return "selectbydept";
    }
    //课程的平均成绩统计查询
    @RequestMapping("/grades")
    public String avgGrades(Model model){
        String s = gradesService.avgGrades();
        model.addAttribute("avg",s);
        return "selectbygrades";
    }

    //教师职称统计查询
    @RequestMapping("/jobtitle")
    public String allJobtitle(Model model){
        String s = teacherService.allJobtitle();
        model.addAttribute("jobtitle",s);
        return "jobtitle";
    }
}
