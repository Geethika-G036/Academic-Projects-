<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="bcp.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@page import="java.sql.ResultSet"%><html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>

<script type="text/javascript">
<%
String ss=""+session.getAttribute("st");


%>
function can()
{
	document.getElementById("a").action="login.jsp";
	document.getElementById("a").method="post";
	document.getElementById("a").submit();
}


function ins()
{
	

	if(document.ab.t1.value=="" || document.ab.t2.value=="")
	{
		alert("Fields are mandatory!!");
	}
	else
	{

		document.getElementById("a").action="logincheck.jsp";
		document.getElementById("a").method="post";
		document.getElementById("a").submit();

		}
	
}
function check()
{
	
	var z="<%=ss%>";
	if(z=="no")
		{
			 alert("Invalid User!!");
 		}
 	<%session.setAttribute("st","");%>
	
}
check();
</script>
<link type="text/css" href="menu.css" rel="stylesheet" />
    <script type="text/javascript" src="jquery.js"></script>
    <script type="text/javascript" src="menu.js"></script>
</head>
<body style="height:1300;width:916;background-image: url('img3.jpg');background-repeat:no-repeat" >

<style type="text/css">
* { margin:0;
    padding:0;
}
body{background-color:white;}
div#menu { margin:20px auto; }
div#copyright {
    font:11px 'Trebuchet MS';
    color:#222;
    text-indent:30px;
    padding:140px 0 0 0;
}
div#copyright a { color:#eee; }
div#copyright a:hover { color:#222; }
</style>
<form id="a" name="ab" ><br><br>
<h1> <center>WAREHOUSE INVENTORY TRACKING</center></h1>

<div style="height:100px;width: 50px;"></div>

<div style="margin:auto;height: 700px;width: 950px" >
<div align="center" style="height: 150px;width: 950px;color: black;font-family: sans-serif;font-size: x-large"> </div>
<div style="margin-top:30px;height: 500px;width: 550px;margin-left: 200px">
 <a href="login.jsp"><center><b><h3>Admin Login</h3></center></b></a><br>
  <a href="login.jsp"><center><b><h3>User Login</h3></center></b></a><br>
  <a href="login.jsp"><center><b><h3>Executive Login</h3></center></b></a>
</div>
</div>


</form>
</body>
</html>

