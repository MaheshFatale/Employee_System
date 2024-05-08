package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.database.MyDatabase;
import com.model.User;

public class UserDao {
	
	public int createUser(User u) throws SQLException {
	int check=0;
	Connection con=null;
	PreparedStatement pst = null;
	
	try {
		con = MyDatabase.myconnection();
		String sql= "insert into user1 (uname,uemail,upassword,ugender,uimage) values(?,?,?,?,?)";
		pst= con.prepareStatement(sql);
		pst.setString(1, u.getUname());
		pst.setString(2, u.getUemail());
		pst.setString(3, u.getUpassword());
		pst.setString(4, u.getUgender());
		//pst.setString(5, u.getUtype());
		pst.setBytes(5, u.getUimage());
		check = pst.executeUpdate();

	} catch (Exception e) {
		e.printStackTrace();
	}
	finally {
		try {
			pst.close();
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	return check;

	}
	
	public User loginUser(String uemail, String upassword) throws SQLException {
		User u = null;
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs=null;
		try {
			con = MyDatabase.myconnection();
			String sql = "select *from User1 where uemail=? and upassword=?";
			pst = con.prepareStatement(sql);
			pst.setString(1, uemail);
			pst.setString(2, upassword);
			 rs = pst.executeQuery();
			while (rs.next()) {
				u = new User();
				u.setUid(rs.getInt(1));
				u.setUname(rs.getString(2));
				u.setUemail(rs.getString(3));
				u.setUpassword(rs.getString(4));
				u.setUgender(rs.getString(5));
				//u.setUtype(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return u;
	}
	public static byte[] getImageById(int uid) throws SQLException
	{
		byte[] image=null;
		Connection con = null;
		PreparedStatement pst=null;
		ResultSet rs=null;		
		try {
			con = MyDatabase.myconnection();
			String sql = "select uimage from User1 where uid=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1,uid);
			rs =pst.executeQuery();
			while(rs.next())
			{
			image = rs.getBytes(1);
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}		
		return image;		
	}
	
	public static User getUserById(int id) throws SQLException
	{
		User u=null;
		Connection con = null;
		PreparedStatement pst=null;
		ResultSet rs=null;		
		try {
			con = MyDatabase.myconnection();
			String sql = "select *from User1 where uid=?";
			pst = con.prepareStatement(sql);
			pst.setInt(1,id);
			rs =pst.executeQuery();
			while(rs.next())
			{
			u=new User();
			u.setUid(rs.getInt(1));
			u.setUname(rs.getString(2));
			u.setUemail(rs.getString(3));
			u.setUpassword(rs.getString(4));
			u.setUgender(rs.getString(5));
			//u.setUtype(rs.getString(6));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}return u;		
	}
	
	
	public static List<User> getAllUser() throws SQLException
	{
		List<User>list =new ArrayList<User>();
		Connection con = null;
		PreparedStatement pst = null;
		ResultSet rs=null;
		try {
			con = MyDatabase.myconnection();
			String sql = "select *from User1 order by uid desc";
			pst = con.prepareStatement(sql);
			rs = pst.executeQuery();
			while(rs.next())
			{
				User u=new User();
				u.setUid(rs.getInt(1));
				u.setUname(rs.getString(2));
				u.setUimage(rs.getBytes(4));
				list.add(u);
			}
			} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				pst.close();
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return list;
	}
	

}

