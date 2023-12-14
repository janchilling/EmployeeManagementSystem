package com.administrator;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.employee.DBConnect;
import com.employee.employee;

public class adminDBUtil {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	public static Admin validate(String username, String password) {

		Admin admin = null;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from admin where usernameAdmin = '" + username + "' AND passwordAdmin = '"
					+ password + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				String usernameU = rs.getString(6);
				String passwordU = rs.getString(7);
				
				admin = new Admin(id, name, email, phone, address, usernameU, passwordU);

			}
		} catch (Exception e) {

			e.printStackTrace();

		}

		return admin;
	}
	
	public static Admin getAdminDetails(String username) {

		Admin admin = null;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "Select * from admin where usernameAdmin = '" + username + "'";
			rs = stmt.executeQuery(sql);

			while (rs.next()) {

				int id = rs.getInt(1);
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String address = rs.getString(5);
				String usernameU = rs.getString(6);
				String passwordU = rs.getString(7);
			

				admin = new Admin(id, name, email, phone, address, usernameU, passwordU);

			}

		} catch (Exception e) {
			e.printStackTrace();
		}

		return admin;

	}

}
