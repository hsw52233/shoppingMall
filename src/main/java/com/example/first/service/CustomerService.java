package com.example.first.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first.mapper.CustomerMapper;
import com.example.first.vo.Customer;

@Service
@Transactional
public class CustomerService {

	@Autowired
	CustomerMapper customerMapper;

	public Customer login(Customer paramCustomer) {
		return customerMapper.login(paramCustomer);
	}

	public Map<String, Object> getCutomerOne(String customerMail) {

		return customerMapper.selectCustomerOne(customerMail);
	}

}
