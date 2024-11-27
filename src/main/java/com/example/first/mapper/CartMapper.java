package com.example.first.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Cart;

@Mapper
public interface CartMapper {
	
	// Author : 이동윤
	public List<Map<String,Object>> selectcartList(String customerMail);
	
	public int insertCart(Cart cart);

}
