<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1;width=device-width">
<link REL="stylesheet" HREF="home.css" TYPE="text/css">
<title>HomePage</title>

</head>
<body>

<button class="tablink" onclick="openPage('Employee Management', this, '#BEBEBE')">Employee Management</button>
<button class="tablink" onclick="openPage('EmployeeAttendance', this, '#BEBEBE')">Employee Attendance</button>
<button class="tablink" onclick="openPage('OrderDetails', this, '#BEBEBE')">Order Details</button>
<button class="tablink" onclick="openPage('Inventory', this, '#BEBEBE')">Inventory</button>
<button class="tablink" onclick="openPage('Information', this, '#BEBEBE')" id="defaultOpen">Information</button>

<div id="Employee Management" class="tabcontent" style="height:100%; width:100%">
  <h3>Employee Management</h3>
  <jsp:include page="EmpManagement.jsp" flush="true" />
  </div>
<div id="EmployeeAttendance" class="tabcontent" style="height:100%; width:100%">
  <h3>Employee Attendance</h3>
  <jsp:include page="Attendance.jsp" flush="true" />
  
</div>
<div id="OrderDetails" class="tabcontent" style="height:100%; width:100%">
  <h3>OrderDetails</h3>
 
</div>
<div id="Inventory" class="tabcontent" style="height:100%; width:100%">
  <h3>Inventory</h3>
  
</div>
<div id="Information" class="tabcontent" style="height:100%; width:100%">
  <h3>Information</h3>
 
</div>

<script>
function openPage(pageName,elmnt,color) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablink");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].style.backgroundColor = "";
    }
    document.getElementById(pageName).style.display = "block";
    elmnt.style.backgroundColor = color;

}
// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
