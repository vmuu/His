package com.dao;

import com.entity.TollMessage;
import java.util.List;

public interface TollMessageMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(TollMessage record);

    List<TollMessage> selectByPrimaryKey(Integer id);

    List<TollMessage> selectAll();

    int updateByPrimaryKey(TollMessage record);
}