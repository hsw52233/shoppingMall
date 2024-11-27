package com.example.first.service;

import java.util.List;
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
	
	// 하상우) 관리자 회원 상세 정보
	
	public Customer getCustomerMail(String customerMail) {
		return customerMapper.getCustomerMail(customerMail);
	}
	
	public Customer getCustomerOne(String customerMail) {
	    return customerMapper.getCustomerOne(customerMail);  
	}
	
	public int removeCustomer(String customerMail) {
		return customerMapper.removeCustomer(customerMail);
	}
	
	public List<Customer> getCustomerList() {
		return customerMapper.getCustomerList();
	}
	
	// addCustomer값 안에 CustomerController에서 받아온 registerCustomer값을 넘겨줌
	// CustomerMapper/insertCustomer식안에 registerCustomer값을 넘겨줌
	public Integer addCustomer(Customer registerCustomer) {
		return customerMapper.insertCustomer(registerCustomer);
	}
	
	public Customer login(Customer paramCustomer) {
		return customerMapper.login(paramCustomer);
	}

	public Map<String, Object> getCutomerOne(String customerMail) {
		return customerMapper.selectCustomerOne(customerMail);
	}

	public int getModifyCustomer(Customer customer) {
		return customerMapper.updateCustomer(customer);
	}

}
