package com.advance_jersey_app_3.app.payroll.Models;

import javax.persistence.*;

@Entity
public class Payments {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private long payment_id;
    @Column
    private String cusid;
    @Column
    private String paymnt_method;
    @Column
    private long value;
    @Column
    private String date;

    public long getPayment_id() {
        return payment_id;
    }

    public void setPayment_id(long payment_id) {
        this.payment_id = payment_id;
    }

    public String getCusid() {
        return cusid;
    }

    public void setCusid(String cusid) {
        this.cusid = cusid;
    }

    public String getPaymnt_method() {
        return paymnt_method;
    }

    public void setPaymnt_method(String paymnt_method) {
        this.paymnt_method = paymnt_method;
    }

    public long getValue() {
        return value;
    }

    public void setValue(long value) {
        this.value = value;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
