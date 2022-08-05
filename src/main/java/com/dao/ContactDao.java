package com.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.bean.Contact;
import com.util.ContactUtil;

public class ContactDao {
	public static void insertContact(Contact c) {
		try {
			Connection conn = ContactUtil.createConnection();
			String sql = "insert into contact(name,phone,email,subject,message) values(?,?,?,?,?)";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getPhone());
			pst.setString(3, c.getEmail());
			pst.setString(4, c.getSubject());
			pst.setString(5, c.getMessage());
			pst.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static List<Contact> getAllContact(){
		List<Contact> list = new ArrayList<Contact>();
		try {
			Connection conn = ContactUtil.createConnection();
			String sql = "select * from contact";
			PreparedStatement pst = conn.prepareStatement(sql);
			ResultSet rs = pst.executeQuery();
			while(rs.next()) {
				Contact c = new Contact();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setPhone(rs.getLong("phone"));
				c.setEmail(rs.getString("email"));
				c.setSubject(rs.getString("subject"));
				c.setMessage(rs.getString("message"));
				list.add(c);
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	public static Contact getAllContactById(int id) {
		Contact c = null;
		try {
			Connection conn =  ContactUtil.createConnection();
			String sql = "select * from contact where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				c = new Contact();
				c.setId(rs.getInt("id"));
				c.setName(rs.getString("name"));
				c.setPhone(rs.getLong("phone"));
				c.setEmail(rs.getString("email"));
				c.setSubject(rs.getString("subject"));
				c.setMessage(rs.getString("message"));
			}
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return c;
	}
	
	public static void updateContact(Contact c) {
		try {
			Connection conn =  ContactUtil.createConnection();
			String sql = "update contact set name=?, phone=?, email=?, subject=?, message=? where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setString(1, c.getName());
			pst.setLong(2, c.getPhone());
			pst.setString(3, c.getEmail());
			pst.setString(4, c.getSubject());
			pst.setString(5, c.getMessage());
			pst.setInt(6, c.getId());
			pst.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public static void deleteContact(int id) {
		try {
			Connection conn = ContactUtil.createConnection();
			String sql = "delete from contact where id=?";
			PreparedStatement pst = conn.prepareStatement(sql);
			pst.setInt(1, id);
			pst.executeUpdate();
		}
		catch(Exception e) {
			e.printStackTrace();
		}
	}
}
