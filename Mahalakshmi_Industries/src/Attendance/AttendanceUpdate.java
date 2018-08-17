package Attendance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import constants.DBConstants;
import employee.EmployeeDTO;

public class AttendanceUpdate {

	public int updateAttendanceDetails() {
		int result = 0;
		try {
			System.out.println("inside try");
			Class.forName(DBConstants.DRIVER);
			System.out.println("inside jdbc driver");
			Connection con = DriverManager.getConnection(DBConstants.CONNECTIONSTRING, DBConstants.USERNAME,
					DBConstants.PASSWORD);
			Statement stmt = con.createStatement();
			System.out.println("Database Connected");
			String insert = "insert into anu.attendancedetails values()";

			result = stmt.executeUpdate(insert);

		} catch (Exception e) {
			System.out.println("exception" + e);
			e.printStackTrace();
		} finally {

		}
		return result;
	}

	public static ArrayList<EmployeeDTO> retriveEmployeeDetails() throws SQLException {

		ArrayList<EmployeeDTO> employeeDetailsList = new ArrayList<EmployeeDTO>();
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		try {
			System.out.println("inside try");
			Class.forName(DBConstants.DRIVER);
			System.out.println("inside jdbc driver");
			con = DriverManager.getConnection(DBConstants.CONNECTIONSTRING, DBConstants.USERNAME,
					DBConstants.PASSWORD);
			stmt = con.createStatement();
			System.out.println("Database Connected");
			String select = "Select EmployeeNumber, EmployeeFirstName from anu.employee;";

			rs = stmt.executeQuery(select);
			while (rs.next()) {

				EmployeeDTO employeeDTO = new EmployeeDTO();
				if(!"EmployeeFirstName".equals(null))
				employeeDTO.setFname(rs.getString("EmployeeFirstName"));
				if(!"EmployeeNumber".equals(null))
				employeeDTO.setEmpid(rs.getInt("EmployeeNumber"));
				employeeDetailsList.add(employeeDTO);
				}
			for(EmployeeDTO employee : employeeDetailsList) {
							
				System.out.println(employee.getEmpid());
				} 
			
		} catch (Exception e) {
			System.out.println("exception" + e);
			e.printStackTrace();
		} finally {
			if(rs!=null) {
				rs.close();
			}
			if(stmt!=null) {
				stmt.close();
			}
			if(con!=null) {
				con.close();
			}

		}
		return employeeDetailsList;

	}

}
