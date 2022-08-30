package com.wyu.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import java.io.Serializable;

@Entity
public class Cougrades  {
    @Id
    private String studentid;
    private String courseid;
    private String grades;
    private String crousetime;
    private String remark;
    @ManyToOne
    private Course course;
    @ManyToOne
    private Student student;

    public Student getStudent() {
        return student;
    }

    public void setStudent(Student student) {
        this.student = student;
    }

    public String getStudentid() {
        return studentid;
    }

    public void setStudentid(String studentid) {
        this.studentid = studentid;
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getGrades() {
        return grades;
    }

    public void setGrades(String grades) {
        this.grades = grades;
    }

    public String getCrousetime() {
        return crousetime;
    }

    public void setCrousetime(String crousetime) {
        this.crousetime = crousetime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "Cougrades{" +
                "studentid='" + studentid + '\'' +
                ", courseid='" + courseid + '\'' +
                ", grades='" + grades + '\'' +
                ", crousetime='" + crousetime + '\'' +
                ", remark='" + remark + '\'' +
                ", course=" + course +
                ", student=" + student +
                '}';
    }
}
