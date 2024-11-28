package com.example.first.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Board;

@Mapper
public interface BoardMapper {

	public int insertReviews(Board board);
	
	public int selectReviewsByOrders(int ordersNo);
}
