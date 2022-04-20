package com.dao;

import com.entity.DoctorInfo;
import java.util.List;

public interface DoctorInfoMapper {
    int deleteByPrimaryKey(Integer doctorId);

    int insert(DoctorInfo record);

    List<DoctorInfo> selectByPrimaryKey(Integer doctorId);

    List<DoctorInfo> selectAll();

    int updateByPrimaryKey(DoctorInfo record);
}