package com.example.first.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.AddressMapper;

@Service
public class AddressService {

	@Autowired
	private AddressMapper addressMapper;
	
	public List<Map<String,Object>> getAddressList(String customerMail){
		return addressMapper.selectAddressList(customerMail);
	}
}
