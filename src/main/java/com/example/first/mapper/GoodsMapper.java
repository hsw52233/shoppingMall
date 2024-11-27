package com.example.first.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface GoodsMapper {
	
	// 굿즈 상세정보
	public Map<String,Object> selectGoodsOne(int goodsNo);

	public List<Map<String, Object>> selectGoodsList(Map<String,Object> paramMap);
	
	public int goodsLastPage(int categoryNo);
}
