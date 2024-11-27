package com.example.first.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.GoodsMapper;
import com.example.first.vo.Page;

@Service
public class GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;
	
	// Author : 이동윤 상품상세정보
	public Map<String, Object> getGoodsOne(int goodsNo) {
		return goodsMapper.selectGoodsOne(goodsNo);
	}

	// Author : 이동윤 상품리스트
	public List<Map<String,Object>> getGoodsList(int categoryNo ,Page page) {
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("categoryNo", categoryNo);
		paramMap.put("beginRow", page.getBeginRow());
		paramMap.put("rowPerPage", page.getRowPerPage());
		
		return goodsMapper.selectGoodsList(paramMap);
	}
	// Author : 이동윤 상품 라스트페이지
	public int getLastPage (int categoryNo) {
		return goodsMapper.goodsLastPage(categoryNo);
	}

	

}
