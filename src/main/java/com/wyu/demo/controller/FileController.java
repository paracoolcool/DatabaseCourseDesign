package com.wyu.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.UUID;
@Controller//图片上传功能
public class FileController {
    //该方法不知道为什么会运行两次---解决了--过滤器的问题，过滤器分发了两次

    @GetMapping(value = "/files")
    public String file() {
        return "upload";
    }
    @PostMapping(value = "/fileUpload")
    public String fileUpload(@RequestParam(value = "file") MultipartFile file, Model model, HttpServletRequest request) {

        if (file.isEmpty()) {
            System.out.println("文件为空空");
        }
        String fileName = file.getOriginalFilename();  // 文件名
        String suffixName = fileName.substring(fileName.lastIndexOf("."));  // 后缀名
        String filePath = "F://DatabaseCD//src//main//resources//static//img/"; // 上传后的路径
        fileName = UUID.randomUUID() + suffixName; // 新文件名
        System.out.println("上传的新文件名字"+fileName);

        File dest = new File(filePath + fileName);
        if (!dest.getParentFile().exists()) {
            dest.getParentFile().mkdirs();
        }
        try {
            file.transferTo(dest);
        } catch (IOException e) {
            e.printStackTrace();
        }
        //fileName就是该上传的图片的名字；
        String filename = "/img/" + fileName;


        model.addAttribute("filename", filename);

        return "upload";

    }

}



