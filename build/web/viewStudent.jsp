    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
    .button {
  background-color: #3d85c6; /* Green #4CAF50; */
  border: none;
  color: white;
  padding: 10px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

.button1 {border-radius: 2px;}
.button2 {border-radius: 4px;}
.button3 {border-radius: 8px;}
.button4 {border-radius: 20px;}
.button5 {border-radius: 50%;}

* {box-sizing: border-box;}

body { 
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.header {
  overflow: hidden;
  background-color: #f1f1f1;
  padding: 20px 10px;
}

.header a {
  float: left;
  color: black;
  text-align: center;
  padding: 12px;
  text-decoration: none;
  font-size: 18px; 
  line-height: 25px;
  border-radius: 4px;
}

.header a.logo {
  font-size: 25px;
  font-weight: bold;
}

.header a:hover {
  background-color: #ddd;
  color: black;
}

.header a.active {
  background-color: dodgerblue;
  color: white;
}

.header-right {
  float: right;
}

@media screen and (max-width: 500px) {
  .header a {
    float: none;
    display: block;
    text-align: left;
  }
  
  .header-right {
    float: none;
  }
}
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: lightgray;
   color: white;
   text-align: center;
}
</style>
</head>
<body>
    <center>
	<%@page import="comm.dao.StudentDAO, comm.bean.*, java.util.*" %>
	<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	
	
	
	<%
		List<Student> list = StudentDAO.getAllStudent();
		request.setAttribute("list", list);
	%>
	
        
        
    <div class="header">
  <a href="#default" class="logo">Students Manager JSP</a>
  <div class="header-right">
    <a href="home.jsp">Home</a>
    <a class="active" href="#">View List</a>
    <a href="addStudentForm.jsp">Add Students</a>
        <a href="index.jsp">Logout</a>
  </div>
</div>

<div style="padding-left:20px">
<h1>Student List</h1>
  <p>Resize the browser window to see the effect.</p>
    <p>DAO, BEAN, JSP, HTML, JavaScript, java, Mysqli, Tomcat, JRE-7,  </p>
  
          <center>
<!--              <p>

	<a href="addStudentForm.jsp">Add New Student</a>
	</br>
	<a href="viewStudent.jsp">View Student</a>
        </p>-->
    </center>
  
</div>
        <center>
	<table border="1" width="90%">
		<tr>
			<th>ID</th>
			<th>Name</th>
			<th>Password</th>
			<th>Email</th>
			<th>Gender</th>
			<th>Country</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach items="${list}" var="s">
		<tr>
			<td>${s.getId()}</td>
			<td>${s.getName()}</td>
			<td>${s.getPassword()}</td>
			<td>${s.getEmail()}</td>
			<td>${s.getGender()}</td>
			<td>${s.getCountry()}</td>
			<td><a href="editForm.jsp?id=${s.getId()}">Edit</a>
			<td><a href="deleteStudent.jsp?id=${s.getId()}">Delete</a>
		</tr>
		</c:forEach>
	</table>
	
	<br/>
        <button class="button button4"><a href="addStudentForm.jsp">Add New Student</a> </button>
    
        </center>
                <div class="footer">
  <p> Made with <span style="font-size:150%;color:red;">&hearts;</span>
 by Aris Priyanto/ Арис Приянто</p>
</div>
</body>
</html>