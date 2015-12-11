<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Login</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Gifty Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="../../../css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<!-- Custom Theme files -->
<link href="../../../css/style1.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<!--webfont-->
<link href='http://fonts.useso.com/css?family=Raleway:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="../../../js/jquery-1.11.1.min.js"></script>
<!-- dropdown -->
<script src="../../../js/jquery.easydropdown.js"></script>
<!-- start menu -->
<link href="../../../css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="../../../js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
</head>
<body>

<jsp:include page="../common/header.jsp"/>
<section id="content">
	<div class="ic"></div>
	<div class="container">
<div class="men">
	<div class="container">
	    <div class="register">
			<form:form action="submitLogin" method="POST" commandName="guestForm">

			   <div class="col-md-6 login-left">
			  	 <h3>NEW CUSTOMERS</h3>
				 <p>By creating an account with our store, you will be able to move through the checkout process faster, store multiple shipping addresses, view and track your orders in your account and more.</p>
				 <a class="acount-btn" href="initregister">Create an Account</a>
			   </div>
			   <div class="col-md-6 login-right">
			  	<h3>REGISTERED CUSTOMERS</h3>
				<p>If you have an account with us, please log in.</p>
				<form>
				  <div>
					<span>User Name as ${guest.name}<label>*</label></span>
					<form:input path="name" />
				  </div>
				  <div>
					<span>Password<label>*</label></span>
					 <form:password path="password"/>
				  </div>
				  <a class="forgot" href="#">Forgot Your Password?</a>

				 <div class="row"> <input type="submit" value="Login">
				 </div>
			    </form>
			   </div>
			   <div class="clearfix"> </div>

				</form:form>
		</div>
	 </div>
</div>
</div>
	</section>
<jsp:include page="../common/footer.jsp"/>
</body>
</html>		