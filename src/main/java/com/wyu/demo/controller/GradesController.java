package com.wyu.demo.controller;

import com.alibaba.fastjson.JSONObject;
import com.wyu.demo.entity.Cougrades;
import com.wyu.demo.entity.Teacher;
import com.wyu.demo.mapper.CatechismMapper;
import com.wyu.demo.mapper.CougradesMapper;
import com.wyu.demo.mapper.TeacherMapper;
import com.wyu.demo.repository.CougradesRepository;
import com.wyu.demo.repository.TeacherRepository;
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

@Controller
@RequestMapping("/grades")
public class GradesController {
    @Resource
    TeacherMapper teacherMapper;
    @Autowired
    TeacherRepository teacherRepository;
    @Autowired
    TeacherService teacherService;
    @Resource
    CatechismMapper catechismMapper;
    @Resource
    CougradesMapper cougradesMapper;
    @Autowired
    CougradesRepository cougradesRepository;
    @RequestMapping("item1")
    public String item1(){
        return "grades";
    }
    /*返回所有成绩信息分页显示*/
    @RequestMapping("/all")
    @ResponseBody
    public String allTeacher(@RequestParam int page,@RequestParam int limit){
        List<Cougrades> cougrades = cougradesMapper.allStudentGrades();
        System.out.println(cougrades);
        int size = cougrades.size();
        if(page*limit<=size){
            cougrades=cougrades.subList((page-1)*limit, page*limit);
        }else{
            cougrades=cougrades.subList((page-1)*limit, size);
        }
        //layui固定json格式
        JSONObject object = new JSONObject();
        object.put("code",0);
        object.put("msg","");
        object.put("count",size);
        object.put("data",cougrades);
        System.out.println(object.toJSONString());
        return object.toJSONString();
    }

    /* 删除一条成绩记录*/
    @RequestMapping(value = "/delete",method = RequestMethod.POST)
    @ResponseBody
    public String delete(@RequestParam(name = "studentid",required = false) String id,
                         @RequestParam(name = "courseid",required = false) String cid){
        System.out.println(id+cid);
        Cougrades cougrades = cougradesRepository.findByStudentidAndCourseid(id, cid);
        if (cougrades==null){
             String data ="0";
             return data;
        }
        System.out.println(cougrades);
        cougradesRepository.deleteById(cougrades.getStudentid());
        String data = "1";
        return data;
    }
//    不及格名单
    @RequestMapping("/failed")
    public String studentDetail(Model model){
        List<Cougrades> failed = cougradesMapper.findFailed();

        model.addAttribute("failed",failed);

        return "failedList";
    }

////修改教师信息
//    @RequestMapping("/edit")
//    public String deit(@RequestParam(name = "data",required = false) String data,
//                       @RequestParam(name = "value",required = false) String value,
//                       @RequestParam(name = "field",required = false) String field){
//        Teacher teacher = teacherService.edit(data, field, value);
//
//        System.out.println(teacher);
//        return "teacher";
//    }
}
