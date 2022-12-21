

<html>

    <head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
        <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.1/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<style>
* {box-sizing: border-box;}
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

<div class="header">
  <a href="#default" class="logo">Students Manager JSP</a>
  <div class="header-right">
    <a class="active" href="#home">Home</a>
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


        <br>
        	<br/>
                <button class="button button4"><a href="addStudentForm.jsp"><font color="red">Add New Student</font></a> </button>
	

        
                <button class="button button4"><a href="viewStudent.jsp"><font color="red">View Student List</font></a> </button>
    </center>
  </p>
</div>
        <div class="footer">
  <p> Made with <span style="font-size:150%;color:red;">&hearts;</span>
 by Aris Priyanto/ Арис Приянто</p>
</div>
</body>
</html>
