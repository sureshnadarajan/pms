package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.EmployeeProject;
import com.kaishengit.pms.entity.Project;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class EmployeeProjectDao {

	private DBHelp<EmployeeProject> db = new DBHelp<EmployeeProject>();
	
	public EmployeeProject findByProjectId(String projectId,String employeeId) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT employeeid,te.username,te.password,projectid,tp.name,tp.desc,tp.createtime,role FROM t_employee_project AS tep ");
		sql.append("LEFT JOIN t_employee AS te ON tep.employeeid = te.id ");
		sql.append("LEFT JOIN t_project AS tp ON tep.projectid = tp.id ");
		sql.append("where tep.projectid = ? and tep.employeeid = ?");
		return db.findObject(sql.toString(), new EmployeeProjectRowMapper(), projectId,employeeId);
	}
	
	private class EmployeeProjectRowMapper implements RowMapper<EmployeeProject> {


		public EmployeeProject rowMapper(ResultSet rs) throws SQLException {
			EmployeeProject ep = new EmployeeProject();
			ep.setRole(rs.getString("role"));
			
			Employee e = new Employee();
			e.setId(rs.getString("employeeid"));
			e.setPassword(rs.getString("password"));
			e.setUsername(rs.getString("username"));
			
			ep.setEmployee(e);
			ep.setEmployeeId(rs.getString("employeeId"));
			
			Project p = new Project();
			p.setCreateTime(rs.getString("createTime"));
			p.setDesc(rs.getString("desc"));
			p.setId(rs.getString("projectId"));
			p.setName(rs.getString("name"));
			
			ep.setProject(p);
			ep.setProjectId(rs.getString("projectId"));
			
			return ep;
		}
		
	}

}
