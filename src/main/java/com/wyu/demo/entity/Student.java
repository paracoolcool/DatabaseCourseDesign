package com.wyu.demo.entity;


import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Student {
    @Id
    private String studentid;//主键通过@Id注解标注
    private String name;
    private String gender;
    private String birth;
    private String fromplace;
    private String deptid;
    private String ptface;
    private String iszhusu;
    private String sushephone;
    private String photo;
    @ManyToOne
    private Dept dept;//学生与系别为多对一关系，通过注解标注

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getFromplace() {
        return fromplace;
    }

    public void setFromplace(String fromplace) {
        this.fromplace = fromplace;
    }

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    public String getPtface() {
        return ptface;
    }

    public void setPtface(String ptface) {
        this.ptface = ptface;
    }

    public String getIszhusu() {
        return iszhusu;
    }

    public void setIszhusu(String iszhusu) {
        this.iszhusu = iszhusu;
    }

    public String getSushephone() {
        return sushephone;
    }

    public void setSushephone(String sushephone) {
        this.sushephone = sushephone;
    }

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    @Override
    public String toString() {
        return "Student{" +
                "studentid='" + studentid + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birth='" + birth + '\'' +
                ", fromplace='" + fromplace + '\'' +
                ", deptid='" + deptid + '\'' +
                ", ptface='" + ptface + '\'' +
                ", iszhusu='" + iszhusu + '\'' +
                ", sushephone='" + sushephone + '\'' +
                ", photo='" + photo + '\'' +
                ", dept=" + dept +
                '}';
    }
}
