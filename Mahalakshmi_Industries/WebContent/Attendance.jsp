<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@page import="employee.EmployeeDTO"%>
<%@ page import = "java.util.ArrayList" %>	
<%@page import="Attendance.AttendanceUpdate"%>	
	
<!DOCTYPE html PUBLIC "-//W3C//Dth HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dth">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link REL="stylesheet" HREF="Attendance.css" TYPE="text/css"></head>
<body>
<form action="AttendanceServlet" method="get">
<table id=Employee>
			<tr>
				<th><b>id</b></th>
				<th><b>Name</b></th>
				<th><b>Present/Absent</b></th>
				<th><b>In-time</b></th>
				<th><b>Out-time</b></th>
			</tr>
<%-- <c:redirect url="/AttendanceServlet"/> --%>
 <jsp:include page="Attendance/AttendanceServlet" flush="true" />
 <c:forEach items="${employeeList}" var="EmployeeList">
    <tr>
    
       <td><c:out value="${EmployeeList.empid}"/></td>  
        <td><c:out value="${EmployeeList.fname}"/></td>
        <!-- <td>123</td>
        <td>Anu</td> -->
        <td>test</td>
        <td>test</td>
        <td>test</td>
    </tr>
   
</c:forEach>
</table>
</form>
</body>
</html>