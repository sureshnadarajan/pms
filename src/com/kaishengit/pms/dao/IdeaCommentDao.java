package com.kaishengit.pms.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.kaishengit.pms.entity.Employee;
import com.kaishengit.pms.entity.Idea;
import com.kaishengit.pms.entity.IdeaComment;
import com.kaishengit.pms.util.DBHelp;
import com.kaishengit.pms.util.RowMapper;

public class IdeaCommentDao {

	DBHelp<IdeaComment> dh=new DBHelp<IdeaComment>();
	public List<IdeaComment> findAllComment(String id) {
		StringBuilder sql=new StringBuilder();
		sql.append("SELECT A.id,A.title,A.content,A.createtime,A.employeeid,A.projectid,")
		.append("B.id,B.content,B.createtime,B.employeeid,B.ideaid,")
		.append("C.id,C.password,C.username,C.pic,")
		.append("D.id,D.password,D.username,D.pic")
		.append(" FROM ")
		.append("t_idea AS A LEFT JOIN t_ideacomment AS B ON A.id=B.ideaid ")
		.append("LEFT JOIN t_employee AS C ON A.employeeid=C.id")
		.append(" LEFT JOIN t_employee AS D ON B.employeeid=D.id")
		.append(" WHERE A.id=? ORDER BY b.createtime DESC");
		List<IdeaComment>list=dh.findAll(sql.toString(), new Mr(), id);
		return list;
	}

	class Mr implements RowMapper<IdeaComment>{

		public IdeaComment rowMapper(ResultSet rs) throws SQLException {
			IdeaComment ic=new IdeaComment();
			Employee em=new Employee();
			Employee em2=new Employee();
			Idea idea=new Idea();
			
			em.setId(rs.getString("C.id"));
			em.setPassword(rs.getString("C.password"));
			em.setPic(rs.getString("C.pic"));
			em.setUsername(rs.getString("C.username"));
			
			idea.setContent(rs.getString("A.content"));
			idea.setCreatetime(rs.getString("A.createtime"));
			idea.setEmployeeid(rs.getString("A.employeeid"));
			idea.setId(rs.getString("A.id"));
			idea.setProjectid(rs.getString("A.projectid"));
			idea.setTitle(rs.getString("A.title"));
			idea.setEmployee(em2);
			
			em2.setId(rs.getString("D.id"));
			em2.setPassword(rs.getString("D.password"));
			em2.setPic(rs.getString("D.pic"));
			em2.setUsername(rs.getString("D.username"));
			
			
			ic.setContent(rs.getString("B.content"));
			ic.setCreatetime(rs.getString("B.createtime"));
			ic.setEmployee(em2);
			ic.setEmployeeid(rs.getString("B.employeeid"));
			ic.setId(rs.getString("B.id"));
			ic.setIdea(idea);
			ic.setIdeaid(rs.getString("B.ideaid"));
			return ic;
		}
		
	}

	public int saveIC(IdeaComment ic) {
		String sql="INSERT INTO t_ideacomment(id,content,createtime,employeeid,ideaid)VALUE(?,?,?,?,?)";
		int rows=dh.ExcuteSql(sql, ic.getId(),ic.getContent(),ic.getCreatetime(),ic.getEmployeeid(),ic.getIdeaid());
		return rows;
	}
}
