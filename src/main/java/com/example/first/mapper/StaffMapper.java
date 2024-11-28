package com.example.first.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.example.first.vo.Staff;

@Mapper
public interface StaffMapper {
	
	Staff getStaffNo(int staffNo);
	
	List<Staff> profile();
	
	int staffAdd(Staff staff);
	
	Staff login(Staff staff);
	
	List<Staff> getStaffList();

}
