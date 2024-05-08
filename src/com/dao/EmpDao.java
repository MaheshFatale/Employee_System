package com.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.database.MyDatabase;
import com.model.Employee;

public class EmpDao {

	public int insertEmployee(Employee e) {
		int check=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = MyDatabase.myconnection();

		String sql="insert into employee(ename,eemail,epassword,edesignation,esalary,eimage) values(?,?,?,?,?,?)";
			pst=con.prepareStatement(sql);
			pst.setString(1, e.getEname());
			pst.setString(2, e.getEemail());
			pst.setString(3, e.getEpassword());
			pst.setString(4, e.getEdesignation());
			pst.setDouble(5, e.getEsalary());
			pst.setBytes(6,e.getEimage());
			check=pst.executeUpdate();
		} catch (Exception e1) {
			e1.printStackTrace();
		}finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return check;
	}
	
	public int deleteEmployee(Employee e) {
		int check=0;
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = MyDatabase.myconnection();

		String sql="delete from employee where eid=?";
			pst=con.prepareStatement(sql);
			pst.setInt(1, e.getEid());
			check=pst.executeUpdate();
			
		} catch (Exception e1) {
			e1.printStackTrace();
		}finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return check;
	}
	
	
	
	public Employee displayEmployee(int eid) { 
		
		Connection con=null;
		Employee e=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			con = MyDatabase.myconnection();
			String sql="select *from employee where eid=?";
			pst=con.prepareStatement(sql);
			pst.setInt(1,eid);
			rs=pst.executeQuery();
			while(rs.next())
			{
				e=new Employee();
				e.setEid(rs.getInt(1));
				e.setEname(rs.getString(2));
				e.setEemail(rs.getString(3));
				e.setEpassword(rs.getString(4));
				e.setEdesignation(rs.getString(5));
				e.setEsalary(rs.getDouble(6));
				e.setEimage(rs.getBytes(7));
			

			}
		
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		finally {
			try {rs.close();
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return e;
	}
	
	
	public static List<Employee>displayAllEmployeelist() {
		List<Employee>list =new ArrayList<Employee>();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = MyDatabase.myconnection();
			String sql="select eid,ename,edesignation from employee";
			pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
			Employee e=new Employee();
			e.setEid(rs.getInt(1));
			e.setEname(rs.getString(2));
			e.setEdesignation(rs.getString(3));
			list.add(e);
		}
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}
	

	public static List<Employee>displayAllEmployee() {
		List<Employee>list =new ArrayList<Employee>();
		Connection con=null;
		PreparedStatement pst=null;
		try {
			con = MyDatabase.myconnection();
			String sql="select * from employee";
			pst=con.prepareStatement(sql);
			ResultSet rs=pst.executeQuery();
			while(rs.next())
			{
			Employee e=new Employee();
			e.setEid(rs.getInt(1));
			e.setEname(rs.getString(2));
			e.setEemail(rs.getString(3));
			e.setEpassword(rs.getString(4));
			e.setEdesignation(rs.getString(5));
			e.setEsalary(rs.getDouble(6));
			list.add(e);
		
		}
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return list;
	}

	
	public int updateEmployee(Employee e) {
		
		Connection con=null;
		int check=0;
		PreparedStatement pst=null;
		
		try {
			con = MyDatabase.myconnection();
			String sql="update employee set ename=?,eemail=?,epassword=?,edesignation=?,esalary=? where eid=?";
			 pst=con.prepareStatement(sql);
			pst.setString(1,e.getEname());
			pst.setString(2,e.getEemail());
			pst.setString(3,e.getEpassword());
			pst.setString(4,e.getEdesignation());
			pst.setDouble(5,e.getEsalary());
			//pst.setBytes(6,e.getEimage());
			pst.setInt(6,e.getEid());
			
			check=pst.executeUpdate();
		
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}finally {
			try {
				pst.close();
				con.close();
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		}
		return check;
	}
	public static byte[] getImageById(int eid)
	{
		byte[] image=null;
		
		Connection con=null;
		PreparedStatement pst=null;
		ResultSet rs=null;
		try {
			con = MyDatabase.myconnection();
			String sql="select eimage from employee where eid=?";
			pst=con.prepareStatement(sql);
			pst.setInt(1, eid);
			rs=pst.executeQuery();
			while(rs.next())
			{
			image=rs.getBytes(1);
			}
		}catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		finally {
				try {
				rs.close();
				pst.close();
				con.close();
					} catch (SQLException e) 
					{
				// TODO Auto-generated catch block
				e.printStackTrace();
					}
				}
		return image;
		
	}
}
