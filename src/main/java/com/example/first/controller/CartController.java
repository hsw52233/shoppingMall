package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.CartService;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CartController {

	@Autowired
	private CartService cartService;
	
	@GetMapping("/customer/cartList")
	public String cartList(Model model,@RequestParam String customerMail) {
		List<Map<String, Object>> cartList = cartService.getSelectCartList(customerMail);
		model.addAttribute("cartList",cartList);
		return "customer/cartList";
	}
}
