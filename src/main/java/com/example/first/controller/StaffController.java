package com.example.first.controller;



import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.controller.StaffController;
import com.example.first.service.StaffService;
import com.example.first.vo.Category;
import com.example.first.vo.Staff;

import jakarta.servlet.http.HttpSession;
import lombok.extern.slf4j.Slf4j;


@Slf4j 
@Controller
public class StaffController {
	
	@Autowired StaffService staffService;
	
	
	//로그인한 스태프 상세조회
	
	@GetMapping("/staff/staffList")
	public String staffList(Model model) {
		
		
		List<Staff> staffList = staffService.getStaffList();
		model.addAttribute("staffList", staffList);
		
		
		return "staff/staffList";
	}
	
	
	//스태프 추가
		@GetMapping("/staff/staffAdd")
		public String staffAdd() {
			return "staff/staffAdd";
		}
		
		@PostMapping("/staff/staffAdd")
		public String categoryAdd(Staff staff) {
			
			int row = staffService.staffAdd(staff);
			if(row == 0 ) {
				return "redirect:/staff/staffList";
			}
			
			
			return "redirect:/staff/staffList";
		}
	
	
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		log.debug("로그아웃");
		return "redirect:staff/login";
	}
	
	@GetMapping("/staff/login")
	public String staffLogin() {
		
		
		return "staff/login";
	}
	
	@PostMapping("/staff/login")
	public String staffLogin(Model model, HttpSession session,
				@RequestParam(name = "staffId") String staffId
				,@RequestParam(name = "password") String password) {
		
		
		Staff staff = new Staff();
		staff.setStaffId(staffId);
		staff.setStaffPw(password);
		
		System.out.println(staff.getStaffId());
		System.out.println(staff.getStaffPw());
		
		Staff loginStaff = staffService.login(staff);
		System.out.println(loginStaff.getStaffId());
		System.out.println(loginStaff.getStaffPw());
		
		if(loginStaff == null) {
			System.out.println("실패");
			return "staff/login";
		}
		session.setAttribute("loginStaff", loginStaff);
		System.out.println("로그인성공");
		
		
		
		
		return "staff/staffMain";
	}
	
	
	
}	
	




