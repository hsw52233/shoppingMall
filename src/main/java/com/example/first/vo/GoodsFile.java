package com.example.first.vo;

import lombok.Data;

@Data
public class GoodsFile {
	private Integer goodsFileNo; // PK
	private String goodsNo; // FK
	private String goodsFileName;
	private String goodsFileOrigin;
	private String goodsFileExt;
	private String goodsFileType;
	private String goodsFileSize;
	private String updateDate;
	private String createDate;
}
