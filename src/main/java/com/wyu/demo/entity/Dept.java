package com.wyu.demo.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Dept {
    @Id
    private String deptid;
    private String deptname;
    private String remark;

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

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "deptid='" + deptid + '\'' +
                ", deptname='" + deptname + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
