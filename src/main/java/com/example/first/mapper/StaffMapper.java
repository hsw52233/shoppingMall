package com.example.first.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Staff;

@Mapper
public interface StaffMapper {
	
	Staff login(Staff staff);

}
