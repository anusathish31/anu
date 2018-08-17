<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Creation Confirmation Screen</title>
</head>
<body>
<%
String fname = request.getParameter("firstName");
if (fname == null || fname == "")
{
	request.setAttribute("msg","Please Enter the first Name");

} 
else
{
System.out.println("Employee Created");
}%>
</body>
</html>