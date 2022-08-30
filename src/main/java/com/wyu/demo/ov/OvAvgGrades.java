package com.wyu.demo.ov;

public class OvAvgGrades {
    private String avggrades,coursename,deptname;

    public String getAvggrades() {
        return avggrades;
    }

    public void setAvggrades(String avggrades) {
        this.avggrades = avggrades;
    }

    public String getCoursename() {
        return coursename;
    }

    public void setCoursename(String coursename) {
        this.coursename = coursename;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "OvAvgGrades{" +
                "avggrades='" + avggrades + '\'' +
                ", coursename='" + coursename + '\'' +
                ", deptname='" + deptname + '\'' +
                '}';
    }
}
