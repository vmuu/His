package com.dao;

import com.entity.BedInfo;
import com.entity.PatientInfo;

import java.util.List;

public interface BedInfoMapper {
    int deleteByPrimaryKey(Integer bedId);

    int insert(BedInfo record);

    List<BedInfo> selectByPrimaryKey(Integer bedId);

    List<BedInfo> selectAll();

    int updateByPrimaryKey(PatientInfo info);
}