package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.OrdersService;

@Controller
public class OrdersController {

	@Autowired
	private OrdersService ordersService;
	// 이동윤 : 주문내역 리스트
	@GetMapping("/customer/ordersList")
	public String ordersList(Model model, @RequestParam String customerMail) {
		List<Map<String,Object>> orderList = ordersService.getSelectOrdersList(customerMail);
		model.addAttribute("orderList", orderList);
		return "customer/ordersList";
	}
	// payment 안에 있는 리스트
	@GetMapping("/customer/deliveryList")
	public String deliveryList(Model model,@RequestParam int paymentNo) {
		List<Map<String, Object>> deliveryList = ordersService.getSelectDeliveryList(paymentNo);
		model.addAttribute("deliveryList",deliveryList);
		return "customer/deliveryList";
	}
}
