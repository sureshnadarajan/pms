package com.kaishengit.pms.util;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import org.apache.commons.dbcp.BasicDataSource;



public class DBHelp<T> {

	
	static BasicDataSource bds=new BasicDataSource();
	static{
		Properties p=new Properties();
		try {
			p.load(DBHelp.class.getClassLoader().getResourceAsStream("dbconfig.properties"));
		} catch (IOException e) {
			e.printStackTrace();
		}
		String driver=p.getProperty("driver");
		String url=p.getProperty("url");
		String user=p.getProperty("user");
		String password=p.getProperty("password");
		bds.setDriverClassName(driver);
		bds.setUrl(url);
		bds.setUsername(user);
		bds.setPassword(password);
		bds.setInitialSize(5);
		bds.setMaxWait(5000);
		bds.setMaxActive(20);
		bds.setMinIdle(10);
	}
	/**
	 * 数据库连接
	 * @return
	 */
	private Connection getConnection(){
		
		Connection conn=null;
		try {
			conn = bds.getConnection();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		/*try {
			Class.forName(driver);
			conn= DriverManager.getConnection(url, user, password);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
		return conn;
		
	}
/**
 * 执行sql更新
 * @param sql
 * @param obj
 * @return
 */
	public int ExcuteSql(String sql,Object...obj){
		Connection conn=getConnection();
		PreparedStatement ps=null;
		int rows=0;
		try {
			ps = conn.prepareStatement(sql);
			for (int i = 0; i < obj.length; i++) {
				ps.setObject(i+1, obj[i]);
			}
			rows=ps.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(null,ps,conn);
		return rows;
		
	}
/**
 * 查找对象
 * @param sql
 * @param rowMapper
 * @param args
 * @return
 */
	public T findObject(String sql,RowMapper<T> rowMapper,Object...args){
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		T t = null;
		try {
			ps=conn.prepareStatement(sql);
			for (int i = 0; i < args.length; i++) {
				ps.setObject(i+1, args[i]);
			}
			rs=ps.executeQuery();
			while(rs.next()){
				t=rowMapper.rowMapper(rs);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rs,ps,conn);
		return t;
		
	}
	/**
	 * 查找对象集合
	 * @param sql
	 * @param rowMapper
	 * @param args
	 * @return
	 */
	public List<T> findAll(String sql,RowMapper<T> rowMapper,Object...args){
		
		Connection conn=getConnection();
		PreparedStatement ps=null;
		ResultSet rs=null;
		T t = null;
		List<T> list=new ArrayList<T>();
		try {
			ps=conn.prepareStatement(sql);
			for (int i = 0; i < args.length; i++) {
				ps.setObject(i+1, args[i]);
			}
			rs=ps.executeQuery();
			while(rs.next()){
				t=rowMapper.rowMapper(rs);
				list.add(t);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		close(rs,ps,conn);
		return list;
	}
	/**
	 * 关闭连接
	 * @param rs
	 * @param ps
	 * @param conn
	 */
	private void close(ResultSet rs, PreparedStatement ps, Connection conn) {
		if(rs!=null){
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally{
				if(ps!=null){
					try {
						ps.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}finally{
						if(conn!=null){
							try {
								conn.close();
							} catch (SQLException e) {
								e.printStackTrace();
							}
						}
					}
				}
			}
		}
	}
	
}
