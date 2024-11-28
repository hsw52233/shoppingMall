package com.example.first.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.BoardMapper;
import com.example.first.vo.Board;

@Service
public class BoardService {
	@Autowired
	private BoardMapper boardMapper;
	
	public int getInsertReviews(Board board) {
		return boardMapper.insertReviews(board);
	}
	
	public int getDuplicateReviews(int oredersNo) {
		return boardMapper.selectReviewsByOrders(oredersNo);
	}
}
