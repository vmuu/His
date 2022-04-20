package com.dao;

import com.entity.Category;
import java.util.List;

public interface CategoryMapper {
    int deleteByPrimaryKey(Integer categoryId);

    int insert(Category record);

    List<Category> selectByPrimaryKey(Integer categoryId);

    List<Category> selectAll();

    int updateByPrimaryKey(Category record);
}