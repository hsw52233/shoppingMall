package com.example.first.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.first.service.GoodsCategoryService;
import com.example.first.vo.Category;

@Controller
public class GoodsCategoryController {
	
	
	@Autowired private GoodsCategoryService goodsCategoryService;
	
	@GetMapping("/staff/categoryList")
	public String categoryList(Model model) {
		
		List<Category> categoryList = goodsCategoryService.getCategoryList();
		model.addAttribute("categoryList", categoryList);
		
		
		
		return "/staff/categoryList";
	}

}
