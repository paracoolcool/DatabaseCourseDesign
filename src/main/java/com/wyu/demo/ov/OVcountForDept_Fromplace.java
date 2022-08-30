package com.wyu.demo.ov;

public class OVcountForDept_Fromplace {
    private String sum,fromplace,deptname;

    public String getSum() {
        return sum;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }

    public String getFromplace() {
        return fromplace;
    }

    public void setFromplace(String fromplace) {
        this.fromplace = fromplace;
    }

    public String getDeptname() {
        return deptname;
    }

    public void setDeptname(String deptname) {
        this.deptname = deptname;
    }

    @Override
    public String toString() {
        return "OVcountForDept_Fromplace{" +
                "sum='" + sum + '\'' +
                ", fromplace='" + fromplace + '\'' +
                ", deptname='" + deptname + '\'' +
                '}';
    }
}
