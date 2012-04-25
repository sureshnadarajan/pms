package com.kaishengit.pms.service;

import com.kaishengit.pms.dao.EmployeeDao;
import com.kaishengit.pms.entity.Employee;

public class EmployeeService {

	private EmployeeDao employeeDao = new EmployeeDao();
	
	public Employee login(Employee em) {
		return employeeDao.findByUserNameAndPassword(em);
	}
}
