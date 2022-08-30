package com.wyu.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity
public class Catechism {
    @Id
    private String teacherid;
    private String courseid;
    private String time;
    @ManyToOne
    private Course course;

    public String getTeacherid() {
        return teacherid;
    }

    public void setTeacherid(String teacherid) {
        this.teacherid = teacherid;
    }

    public String getCourseid() {
        return courseid;
    }

    public void setCourseid(String courseid) {
        this.courseid = courseid;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Course getCourse() {
        return course;
    }

    public void setCourse(Course course) {
        this.course = course;
    }

    @Override
    public String toString() {
        return "Catechism{" +
                "teacherid='" + teacherid + '\'' +
                ", courseid='" + courseid + '\'' +
                ", time='" + time + '\'' +
                ", course=" + course +
                '}';
    }
}

