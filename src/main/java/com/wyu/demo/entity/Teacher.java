package com.wyu.demo.entity;

import javax.persistence.*;

@Entity
public class Teacher {
    @Id
    private String teacherid;
    private String name;
    private String gender;
    private String jobtitle;
    private String deptid;

   private String deptname;
    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
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

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle;
    }

    public String getDeptid() {
        return deptid;
    }

    public void setDeptid(String deptid) {
        this.deptid = deptid;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "teacherid='" + teacherid + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", jobtitle='" + jobtitle + '\'' +
                ", deptid='" + deptid + '\'' +
                ", deptname='" + deptname + '\'' +
                '}';
    }
}
