package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.Goal;
import com.kaishengit.pms.entity.Task;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class TaskDao {

	private DBHelp<Task> db = new DBHelp<Task>();
	
	public List<Task> findByGoalId(String goalId) {
		StringBuilder sql = new StringBuilder();
		sql.append("SELECT t_task.id,t_task.`name`,t_task.`desc`,rate,state,`level`,begintime,endtime,t_task.createtime,employeeid,goalid,t_employee.username,t_employee.password,t_goal.name AS 'goalname',t_goal.desc AS 'goaldesc' ");
		sql.append("FROM t_task ");
		sql.append("LEFT JOIN t_employee ON t_employee.id = t_task.employeeid ");
		sql.append("LEFT JOIN t_goal ON t_goal.id = t_task.goalid ");
		sql.append("WHERE goalid = ? ");
		return db.findAll(sql.toString(), new TaskRowMapper(), goalId);
	}

	private class TaskRowMapper implements RowMapper<Task>{


		public Task rowMapper(ResultSet rs) throws SQLException {
			Task task = new Task();
			task.setBeginTime(rs.getString("beginTime"));
			task.setCreateTime(rs.getString("createTime"));
			task.setDesc(rs.getString("desc"));
			task.setEndTime(rs.getString("endTime"));
			task.setId(rs.getString("id"));
			task.setLevel(rs.getString("level"));
			task.setName(rs.getString("name"));
			task.setState(rs.getString("state"));
			task.setRate(rs.getInt("rate"));
			
			Employee employee = new Employee();
			employee.setId(rs.getString("employeeid"));
			employee.setPassword(rs.getString("password"));
			employee.setUsername(rs.getString("username"));
			
			task.setEmployee(employee);
			task.setEmployeeId(rs.getString("employeeId"));
			
			Goal goal = new Goal();
			goal.setId(rs.getString("goalid"));
			goal.setName(rs.getString("goalname"));
			goal.setDesc(rs.getString("goaldesc"));
			
			task.setGoal(goal);
			task.setGoalid(rs.getString("goalid"));
			return task;
		}
		
	}
}
