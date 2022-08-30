package com.wyu.demo.controller;

import com.wyu.demo.entity.User;
import com.wyu.demo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserRepository userRepository;

    @RequestMapping("/login")
    public String login(){
        return "login";
    }
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginPost(String username, String password, Model model){
        User user = userRepository.findByUsernameAndPassword(username, password);
        if (user == null){
            model.addAttribute("erroMsg","用户名或密码错误，请重新输入");
            return "login";
        }
        model.addAttribute("erroMsg","登录成功");
        return "index";
    }

}
