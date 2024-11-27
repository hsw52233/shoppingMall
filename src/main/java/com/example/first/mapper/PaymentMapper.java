package com.example.first.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Payment;

@Mapper
public interface PaymentMapper {

	public int insertPayment(Payment payment);
}
