package com.entity;

import java.util.Date;

public class DoctorInfo {
    private Integer doctorId;

    private String doctorName;

    private String doctorSex;

    private String doctorTitle;

    private String doctorJob;

    private String doctorSubject;

    private String doctorBirthday;

    private String jobTiem;

    public Integer getDoctorId() {
        return doctorId;
    }

    public void setDoctorId(Integer doctorId) {
        this.doctorId = doctorId;
    }

    public String getDoctorName() {
        return doctorName;
    }

    public void setDoctorName(String doctorName) {
        this.doctorName = doctorName == null ? null : doctorName.trim();
    }

    public String getDoctorSex() {
        return doctorSex;
    }

    public void setDoctorSex(String doctorSex) {
        this.doctorSex = doctorSex == null ? null : doctorSex.trim();
    }

    public String getDoctorTitle() {
        return doctorTitle;
    }

    public void setDoctorTitle(String doctorTitle) {
        this.doctorTitle = doctorTitle == null ? null : doctorTitle.trim();
    }

    public String getDoctorJob() {
        return doctorJob;
    }

    public void setDoctorJob(String doctorJob) {
        this.doctorJob = doctorJob == null ? null : doctorJob.trim();
    }

    public String getDoctorSubject() {
        return doctorSubject;
    }

    public void setDoctorSubject(String doctorSubject) {
        this.doctorSubject = doctorSubject == null ? null : doctorSubject.trim();
    }

    public String getDoctorBirthday() {
        return doctorBirthday;
    }

    public void setDoctorBirthday(String doctorBirthday) {
        this.doctorBirthday = doctorBirthday;
    }

    public String getJobTiem() {
        return jobTiem;
    }

    public void setJobTiem(String jobTiem) {
        this.jobTiem = jobTiem;
    }
}