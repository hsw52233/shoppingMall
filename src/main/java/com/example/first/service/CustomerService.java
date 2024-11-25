package com.example.first.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.CustomerMapper;

@Service
public class CustomerService {
	@Autowired
	private CustomerMapper customerMapper;
	
	public Map<String, Object> getCutomerOne(String customerMail){
		
		return customerMapper.selectCustomerOne(customerMail);
	}
	
}
