package com.example.first.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.first.mapper.AddressMapper;

@Service
public class AddressService {

	@Autowired
	private AddressMapper addressMapper;
}
