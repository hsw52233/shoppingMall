package com.example.first.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.example.first.mapper.StaffMapper;
import com.example.first.vo.Staff;

@Service
@Transactional
public class StaffService {
	
	@Autowired StaffMapper staffMapper;
	
	public Staff login(Staff staff) {
		return staffMapper.login(staff);
	}
	

}
