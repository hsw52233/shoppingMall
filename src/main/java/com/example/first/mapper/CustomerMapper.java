package com.example.first.mapper;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {
	Map<String, Object> selectCustomerOne(String customerMail);
}
