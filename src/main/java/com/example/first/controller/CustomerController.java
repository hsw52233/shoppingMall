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
	@GetMapping("/common/register")
	public String register() {
		return "common/register";
	}
	// customer/register(회원가입)
	@PostMapping("/common/register")
	public String registerAddCustomer(@RequestParam String loginId
			, @RequestParam String loginAddress
            , @RequestParam String password
            , @RequestParam String gender
            , @RequestParam String birth) {
		
		// 1. customer타입을 만들어서 requestparam으로 받은 값들을 넣어준다
		
		Customer registerCustomer = new Customer();
		registerCustomer.setCustomerMail(loginId+loginAddress);
		registerCustomer.setCustomerPw(password);
		registerCustomer.setCustomerGender(gender);
		registerCustomer.setCustomerBirth(birth);
		
		// 2. customerService/addCustomer를 호출해준다
		customerService.addCustomer(registerCustomer);
		
		
		
		return "common/login";
	}
	
	// customer/home (메인페이지)	

	// customer/login (로그인페이지)	
	@GetMapping("/common/login")
	public String login() {
		return "common/login";
	}
	
	@PostMapping("/common/login")
	public String login(Model model
			, HttpSession session
			, @RequestParam(name = "loginId") String loginId
			, @RequestParam(name = "password") String password) {
		
		Customer paramCustomer = new Customer();
		paramCustomer.setCustomerMail(loginId);
		paramCustomer.setCustomerPw(password);
		
		Customer customerMail = customerService.login(paramCustomer);
		if (customerMail == null) {
			model.addAttribute("msg","로그인실패");
			return "common/login";
		}
		session.setAttribute("customerMail", customerMail);
		
		
		return "common/home";
	}
	

	// customer/customerOne (마이페이지)
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
