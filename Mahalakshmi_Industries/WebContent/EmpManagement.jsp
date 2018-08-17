<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
* {box-sizing: border-box}
body {font-family: "Lato", sans-serif;}

/* Style the tab */
.tab {
    float: left;
    border: none;
    background-color: #f1f1f1;
    width: 30%;
    height: 100%;
}

/* Style the buttons inside the tab */
.tab button {
   
    background-color: inherit;
    color: black;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
    background-color: #ddd;
}

/* Create an active/current "tab button" class */
.tab button.active {
    background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
    float: left;
    padding: 0px 12px;
    border: none;
    width: 70%;
    border-left: none;
    height: 100%;
}
</style>
</head>
<body>


<div class="tab">
  <button class="tablinks" onclick="openEmp(event, 'CreateEmployee')" id="defaultOpen">Create Employee</button>
  <button class="tablinks" onclick="openEmp(event, 'Edit/DeleteEmployee')">Edit/Delete Employee</button>
  <button class="tablinks" onclick="openEmp(event, 'Attendance')">Attendance</button>
</div>
<div>
<div id="CreateEmployee" class="tabcontents" style="display:none">
   <jsp:include page="CreateEmployee.jsp" flush="true" />
</div>

<div id="Edit/DeleteEmployee" class="tabcontents" style="display:none">
  <h3>Edit/Delete Employee</h3>
</div>

<div id="Attendance" class="tabcontents" style="display:none">
  <h3>Attendance</h3>
</div>
</div>
<script>
function openEmp(evt, Emp) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontents");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(Emp).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
     
</body>
</html> 
