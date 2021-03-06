<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Second-Hand->Login</title>
<link rel="stylesheet" href="/js/bootstrap-3.3.2-dist/css/bootstrap.css" type="text/css" />
<link rel="stylesheet" href="/css/core.css" type="text/css" />

<style type="text/css">
	.el-login-form{
		width:600px; 
		margin-left:auto;
		margin-right:auto;
		margin-top: 20px;
	}
	.el-login-form .form-control{
		width: 220px;
		display: inline;
	}
</style>

<script type="text/javascript">

</script>

</head>
<body>

	<div class="el-header" >
		<div class="container" style="position: relative;">
			<ul class="nav navbar-nav navbar-right">
				<li><a href="/index.jsp">HomePage</a></li>
				<li><a href="/register.jsp">Registration</a></li>
			</ul>
		</div>
	</div>
	

	<div class="navbar navbar-default el-navbar">
		<div class="container">
			<div class="navbar-header">
				<a href=""><img alt="Brand" src="/images/icon.png"></a>
				<span class="el-page-title"></span>
			</div>
		</div>
	</div>
	

	<div class="container">  
		<form id="loginForm" class="form-horizontal el-login-form" action="/UserServlet" method="post" >
		<input type = "hidden" name="method" value="login">
		<br>
			<p class="h2" style="margin: 10px 10px 20px 110px;color:#000;">&emsp;Sign-In</p> 
			<div class="form-group">
				<label class="control-label col-sm-2">Email</label>
				<div class="col-sm-10">
					<input type="text" autocomplete="off" name="email" class="form-control" value="${user.email }"/>
				</div> 
			</div>
			<br>
			<div class="form-group">
				<label class="control-label col-sm-2">Password</label>
				<div class="col-sm-10">
					<input type="password" autocomplete="off" name="password" class="form-control" value="${user.password }" />
					<p style="color: red; font-weight: 900">${msg }</p>	
				</div>
			</div>
			<br>
			<div class="form-gorup">
				<div class="col-sm-offset-3">
					<button type="submit" class="btn btn-success" style="width: 100px;">
						???Sign in
					</button>
					&emsp;&emsp;&emsp;&emsp;
					New customer?<a href="/register.jsp"> Start here.</a>
				</div>
				<br>
				&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
				<a href="/forgotPassword.jsp"> Forgot password?</a>
				<br><br>
			</div>
		</form>
	</div>
	
		

	<div class="container-foot-2">
		<div class="context">
				<div class="left">
				<p> Online Second-Hand trading market</p>
				<p> Develop&emsp;&emsp;&emsp;by???&emsp;ASD Group one</p>
				<p> Contact Address???&emsp;University of Technology, Sydney</p>
				<p> Contact Number???&emsp;0424666666</p>
				<p> Email Address &emsp;???&emsp;GroupOne@Student.uts.edu.au</p>
			</div>
			<div class="right">
			<br><br><br><br><br><br>
				<a target="_blank" href="https://www.facebook.com/"><img
					src="/images/facebook.png"></a>
				<a target="_blank" href="https://www.twitter.com/"><img
					src="/images/twitter.png"></a>
				<a target="_blank" href="https://www.youtube.com/"><img
					src="/images/youtube.png"></a>
				<a target="_blank" href="https://www.github.com/"><img
					src="/images/github.png"></a>
			</div>
		</div>
	</div>
</body>
</html>