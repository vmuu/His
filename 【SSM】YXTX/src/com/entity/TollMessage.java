package com.entity;

import java.util.Date;

public class TollMessage {
    private Integer id;

    private Integer patientId;

    private Integer chargeProjects;

    private Integer price;

    private Integer sumPrice;

    private Date tollTime;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public Integer getChargeProjects() {
        return chargeProjects;
    }

    public void setChargeProjects(Integer chargeProjects) {
        this.chargeProjects = chargeProjects;
    }

    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    public Integer getSumPrice() {
        return sumPrice;
    }

    public void setSumPrice(Integer sumPrice) {
        this.sumPrice = sumPrice;
    }

    public Date getTollTime() {
        return tollTime;
    }

    public void setTollTime(Date tollTime) {
        this.tollTime = tollTime;
    }
}