package com.dao;

import com.entity.LoginInfo;
import java.util.List;

public interface LoginInfoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(LoginInfo record);

    List<LoginInfo> selectByPrimaryKey(Integer id);

    List<LoginInfo> selectAll();

    int updateByPrimaryKey(LoginInfo record);
}