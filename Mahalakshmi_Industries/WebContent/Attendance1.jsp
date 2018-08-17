<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link REL="stylesheet" HREF="Attendance.css" TYPE="text/css">
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/anu"
        user="root" password="Anusathish@1"
 />
 <sql:query var="listEmployees"   dataSource="${myDS}">
        Select EmployeeNumber, EmployeeFirstName from anu.employee;
 </sql:query> 
 
 <div align="center">
 <table id=Employee>
           <caption>List of Employees</caption>
            <tr>
                <th><b>id</b></th>
				<th><b>Name</b></th>
				<th><b>Present/Absent</b></th>
				<th><b>In-time</b></th>
				<th><b>Out-time</b></th>
            </tr>
            <c:forEach var="employeeList" items="${listEmployees.rows}">
                <tr>
                    <td><c:out value="${employeeList.EmployeeNumber}" /></td>
                    <td><c:out value="${employeeList.EmployeeFirstName}" /></td>
                    <td><c:out value="" /></td>
                    <td><c:out value="" /></td>
                </tr>
            </c:forEach>
        </table>
    </div>   
</body>
</html>