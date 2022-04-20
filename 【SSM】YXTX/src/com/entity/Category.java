package com.entity;

public class Category {
    private Integer categoryId;

    private String categorySort;

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getCategorySort() {
        return categorySort;
    }

    public void setCategorySort(String categorySort) {
        this.categorySort = categorySort == null ? null : categorySort.trim();
    }
}