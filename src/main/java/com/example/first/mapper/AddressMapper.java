package com.example.first.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface AddressMapper {
	List<Map<String,Object>> selectAddressList(String customerMail);
}
