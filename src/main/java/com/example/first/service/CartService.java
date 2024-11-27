package com.example.first.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first.mapper.CartMapper;

@Transactional
@Service
public class CartService {

	@Autowired
	private CartMapper cartMapper;
	
	public List<Map<String,Object>> getSelectCartList(String customerMail){
		return cartMapper.selectcartList(customerMail);
	}
}
