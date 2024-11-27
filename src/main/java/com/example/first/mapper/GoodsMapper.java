package com.example.first.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsMapper {
	
	// 굿즈 상세정보
	public Map<String,Object> selectGoodsOne(int goodsNo);
}
