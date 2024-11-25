package com.example.first.controller;


import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.CustomerService;
import com.example.first.vo.Customer;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;


@Slf4j
@Controller
public class CustomerController {

	@Autowired CustomerService customerService;
	
	// customer/register(회원가입)
	@GetMapping("/register")
	public String registerAddCustomer() {
		return "register";
	}
	
	@PostMapping("/register")
	public String register() {
		return "register";
	}
	
	// customer/home (메인페이지)	
	@GetMapping("/home")
	public String home() {
		return "home";
	}
	// customer/login (로그인페이지)	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	@PostMapping("/login")
	public String login(Model model
			, HttpSession session
			, @RequestParam(name = "loginId") String loginId
			, @RequestParam(name = "password") String password) {
		
		Customer paramCustomer = new Customer();
		paramCustomer.setCustomerMail(loginId);
		paramCustomer.setCustomerPw(password);
		
		Customer customer = customerService.login(paramCustomer);
		if (customer == null) {
			model.addAttribute("msg","로그인실패");
			return "/login";
		}
		session.setAttribute("customer", customer);
		
		
		return "/home";
	}
	
	@GetMapping("/customer/customerOne")
	public String customerOne(Model model,@RequestParam String customerMail) {
		
		log.debug("customerMail : "+customerMail);
		Map<String, Object> customer = customerService.getCutomerOne(customerMail);
		log.debug("customer : "+customer);
		model.addAttribute("customer",customer);
		model.addAttribute("customerMail",customerMail);
		
		return "customer/customerOne";
	}

}
