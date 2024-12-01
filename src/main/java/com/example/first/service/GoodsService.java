package com.example.first.service;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.example.first.mapper.BoardMapper;
import com.example.first.mapper.CartMapper;
import com.example.first.mapper.CategoryMapper;
import com.example.first.mapper.GoodsCategoryMapper;
import com.example.first.mapper.GoodsFileMapper;
import com.example.first.mapper.GoodsMapper;
import com.example.first.mapper.OrdersMapper;
import com.example.first.vo.Category;
import com.example.first.vo.Goods;
import com.example.first.vo.GoodsCategory;
import com.example.first.vo.GoodsFile;
import com.example.first.vo.GoodsForm;
import com.example.first.vo.Page;

import lombok.extern.slf4j.Slf4j;

@Slf4j
@Transactional
@Service
public class GoodsService {

	@Autowired
	private GoodsMapper goodsMapper;

	@Autowired
	private GoodsFileMapper goodsFileMapper;

	@Autowired
	private BoardMapper boardMapper;

	@Autowired
	private OrdersMapper ordersMapper; 
	
	@Autowired
	private GoodsCategoryMapper goodsCategoryMapper;
	
	@Autowired
  private CartMapper cartMapper;

	// 하상우) 재고 활성화

	public int goodsModifyActive(Goods goods) {
		return goodsMapper.goodsModifyActive(goods);
	}

	// 하상우) 관리자 상품 수정

	public Goods getGoodsNo(int goodsNo) {
		return goodsMapper.getGoodsNo(goodsNo);
	}

	public int goodsModify(Goods goods) {
		return goodsMapper.goodsModify(goods);
	}

	// 하상우 ) 관리자 상품 추가

	public void goodsAdd(GoodsForm goodsForm, String path) {
		// goodsForm 데이터 -> goods 로 이동
		Goods goods = new Goods();
		goods.setGoodsNo(goodsForm.getGoodsNo());
		goods.setGoodsTitle(goodsForm.getGoodsTitle());
		goods.setGoodsMemo(goodsForm.getGoodsMemo());
		goods.setGoodsPrice(goodsForm.getGoodsPrice());
		goods.setGoodsState(goodsForm.getGoodsState());
		int goodsRow = goodsMapper.goodsAdd(goods);
		int goodsNo = goods.getGoodsNo();
		log.debug("goodsNo : " + goodsNo);
		// goodsForm 데이터 에서 categoryNo 받아오기
		GoodsCategory goodsCategory = new GoodsCategory();
		goodsCategory.setGoodsNo(goodsNo);
		goodsCategory.setCategoryNo(goodsForm.getCategoryNo());
		// goodsCateogry 추가
		goodsCategoryMapper.insertGoodsCategory(goodsCategory);
		if (goodsRow == 1 && goodsForm.getGoodsFile() != null) {
			List<MultipartFile> list = goodsForm.getGoodsFile();
			for (MultipartFile file : list) {
				GoodsFile goodsFile = new GoodsFile();
				goodsFile.setGoodsNo(goodsNo);
				goodsFile.setGoodsFileType(file.getContentType());
				goodsFile.setGoodsFileSize(file.getSize());
				String fileName = UUID.randomUUID().toString().replace("-", "");
				goodsFile.setGoodsFileName(fileName);
				int dotIndex = file.getOriginalFilename().lastIndexOf(".");
				String originName = file.getOriginalFilename().substring(0, dotIndex);
				String ext = file.getOriginalFilename().substring(dotIndex + 1);
				goodsFile.setGoodsFileOrigin(originName);
				goodsFile.setGoodsFileExt(ext);

				int goodsFileRow = goodsFileMapper.insertGoodsFile(goodsFile);
				if (goodsFileRow == 1) {
					try {
						file.transferTo(new File(path + fileName + "." + ext));
					} catch (IllegalStateException | IOException e) {
						e.printStackTrace();
						throw new RuntimeException();
					}
				}
			}
		}

	}

	// 하상우 ) 관리자 상품 삭제

	public void remove(int goodsNo, String path) {
		// 상품 댓글 전체 삭제
		boardMapper.deleteReviewsByGoods(goodsNo);
		// 해당 상품이 장바구니에 담겨있으면 삭제
		cartMapper.deleteCartByGoods(goodsNo);
		// 해당 상품 주문 목록 삭제
		ordersMapper.deleteOrdersListByGoods(goodsNo);
		// 상품 이미지 데이터 삭제
		List<GoodsFile> fileList = goodsFileMapper.selectGoodsFileListByGoods(goodsNo);
		System.out.println("fileList : "+ fileList.toString());
		// 상품 카테고리 삭제
		goodsCategoryMapper.remove(goodsNo);
		// 상품 파일 삭제
		int row = goodsFileMapper.deleteGoodsFileByGoods(goodsNo);
		if (row == 1 && fileList != null && fileList.size() > 0) {
			for (GoodsFile gf : fileList) {
				String fullName = path + gf.getGoodsFileName() + "." + gf.getGoodsFileExt();
				System.out.println("파일 경로: " + fullName);
				File file = new File(fullName);
				file.delete();
			}
		}
		// 상품 삭제
		goodsMapper.remove(goodsNo);
	}

	// 하상우) 관리자 페이지에서 상품 리스트 조회
	public List<Map<String,Object>> getGoodsList() {
		return goodsMapper.getGoodsList();
	}

	// Author : 이동윤 상품상세정보
	public Map<String, Object> getGoodsOne(int goodsNo) {
		return goodsMapper.selectGoodsOne(goodsNo);
	}

	// Author : 이동윤 카테고리 별 상품리스트
	public List<Map<String, Object>> getSelectGoodsList(int categoryNo, Page page, String searchTitle) {
		Map<String, Object> paramMap = new HashMap<>();
		paramMap.put("categoryNo", categoryNo);
		paramMap.put("searchTitle", searchTitle);
		paramMap.put("beginRow", page.getBeginRow());
		paramMap.put("rowPerPage", page.getRowPerPage());

		return goodsMapper.selectGoodsList(paramMap);
	}

	// Author : 이동윤 상품 라스트페이지
	public int getLastPage(int categoryNo, Page page) {
		int totalRow = goodsMapper.goodsLastPage(categoryNo);
		System.out.println("totalRow : "+ totalRow);
		int lastpage = page.getLastPage(totalRow);
		return lastpage;
	}

}
