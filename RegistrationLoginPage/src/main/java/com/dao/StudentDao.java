package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.swing.text.html.HTMLDocument.Iterator;

import com.bean.student;
import com.connection.DbConnection;

public class StudentDao {

	public int insert(student st) {
		int insert = 0;
		try {
			Connection con = null;
			con = DbConnection.get_connection();
			PreparedStatement ps = con.prepareStatement(
					"insert into student  (first_name, middle_name, last_name, mobile_no, email, address, user_name, password,Re_type_password) values (?,?,?,?,?,?,?,?,?)");
			ps.setString(1, st.getFirstname());
			ps.setString(2, st.getMiddlename());
			ps.setString(3, st.getLastname());
			ps.setString(4, st.getMobileno());
			ps.setString(5, st.getEmail());
			ps.setString(6, st.getAddress());
			ps.setString(7, st.getUsername());
			ps.setString(8, st.getPassword());
			ps.setString(9, st.getRetypepsw());

			insert = ps.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return insert;

	}

	public boolean validateStudent(student st) {
		// TODO Auto-generated method stub
		boolean isTrue = false;
		int insert = 0;
		try {
			Connection con = null;
			con = DbConnection.get_connection();
			PreparedStatement ps = con.prepareStatement("select * from student where user_name=? and password=?");
			ps.setString(1, st.getUsername());
			ps.setString(2, st.getPassword());

			ResultSet rs = ps.executeQuery();

			if (rs.next()) {

				isTrue = true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return isTrue;
	}

	public student getValues(student st) {
		student st2 = new student();

		try {
			Connection con = null;
			con = DbConnection.get_connection();
			PreparedStatement ps = con.prepareStatement("select * from student where user_name=? and password=?");
			ps.setString(1, st.getUsername());
			ps.setString(2, st.getPassword());

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				st2.setId(rs.getInt("id"));
				st2.setFirstname(rs.getString("first_name"));
				st2.setMiddlename(rs.getString("middle_name"));
				st2.setLastname(rs.getString("last_name"));
				st2.setMobileno(rs.getString("mobile_no"));
				st2.setEmail(rs.getString("email"));
				st2.setAddress(rs.getString("address"));
				st2.setUsername(rs.getString("user_name"));
				st2.setPassword(rs.getString("password"));
				st2.setRetypepsw(rs.getString("Re_type_password"));

			}
		}

		catch (Exception e) {
			e.printStackTrace();
		}

		return st2;

	}

	public List<student> getStudent() {
		List<student> list = new ArrayList<student>();
		try {
			Connection con = DbConnection.get_connection();
			PreparedStatement ps = con.prepareStatement("select * from student");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				student st = new student();
				st.setId(rs.getInt(1));
				st.setFirstname(rs.getString(2));
				st.setLastname(rs.getString(3));
				list.add(st);
			}
			con.close();

		} catch (Exception e) {
			e.printStackTrace();
		}

		return list;

	}

	public void updateValues(student st) {
		Connection con1 = null;
		PreparedStatement ps1 = null;
		try {
			con1 = DbConnection.get_connection();
			String sql = "update student set first_name=?,middle_name=?,last_name=?,mobile_no=?, email=?, address=?, user_name=?, password=?, Re_type_password=? where id=?";
			ps1=con1.prepareStatement(sql);
			ps1.setString(1, st.getFirstname());
			ps1.setString(2, st.getMiddlename());
			ps1.setString(3, st.getLastname());
			ps1.setString(4, st.getMobileno());
			ps1.setString(5, st.getEmail());
			ps1.setString(6, st.getAddress());
			ps1.setString(7, st.getUsername());
			ps1.setString(8, st.getPassword());
			ps1.setString(9, st.getRetypepsw());
			ps1.setInt(10, st.getId());
			System.out.println("check");
			System.out.println( st.getId());


			ps1.executeUpdate();
			con1.close();

		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	public student getValues(int id)
	
	{
		student st=new student();
		try {
			Connection con1=DbConnection.get_connection();
			PreparedStatement ps=con1.prepareStatement("select * from student where id=?");
			ps.setInt(1, id);
			ResultSet rs=ps.executeQuery();
			while(rs.next())
			{
				st.setId(rs.getInt(1));
				st.setFirstname(rs.getString(2));
				st.setMiddlename(rs.getString(3));
				st.setLastname(rs.getString(4));
				st.setAddress(rs.getString(5));
				st.setMobileno(rs.getString(6));
				st.setEmail(rs.getString(7));
				st.setUsername(rs.getString(8));
				st.setPassword(rs.getString(9));
				st.setRetypepsw(rs.getString(10));
				con1.close();
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		return st;
		
	}
}
