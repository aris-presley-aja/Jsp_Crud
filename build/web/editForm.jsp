

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

    <title>Edit Student</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
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
    
	<%@page import="comm.dao.StudentDAO, comm.bean.Student"%>

	<%
		String id = request.getParameter("id");
		Student s = StudentDAO.getStudentById(Integer.parseInt(id));
		
	%>
        
        <div class="header">
  <a href="#default" class="logo">Edit Student</a>
  <div class="header-right">
    <a href="home.html">Home</a>
      <a class="active" href="#">Edit</a>
    <a href="viewStudent.jsp">View List</a>
    <a href="addStudentForm.jsp">Add Students</a>
            <a href="index.jsp">Logout</a>
  </div>
</div>

<div style="padding-left:20px">
  <h1>JSP Student Manager</h1>
  <p>Resize the browser window to see the effect.</p>
    <p>DAO, BEAN, JSP, HTML, JavaScript, java, Mysqli, Tomcat, JRE-7,  </p>
  <p>
          <center>
	<form action="editStudent.jsp" method="post">
		<input type="hidden" name="id" value="<%=s.getId()%>" />
		<table>
			<tr>
				<td>Name:</td>
				<td><input type="text" name="name" value="<%=s.getName()%>" /></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="password" name="password"
					value="<%=s.getPassword()%>" /></td>
			</tr>
			<tr>
				<td>Email:</td>
				<td><input type="email" name="email" value="<%=s.getEmail()%>" /></td>
			</tr>
			<tr>
				<td>Sex:</td>
				<td><input type="radio" name="gender" value="male" <%=s.getGender().equals("male") ? "checked=\"checked\"": ""%> />Male <input
					type="radio" name="gender" value="female" <%=s.getGender().equals("female") ? "checked=\"checked\"": ""%>/>Female</td>
			</tr>
			<tr>
				<td>Country:</td>
				<td>
					<select name="country">
						<option value="India" <%=s.getCountry().equals("India") ? "selected=\"selected\"": ""%> >India</option>
						<option value="Indonesia" <%=s.getCountry().equals("Indonesia") ? "selected=\"selected\"": ""%>>Indonesia</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="Edit Student" /></td>
			</tr>
		</table>
	</form>
    </center>
</div>
                                                <div class="footer">
  <p> Made with <span style="font-size:150%;color:red;">&hearts;</span>
 by Aris Priyanto/ Арис Приянто</p>
</div>
</body>
</html>

