package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.AddressService;

@Controller
public class AddressController {

	@Autowired
	private AddressService addressService;
	
	@GetMapping("/customer/addressList")
	public String selectAddressList(Model model,@RequestParam String customerMail) {
		
		List<Map<String, Object>> addressList = addressService.getAddressList(customerMail);
		model.addAttribute("addressList", addressList);
		return "customer/addressList";
	}
}
