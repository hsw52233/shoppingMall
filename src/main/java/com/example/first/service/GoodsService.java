package com.example.first.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.GoodsMapper;
import com.example.first.vo.Goods;
import com.example.first.vo.Page;

@Service
public class GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;
	
	
	// 하상우) 재고 활성화
	
	public int goodsModifyActive(Goods goods) {
		return goodsMapper.goodsModifyActive(goods);
	}
	
	
	// 하상우) 관리자 상품 수정
	
	
	public Goods getGoodsNo(int goodsNo) {
		return goodsMapper.getGoodsNo(goodsNo);
	}
	
	public int goodsModify(Goods goods) {
		return goodsMapper.goodsModify(goods);
	}
	
	
	//하상우 ) 관리자 상품 추가
	
	public int goodsAdd(Goods goods) {
		return goodsMapper.goodsAdd(goods);
	}
	
	//하상우 ) 관리자 상품 삭제
	
	public int remove(int goodsNo) {
		return goodsMapper.remove(goodsNo);
	}
	
	
	//하상우) 관리자 페이지에서 상품 리스트 조회
	
	public List<Goods> getGoodsList(){
		return goodsMapper.getGoodsList();
	}
	
	
	
	// Author : 이동윤 상품상세정보
	public Map<String, Object> getGoodsOne(int goodsNo) {
		return goodsMapper.selectGoodsOne(goodsNo);
	}

	// Author : 이동윤 카테고리 별 상품리스트
	public List<Map<String,Object>> getGoodsListByCategory(int categoryNo ,Page page) {
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("categoryNo", categoryNo);
		paramMap.put("beginRow", page.getBeginRow());
		paramMap.put("rowPerPage", page.getRowPerPage());
		
		return goodsMapper.selectGoodsListByCategory(paramMap);
	}
	// Author : 이동윤 상품 라스트페이지
	public int getLastPage (int categoryNo, Page page) {
		int totalRow = goodsMapper.goodsLastPage(categoryNo);
		int lastpage = page.getLastPage(totalRow);
		return lastpage; 
	}



	

}
