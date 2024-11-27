package com.example.first.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.GoodsMapper;

@Service
public class GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;
	
	public Map<String, Object> getGoodsOne(int goodsNo) {
		return goodsMapper.selectGoodsOne(goodsNo);
	}
	
	

}
