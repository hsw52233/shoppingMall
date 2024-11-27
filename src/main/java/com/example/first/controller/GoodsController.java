package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.GoodsCategoryService;
import com.example.first.service.GoodsFileService;
import com.example.first.service.GoodsService;
import com.example.first.vo.Page;

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
		return "common/goodsOne";
	}

	// Author : 이동윤 상품리스트
	@GetMapping("/common/goodsList")
	public String getMethodName(Model model, Page page, @RequestParam(defaultValue = "0") int categoryNo) {
		List<Map<String, Object>> goodsList = goodsService.getGoodsList(categoryNo, page);
		int lastPage = goodsService.getLastPage(categoryNo);
		model.addAttribute("categoryNo",categoryNo);
		model.addAttribute("currentPage",page.getCurrentPage());
		model.addAttribute("startPage",page.getStartPage());
		model.addAttribute("numPerPage",page.getNumPerPage());
		model.addAttribute("endPage",page.getEndPage());
		model.addAttribute("lastPage",lastPage);
		model.addAttribute("goodsList",goodsList);
		return "common/goodsList";
	}

}
