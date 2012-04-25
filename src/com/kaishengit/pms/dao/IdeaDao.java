package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.Idea;
import com.kaishengit.pms.entity.Project;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class IdeaDao {
	
	DBHelp<Idea> dh=new DBHelp<Idea>();
	public List<Idea> findAllIdea(String id2) {
		StringBuilder sql=new StringBuilder();
		sql.append("SELECT t_idea.id,title,content,t_idea.createtime,employeeid,projectid,")
		.append("t_employee.id,username,`password`,pic,")
		.append("t_project.id,t_project.name,`desc`,t_project.createtime ")
		.append("FROM t_idea ")
		.append("LEFT JOIN t_employee ON employeeid=t_employee.id ")
		.append("LEFT JOIN t_project ON t_project.id=projectid")
		.append(" WHERE projectid=? ORDER BY t_idea.createtime DESC");
		List<Idea> list=dh.findAll(sql.toString(), new Mr(),id2);
		return list;
	}

	class Mr implements RowMapper<Idea>{

		public Idea rowMapper(ResultSet rs) throws SQLException {
			Idea idea=new Idea();
			Employee em=new Employee();
			Project pro=new Project();
			
			em.setId(rs.getString("t_employee.id"));
			em.setPassword(rs.getString("password"));
			em.setUsername(rs.getString("username"));
			em.setPic(rs.getString("pic"));
			
			pro.setCreateTime(rs.getString("t_project.createtime"));
			pro.setDesc(rs.getString("desc"));
			pro.setId(rs.getString("t_project.id"));
			pro.setName(rs.getString("t_project.name"));
			
			idea.setContent(rs.getString("content"));
			idea.setCreatetime(rs.getString("createtime"));
			idea.setEmployeeid(rs.getString("employeeid"));
			idea.setId(rs.getString("id"));
			idea.setProjectid(rs.getString("projectid"));
			idea.setTitle(rs.getString("title"));
			idea.setEmployee(em);
			idea.setProject(pro);
			
			return idea;
		}
		
	}

	public int save(Idea idea) {
		String sql="INSERT INTO t_idea(id,title,content,createtime,employeeid,projectid)VALUE(?,?,?,?,?,?)";
		int rows=dh.ExcuteSql(sql, idea.getId(),idea.getTitle(),idea.getContent(),idea.getCreatetime(),idea.getEmployeeid(),idea.getProjectid());
		return rows;
	}

	public Idea findIdea(String id) {
		StringBuilder sql=new StringBuilder();
		sql.append("SELECT t_idea.id,title,content,t_idea.createtime,employeeid,projectid,")
		.append("t_employee.id,username,`password`,pic,")
		.append("t_project.id,t_project.name,`desc`,t_project.createtime ")
		.append("FROM t_idea ")
		.append("LEFT JOIN t_employee ON employeeid=t_employee.id ")
		.append("LEFT JOIN t_project ON t_project.id=projectid")
		.append(" WHERE t_idea.id=? ORDER BY t_idea.createtime DESC");
		Idea idea=dh.findObject(sql.toString(), new Mr(), id);
		return idea;
	}

		
	

}
