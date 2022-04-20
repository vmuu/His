package com.entity;

import java.util.Date;

public class PatientInfo {
    private Integer patientId;

    private Integer patientSubject;

    private Integer patientBedno;

    private String patientName;

    private String patientSex;

    private String patientAge;

    private String patientDisease;

    private String patientDoctor;

    private String admissionDate;

    private String dischargeDate;

    public Integer getPatientId() {
        return patientId;
    }

    public void setPatientId(Integer patientId) {
        this.patientId = patientId;
    }

    public Integer getPatientSubject() {
        return patientSubject;
    }

    public void setPatientSubject(Integer patientSubject) {
        this.patientSubject = patientSubject;
    }

    public Integer getPatientBedno() {
        return patientBedno;
    }

    public void setPatientBedno(Integer patientBedno) {
        this.patientBedno = patientBedno;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName == null ? null : patientName.trim();
    }

    public String getPatientSex() {
        return patientSex;
    }

    public void setPatientSex(String patientSex) {
        this.patientSex = patientSex == null ? null : patientSex.trim();
    }

    public String getPatientAge() {
        return patientAge;
    }

    public void setPatientAge(String patientAge) {
        this.patientAge = patientAge == null ? null : patientAge.trim();
    }

    public String getPatientDisease() {
        return patientDisease;
    }

    public void setPatientDisease(String patientDisease) {
        this.patientDisease = patientDisease == null ? null : patientDisease.trim();
    }

    public String getPatientDoctor() {
        return patientDoctor;
    }

    public void setPatientDoctor(String patientDoctor) {
        this.patientDoctor = patientDoctor == null ? null : patientDoctor.trim();
    }

    public String getAdmissionDate() {
        return admissionDate;
    }

    public void setAdmissionDate(String admissionDate) {
        this.admissionDate = admissionDate;
    }

    public String getDischargeDate() {
        return dischargeDate;
    }

    public void setDischargeDate(String dischargeDate) {
        this.dischargeDate = dischargeDate;
    }
}