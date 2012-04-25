package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kaishengit.pms.entity.Project;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class ProjectDao {

	private DBHelp<Project> db = new DBHelp<Project>();
	/**
	 * 根据用户id查找对应的项目列表
	 * @param id
	 * @return
	 */
	public List<Project> findByEmployeeId(String id) {
		final String sql = "SELECT * FROM t_project WHERE id IN(SELECT projectid FROM t_employee_project WHERE employeeid = ?) order by createtime desc";
		return db.findAll(sql, new ProjectRowMapper(), id);
	}
	
	private class ProjectRowMapper implements RowMapper<Project> {


		public Project rowMapper(ResultSet rs) throws SQLException {
			Project prj = new Project();
			prj.setCreateTime(rs.getString("createTime"));
			prj.setDesc(rs.getString("desc"));
			prj.setId(rs.getString("id"));
			prj.setName(rs.getString("name"));
			return prj;
		}
		
	}

}
