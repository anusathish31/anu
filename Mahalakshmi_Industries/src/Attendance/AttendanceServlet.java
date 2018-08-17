package Attendance;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import employee.EmployeeDTO;

@WebServlet(urlPatterns = {"/AttendanceServlet"})
public class AttendanceServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
  
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
		try {
			ArrayList<EmployeeDTO> employeeList = AttendanceUpdate.retriveEmployeeDetails();
			
			if(employeeList != null && employeeList.size() > 0) {
				request.setAttribute("employeeList", employeeList);
			}
			
	        RequestDispatcher view = request.getRequestDispatcher("Attendance.jsp");
	        view.forward(request, response);
	        
			/*request.getRequestDispatcher("Attendance.jsp").forward(request, response);*/
			
		} catch (SQLException e) {
			System.out.println("Exception caught while calling retrieveEmployee Details:::" + e.getMessage());
			e.printStackTrace();
		}
	}

	
}
