package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kaishengit.pms.entity.Goal;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class GoalDao {

	private DBHelp<Goal> db = new DBHelp<Goal>();
	public List<Goal> findByProjectId(String projectId) {
		final String sql = "SELECT id,`name`,`desc`,createtime,projectid FROM t_goal WHERE projectid = ?";
		return db.findAll(sql, new GoalRowMapper(), projectId);
	}
	
	private class GoalRowMapper implements RowMapper<Goal> {

		public Goal rowMapper(ResultSet rs) throws SQLException {
			Goal goal = new Goal();
			goal.setId(rs.getString("id"));
			goal.setDesc(rs.getString("desc"));
			goal.setName(rs.getString("name"));
			goal.setProjectId(rs.getString("projectId"));
			return goal;
		}
		
	}

	public void save(Goal goal) {
		String sql = "INSERT INTO t_goal(id,`name`,`desc`,createtime,projectid) VALUES(?,?,?,?,?)";
		db.ExcuteSql(sql,goal.getId(), goal.getName(),goal.getDesc(),goal.getCreateTime(),goal.getProject().getId());
	}

	public Goal findById(String goalId) {
		final String sql = "SELECT id,`name`,`desc`,createtime,projectid FROM t_goal WHERE id = ?";
		return db.findObject(sql, new GoalRowMapper(), goalId);
	}

}
