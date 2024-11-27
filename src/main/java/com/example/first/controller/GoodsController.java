package com.example.first.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.GoodsCategoryService;
import com.example.first.service.GoodsFileService;
import com.example.first.service.GoodsService;

@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private GoodsFileService goodsFileService;
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	// Author : 이동윤 상품상세정보
	@GetMapping("/common/goodsOne")
	public String goodsOne(Model model, @RequestParam int goodsNo) {
		Map<String, Object> goods = goodsService.getGoodsOne(goodsNo);
		model.addAttribute("goods", goods);
		return"common/goodsOne";
	}

}
