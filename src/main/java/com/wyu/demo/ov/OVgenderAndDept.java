package com.wyu.demo.ov;

import org.hibernate.query.criteria.internal.expression.function.AggregationFunction;

public class OVgenderAndDept {
    private String sum,gender,deptname;

    public String getSum() {
        return sum;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "OVgenderAndDept{" +
                "sum='" + sum + '\'' +
                ", gender='" + gender + '\'' +
                ", deptname='" + deptname + '\'' +
                '}';
    }
}
