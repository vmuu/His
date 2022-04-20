package com.entity;

import java.math.BigDecimal;

public class TollProject {
    private Integer tollId;

    private String tollProject;

    private BigDecimal tollPrice;

    public Integer getTollId() {
        return tollId;
    }

    public void setTollId(Integer tollId) {
        this.tollId = tollId;
    }

    public String getTollProject() {
        return tollProject;
    }

    public void setTollProject(String tollProject) {
        this.tollProject = tollProject == null ? null : tollProject.trim();
    }

    public BigDecimal getTollPrice() {
        return tollPrice;
    }

    public void setTollPrice(BigDecimal tollPrice) {
        this.tollPrice = tollPrice;
    }
}