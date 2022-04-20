package com.dao;

import com.entity.TollProject;
import java.util.List;

public interface TollProjectMapper {
    int deleteByPrimaryKey(Integer tollId);

    int insert(TollProject record);

    List<TollProject> selectByPrimaryKey(Integer tollId);

    List<TollProject> selectAll();

    int updateByPrimaryKey(TollProject record);
}