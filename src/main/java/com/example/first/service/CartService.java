package com.example.first.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first.mapper.CartMapper;
import com.example.first.vo.Cart;


@Transactional
@Service
public class CartService {

	@Autowired
	private CartMapper cartMapper;
	
	//Author : 이동윤
	// 고객의 장바구니 리스트
	public List<Map<String,Object>> getSelectCartList(String customerMail){
		return cartMapper.selectcartList(customerMail);
	}
	
	//Author : 이동윤
	// 장바구니 추가 기능
	public int getInsertCart(Cart cart) {
		return cartMapper.insertCart(cart);
	}
}
