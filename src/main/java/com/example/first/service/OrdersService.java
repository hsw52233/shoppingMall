package com.example.first.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.OrdersMapper;

@Service
public class OrdersService {
	
	@Autowired
	private OrdersMapper ordersMapper;

	// 고객 주문 정보
	public List<Map<String, Object>> getSelectOrdersList(String customerMail) {
		
		return ordersMapper.selectOrdersList(customerMail);
	}
	
	public List<Map<String,Object>> getSelectDeliveryList(int paymentNo){
		return ordersMapper.selectDeliveryList(paymentNo);
	}
	
	
}
