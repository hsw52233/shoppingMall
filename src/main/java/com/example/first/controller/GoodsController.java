package com.example.first.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.first.service.GoodsCategoryService;
import com.example.first.service.GoodsFileService;
import com.example.first.service.GoodsService;
import com.example.first.vo.Category;
import com.example.first.vo.Goods;
import com.example.first.vo.Page;

import lombok.extern.slf4j.Slf4j;
@Slf4j
@Controller
public class GoodsController {

	@Autowired
	private GoodsService goodsService;
	@Autowired
	private GoodsFileService goodsFileService;
	@Autowired
	private GoodsCategoryService goodsCategoryService;
	
	
	// 하상우) 재고 활성화
	
	@GetMapping("/staff/modifyGoodsActive")
	public String modifyGoodsActive(@RequestParam("goodsNo") int goodsNo, @RequestParam("goodsState") String goodsState) {
	    Goods goods = new Goods();
	    goods.setGoodsNo(goodsNo);
	    
	    if ("재고있음".equals(goodsState)) {
	        goods.setGoodsState("재고없음");
	    } else {
	        goods.setGoodsState("재고있음");
	    }
	    
	    goodsService.goodsModifyActive(goods);
	    return "redirect:/staff/goodsList";
	}
	
	
	
	// 하상우) 상품 수정
	@PostMapping("/staff/goodsModify")
	public String goodsModify(Goods goods) {
		
		int row = goodsService.goodsModify(goods);
		
		System.out.println(row);
		
		
		return "redirect:/staff/goodsList";
	}
	
	@GetMapping("/staff/goodsModify")
	public String categoryModify(Model model, @RequestParam int goodsNo) {
		
		
	        Goods goods = goodsService.getGoodsNo(goodsNo);
	        model.addAttribute("goods", goods);
	    
	    return "staff/goodsModify";
	}
	
	// 하상우) 상품 추가

	    @GetMapping("/staff/goodsAdd")
		public String goodsAdd() {
			return "staff/goodsAdd";
		}
		
		@PostMapping("/staff/goodsAdd")
		public String goodsAdd(Goods goods) {
			
			int row = goodsService.goodsAdd(goods);
			if(row == 0 ) {
				return "redirect:/staff/goodsList";
			}
			
			return "redirect:/staff/goodsList";
		}
	//하상우) 상품 삭제
	
	@GetMapping("/staff/removegoods")
	public String removeGoods(@RequestParam int goodsNo) {
		
		int deleteRow = goodsService.remove(goodsNo);
		
		
		return "redirect:/staff/goodsList";
	}
	
	
	
	
	
	
	//하상우 ) 관리자 페이지 상품 리스트
	@GetMapping("/staff/goodsList")
	public String goodsList(Model model) {
		
		List<Goods> goodsList = goodsService.getGoodsList();
		model.addAttribute("goodsList", goodsList);
		
		return "staff/goodsList";
		
	}

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
		List<Map<String, Object>> goodsList = goodsService.getGoodsListByCategory(categoryNo, page);
		int lastPage = goodsService.getLastPage(categoryNo,page);
		
		log.debug("lastPage : "+lastPage);
		log.debug("beginRow : "+page.getBeginRow());
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
