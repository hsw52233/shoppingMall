package com.example.first.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Customer;

@Mapper
public interface CustomerMapper {
	

	Integer insertCustomer(Customer registerCustomer);

	Customer login(Customer customer);

	Map<String, Object> selectCustomerOne(String customerMail);

}
