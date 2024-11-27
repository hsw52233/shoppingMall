package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.first.service.AddressService;
import com.example.first.service.CustomerService;
import com.example.first.service.PaymentService;
import com.example.first.vo.Customer;

import jakarta.servlet.http.HttpSession;

@Controller
public class PaymentController {

	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/customer/payment")
	public String payment(Model model, HttpSession session, int paymentPrice, int addressNo, String paymentMethod) {
		String customerMail = ((Customer)(session).getAttribute("customerMail")).getCustomerMail();
		
		model.addAttribute("customerMail",customerMail);
		return "customer/payment";
	}
}
