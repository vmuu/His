package com.dao;

import com.entity.PatientInfo;
import java.util.List;

public interface PatientInfoMapper {
    int deleteByPrimaryKey(Integer patientId);

    int insert(PatientInfo record);

    List<PatientInfo> selectByPrimaryKey(Integer patientId);

    List<PatientInfo> selectAll();

    int updateByPrimaryKey(PatientInfo record);
}