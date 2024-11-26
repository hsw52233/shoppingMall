package com.example.first.controller;

import java.util.HashMap;
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

	@Autowired
	CustomerService customerService;

	// customer/log(로그아웃)
	@GetMapping("/common/logout")
	public String logout(HttpSession session) {
		session.invalidate(); // 현재 세션정보를 종료시킴으로써 로그아웃처리시킴
		log.debug("로그아웃 성공");

		return "redirect:/common/login"; // 로그아웃했으니 다시 로그인페이지로 리다이렉트
	}

	// customer/register(회원가입)
	@GetMapping("/common/register")
	public String register() {
		return "common/register";
	}

	// customer/register(회원가입)
	@PostMapping("/common/register")
	public String registerAddCustomer(@RequestParam String loginId, @RequestParam String loginAddress,
			@RequestParam String password, @RequestParam String gender, @RequestParam String birth) {

		// 1. customer타입을 만들어서 requestparam으로 받은 값들을 넣어준다

		Customer registerCustomer = new Customer();
		registerCustomer.setCustomerMail(loginId + loginAddress);
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
	public String login(Model model, HttpSession session, @RequestParam(name = "loginId") String loginId,
			@RequestParam(name = "password") String password) {

		Customer paramCustomer = new Customer();
		paramCustomer.setCustomerMail(loginId);
		paramCustomer.setCustomerPw(password);

		Customer customerMail = customerService.login(paramCustomer);
		if (customerMail == null) {
			model.addAttribute("msg", "로그인실패");
			return "common/login";
		}
		session.setAttribute("customerMail", customerMail);

		return "common/home";
	}

	// customer/customerOne (마이페이지)
	@GetMapping("/customer/customerOne")
	public String customerOne(Model model, HttpSession session) {
		String customerMail = ((Customer) (session).getAttribute("customerMail")).getCustomerMail();
		log.debug("customerMail : " + customerMail);
		Map<String, Object> customer = customerService.getCutomerOne(customerMail);
		log.debug("customer : " + customer);
		model.addAttribute("customer", customer);
		model.addAttribute("customerMail", customerMail);
		return "customer/customerOne";
	}

	@GetMapping("/customer/modifyCustomer")
	public String modifyCustomer(Model model, @RequestParam String customerMail) {
		model.addAttribute("customerMail", customerMail);
		return "customer/modifyCustomer";
	}

	@PostMapping("/customer/modifyCustomer")
	public String modifyCustomer(@RequestParam String customerMail, @RequestParam String pw, @RequestParam String rePw, Model model) {
		if(pw.equals(rePw)) {
			 Customer customer = new Customer();
			    customer.setCustomerMail(customerMail);
			    customer.setCustomerPw(pw);
			int row = customerService.getModifyCustomer(customer);
			if(row == 1) {
				log.debug("비밀번호 변경 성공");
			} else {
				log.debug("변경 실패");
			}
		}
		return "redirect:/customer/customerOne?customerMail="+customerMail;

	}

}
