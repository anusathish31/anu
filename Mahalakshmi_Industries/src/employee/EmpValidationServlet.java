package employee;

import java.io.IOException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import constants.EmployeeConstants;
import constants.DBConstants;

@WebServlet(description = "validate the data entered while creating the new Employee", urlPatterns = {
		"/empValidationServlet" })
public class EmpValidationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		EmployeeDTO employeeDTO = new EmployeeDTO();
		System.out.println("inside doPost");
		employeeDTO.setFname(request.getParameter(EmployeeConstants.FNAME));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.LNAME));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.GENDER));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.JOBTITLE));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.ADDLINE1));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.ADDLINE2));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.CITY));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.STATE));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.COUNTRY));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.PHONENUM));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.ALTPHNUM));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.DOB));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.BLOODGROUP));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.ZIPCODE));
		employeeDTO.setFname(request.getParameter(EmployeeConstants.ENTRYDATE));
		
		
		if (employeeDTO.getFname() != null && !"".equals(employeeDTO.getFname()) && employeeDTO.getLname() != null && !"".equals(employeeDTO.getLname())
				&& employeeDTO.getJobTitle() != null && !"".equals(employeeDTO.getJobTitle()) && employeeDTO.getPhNum()!= null && !"".equals(employeeDTO.getPhNum())
				&& Integer.parseInt(null, employeeDTO.getPhNum().length()) == 10 ) {
			try {
				System.out.println("inside try");
				Class.forName(DBConstants.DRIVER);
				System.out.println("inside jdbc driver");
				Connection con = DriverManager.getConnection(DBConstants.CONNECTIONSTRING, DBConstants.USERNAME, DBConstants.PASSWORD);
				Statement stmt = con.createStatement();
				System.out.println("Database Connected");
				String insert = "insert into employee values (1, '" + employeeDTO.getFname() + "' ,'" + employeeDTO.getAddLine1() + "', '" + employeeDTO.getAddLine2()
						+ "', '" + employeeDTO.getCity() + "', '" + employeeDTO.getState() + "', '" + employeeDTO.getCountry() + "', '"+employeeDTO.getPhNum()+"', '"+employeeDTO.getAltPhNum()+"', null, null, null, '" + employeeDTO.getLname() + "')";
				
				stmt.executeUpdate(insert); 	
				System.out.println("values inserted to table employee");
				response.getWriter().append("Employee Created");
			} 
			catch (Exception e) 
			{
				System.out.println("exception"+e);
				e.printStackTrace();
			}
		} else {
			System.out.println("inside validation");
			if (employeeDTO.getFname() == null || "".equals(employeeDTO.getFname())) {
				request.setAttribute("errmsg", "Please enter First name");
			}
			if (employeeDTO.getLname() == null || "".equals(employeeDTO.getLname())) {
				request.setAttribute("errmsg", "Please enter Last name");
			}
			if (employeeDTO.getJobTitle() == null || "".equals(employeeDTO.getJobTitle())) {
				request.setAttribute("errmsg", "Please enter his Job title");
			}
			if (employeeDTO.getPhNum() == null || "".equals(employeeDTO.getPhNum())) {
				request.setAttribute("errmsg", "Please enter his Phone number");
			}
			if (!employeeDTO.getPhNum().matches("^[0-9]{10}$")) {
				request.setAttribute("errmsg", "Please enter valid phone number");
			}
			// request.setAttribute("errmsg", "Please enter name");
			RequestDispatcher req = request.getRequestDispatcher("CreateEmployee.jsp");
			req.include(request, response);
			// response.sendRedirect("CreateEmployee.jsp");
		}

	}

}
