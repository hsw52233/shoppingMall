package com.example.first.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first.mapper.GoodsCategoryMapper;
import com.example.first.vo.Category;

@Service
@Transactional
public class GoodsCategoryService {
	
	
	@Autowired GoodsCategoryMapper goodsCategoryMapper;
	
	public List<Category> getCategoryList(){
		return goodsCategoryMapper.getCategoryList();
	}

}
