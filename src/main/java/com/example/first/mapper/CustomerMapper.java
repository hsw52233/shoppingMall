package com.example.first.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Customer;

@Mapper
public interface CustomerMapper {
	
	Customer login(Customer customer);
}
