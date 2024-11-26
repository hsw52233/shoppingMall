package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.OrdersService;

@Controller
public class OrdersController {

	@Autowired
	private OrdersService ordersService;
	
	@GetMapping("/customer/ordersList")
	public String ordersList(@RequestParam String customerMail) {
		List<Map<String,Object>> paramMap = ordersService.getSelectOrdersList(customerMail);
		return "customer/ordersList";
	}
}
