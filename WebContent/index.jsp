<!DOCTYPE html>
<html lang="en" >
<head>
    <%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

  <meta charset="UTF-8">
  
  <title>Classic Login Form Example</title>
  <link href="https://fonts.googleapis.com/css?family=Assistant:400,700" rel="stylesheet"><link rel="stylesheet" href="./style.css">
  <script>
body {
  background: #ABCDEF;
  font-family: Assistant, sans-serif;
  display: flex;
  min-height: 90vh;
}
.login {
  color: white;
  background: background: #136a8a;
  background: 
    -webkit-linear-gradient(to right, #267871, #136a8a);
  background: 
    linear-gradient(to right, #267871, #136a8a);
  margin: auto;
  box-shadow: 
    0px 2px 10px rgba(0,0,0,0.2), 
    0px 10px 20px rgba(0,0,0,0.3), 
    0px 30px 60px 1px rgba(0,0,0,0.5);
  border-radius: 8px;
  padding: 50px;
}
.login .head {
  display: flex;
  align-items: center;
  justify-content: center;
}
.login .head .company {
  font-size: 2.2em;
}
.login .msg {
  text-align: center;
}
.login .form input[type=text].text {
  border: none;
  background: none;
  box-shadow: 0px 2px 0px 0px white;
  width: 100%;
  color: white;
  font-size: 1em;
  outline: none;
}
.login .form .text::placeholder {
  color: #D3D3D3;
}
.login .form input[type=password].password {
  border: none;
  background: none;
  box-shadow: 0px 2px 0px 0px white;
  width: 100%;
  color: white;
  font-size: 1em;
  outline: none;
  margin-bottom: 20px;
  margin-top: 20px;
}
.login .form .password::placeholder {
  color: #D3D3D3;
}
.login .form .btn-login {
  background: none;
  text-decoration: none;
  color: white;
  box-shadow: 0px 0px 0px 2px white;
  border-radius: 3px;
  padding: 5px 2em;
  transition: 0.5s;
}
.login .form .btn-login:hover {
  background: white;
  color: dimgray;
  transition: 0.5s;
}
.login .forgot {
  text-decoration: none;
  color: white;
  float: right;
}
footer {
  position: absolute;
  color: #136a8a;
  bottom: 10px;
  padding-left: 20px;
}
footer p {
  display: inline;
}
footer a {
  color: green;
  text-decoration: none;
}
footer a:hover {
  text-decoration: underline;
}
footer .heart {
  color: #B22222;
  font-size: 1.5em
}
.card {
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
  transition: 0.3s;
  width: 40%;
}

.card:hover {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
}

.container {
  padding: 2px 16px;
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
  </script>
</head>
<body bgcolor="lightgrey">
<center>
<!-- partial:index.partial.html -->
  <div class="card">
    <div class="card-body">JSP Student Manager </div>
  </div>
</div>
                <div class="card">
                    <div class="container">
                <section class='login' id='login'>
                  <div class='head'>
                  <h1 class='company'>Login page</h1>
                  </div>
                  <p class='msg'>Welcome back</p>
                  <div class='form'>
                    <form>
                  <input type="text" placeholder='Username' class='text' id='username' required><br>
                  <input type="password" placeholder='??????????????????????????????????????????' class='password'><br>
                  <a href="#" class='btn-login' id='do-login'>Login</a>
<!--                  <a href="#" class='forgot'>Forgot?</a>-->
                    </form>
                  </div>
                </section>
                    </div>
                </div>
<footer>
  <p>Made with <span style="font-size:150%;color:red;">&hearts;</span> by Aris Priyanto/ ???????? ??????????????(<a href='https://github.com/aris-presley-aja'>@arz22002</a>)</p>
<!--  <p>Gradient: <a href='https://uigradients.com/#Turquoiseflow'>https://uigradients.com/#Turquoiseflow</a></p>-->
</footer>
<!-- partial -->
<!--  <script  src="./script.js"></script>-->


<script>
function myFunction() {
  location.replace("home.jsp")
}
</script>
<script>
    var btnLogin = document.getElementById('do-login');
var idLogin = document.getElementById('login');
var username = document.getElementById('username');
btnLogin.onclick = function(){
  idLogin.innerHTML = '<p>We\'re happy to see you again, </p><h1><br><button onclick="myFunction()">Masuk ke Aplikasi</button><br>' +username.value+ '</h1>';
}

</script>
</center>
      
</body>

</html>
