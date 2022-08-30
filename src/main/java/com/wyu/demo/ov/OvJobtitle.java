package com.wyu.demo.ov;

public class OvJobtitle {
    private  String sum,jobtitle;

    public String getSum() {
        return sum;
    }

    public void setSum(String sum) {
        this.sum = sum;
    }

    public String getJobtitle() {
        return jobtitle;
    }

    public void setJobtitle(String jobtitle) {
        this.jobtitle = jobtitle;
    }

    @Override
    public String toString() {
        return "OvJobtitle{" +
                "sum='" + sum + '\'' +
                ", jobtitle='" + jobtitle + '\'' +
                '}';
    }
}
