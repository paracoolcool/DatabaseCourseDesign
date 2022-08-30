package com.wyu.demo.ov;

public class OVfromPlace {
    String count,fromplace;

    public String getCount() {
        return count;
    }

    public void setCount(String count) {
        this.count = count;
    }

    public String getFromplace() {
        return fromplace;
    }

    public void setFromplace(String fromplace) {
        this.fromplace = fromplace;
    }

    @Override
    public String toString() {
        return "OVfromPlace{" +
                "count='" + count + '\'' +
                ", fromplace='" + fromplace + '\'' +
                '}';
    }
}
