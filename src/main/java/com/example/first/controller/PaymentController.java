package com.example.first.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;

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
	
	@PostMapping("/customer/payment")
	public String payment(HttpSession session, int paymentPrice, int addressNo, String paymentMethod) {
		String customerMail = ((Customer)(session).getAttribute("customerMail")).getCustomerMail();
		paymentService.getInsertPayment(addressNo, paymentPrice, paymentMethod, customerMail);
		return "customer/paymentComplete";
	}
}
