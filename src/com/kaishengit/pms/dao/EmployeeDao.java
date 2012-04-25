package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class EmployeeDao {

	private DBHelp<Employee> db = new DBHelp<Employee>();
	
	public Employee findByUserNameAndPassword(Employee em) {
		final String sql = "select id,username,`password` from t_employee where username = ? and `password` = ?";
		return db.findObject(sql, new EmployeeRowMapper(), em.getUsername(),em.getPassword());
	}
	
	private class EmployeeRowMapper implements RowMapper<Employee> {

		public Employee rowMapper(ResultSet rs) throws SQLException {
			Employee em = new Employee();
			em.setId(rs.getString("id"));
			em.setPassword(rs.getString("password"));
			em.setUsername(rs.getString("username"));
			return em;
		}
		

	}

}
