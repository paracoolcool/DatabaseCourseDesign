package com.wyu.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Course {
    @Id
    private String courseid;
    private String coursename;
    private String leibie;
    private String khfangshi;//考核方式
    private String credits;
    private String remark;

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getLeibie() {
        return leibie;
    }

    public void setLeibie(String leibie) {
        this.leibie = leibie;
    }

    public String getKhfangshi() {
        return khfangshi;
    }

    public void setKhfangshi(String khfangshi) {
        this.khfangshi = khfangshi;
    }

    public String getCredits() {
        return credits;
    }

    public void setCredits(String credits) {
        this.credits = credits;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Course{" +
                "courseid='" + courseid + '\'' +
                ", coursename='" + coursename + '\'' +
                ", leibie='" + leibie + '\'' +
                ", khfangshi='" + khfangshi + '\'' +
                ", credits='" + credits + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
