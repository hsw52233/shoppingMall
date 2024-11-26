package com.example.first.controller;

import java.net.URLClassLoader;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.AddressService;
import com.example.first.vo.Address;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	@GetMapping("/customer/addressList")
	public String selectAddressList(Model model,@RequestParam String customerMail) {
		
		List<Map<String, Object>> addressList = addressService.getAddressList(customerMail);
		model.addAttribute("addressList", addressList);
		model.addAttribute("customerMail", customerMail);
		return "customer/addressList";
	}
	
	@GetMapping("/customer/addAddress")
	public String insertAddress(Model model, @RequestParam String customerMail) {
		model.addAttribute("customerMail",customerMail);
		return "customer/addAddress";
	}
	
	@PostMapping("/customer/addAddress")
	public String insertAddress(Model model,Address address) {
		log.debug(address.toString());
		int row = addressService.getAddAddress(address);
		if(row == 1) {
			log.debug("추가 성공");
			return "redirect:/customer/customerOne?customerMail="+address.getCustomerMail();
		}
		return "customer/cusomerOne";
	}
}
