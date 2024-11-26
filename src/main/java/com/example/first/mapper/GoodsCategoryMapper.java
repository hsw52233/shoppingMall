package com.example.first.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Category;

@Mapper
public interface GoodsCategoryMapper {
	
	List<Category> getCategoryList();

}
