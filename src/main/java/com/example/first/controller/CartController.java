package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.CartService;
import com.example.first.vo.Cart;
import com.example.first.vo.Customer;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class CartController {

	@Autowired
	private CartService cartService;

	// Author : 이동윤
	@GetMapping("/customer/cartList")
	public String cartList(Model model, @RequestParam String customerMail) {

		List<Map<String, Object>> cartList = cartService.getSelectCartList(customerMail);
		model.addAttribute("cartList", cartList);
		return "customer/cartList";
	}

	// Author : 이동윤
	@PostMapping("/customer/addCart")
	public String addCart(HttpSession session, Cart cart) {	
		String customerMail = ((Customer) (session).getAttribute("customerMail")).getCustomerMail();
		cart.setCustomerMail(customerMail);
		log.debug("cart : "+cart);
		int row = cartService.getInsertCart(cart);
		if(row == 1) {
			return "redirect:/customer/cartList?customerMail="+cart.getCustomerMail();
		}
		
		return "common/home";

		
	}
}
