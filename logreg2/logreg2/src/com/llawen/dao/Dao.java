package com.llawen.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

import com.llawen.bean.User;
import com.llawen.db.MysqlConnection;

public class Dao {
	public boolean login(User user) throws SQLException {
		boolean i = false;
		Connection conn = MysqlConnection.getConnection();
		String sql = "select * from tb_user where name=? and pwd=?";
		PreparedStatement pstat = conn.prepareStatement(sql);
		pstat.setString(1, user.getName());
		pstat.setString(2, user.getPwd());
		ResultSet rs = (ResultSet) pstat.executeQuery();
		if(rs.next()) {
			i = true;
			rs.close();
			pstat.close();
		} else {
			i = false;
			rs.close();
			pstat.close();
		}
		conn.close();
		return i;
	}
	
	public void addUser(User user) throws SQLException {
		Connection conn = MysqlConnection.getConnection();
		String sql = "insert into tb_user(name,pwd) values(?,?)";
		PreparedStatement pstat = conn.prepareStatement(sql);
		pstat.setString(1, user.getName());
		pstat.setString(2, user.getPwd());
		pstat.executeUpdate();
		pstat.close();
		conn.close();
	}
}
