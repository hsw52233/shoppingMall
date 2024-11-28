package com.example.first.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Board;

@Mapper
public interface BoardMapper {

	public int insertReviews(Board board);
	
	public int selectReviewsByOrders(int ordersNo);
	
	public List<Map<String,Object>> selectReviewListByGoods(Integer goodsNo);
	
	public int deleteReviewsByGoods(int goodsNo);
}
