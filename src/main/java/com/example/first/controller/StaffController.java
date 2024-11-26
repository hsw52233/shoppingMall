package com.example.first.controller;



import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.controller.StaffController;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;


@Slf4j 
@Controller
public class StaffController {
	
	@GetMapping("/staffLogin")
	public String staffLogin() {
		
		
		return "/staffLogin";
	}
	
	
	
}	
	




