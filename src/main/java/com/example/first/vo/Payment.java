package com.example.first.vo;

import lombok.Data;

@Data
public class Payment {
	private Integer paymentNo; // PK
	private String addressNo; // FK
	private String paymentPrice;
	private String paymentMethod;
	private String paymentState;
}
