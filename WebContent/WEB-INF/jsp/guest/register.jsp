<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Register</title>
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
	    <div class="col-md-12 register">
			<form:form action="submitRegister" method="post" commandName="guestForm">

				 <div class="register-top-grid">
					<div class="row" PERSONAL INFORMATION></div>
					 <div>
						<span> Name<label>*</label></span>
						<form:input path="name"/>
					 </div>
					 <div>
						<span> Phone<label>*</label></span>
						<form:input path="phone"/>
					 </div>
					 <div>
						 <span>Email Address<label>*</label></span>
						<form:input path="email"/>
					 </div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
					   </a>
					 <div>
						 <span>Password<label>*</label></span>
						 <form:password  id="password" path="password"/>
					 </div>
					 <div>
						 <span>Confirm Password<label>*</label></span>
						 <input type="password" id="confirm">
					 </div>



					 <div class="form-submit">
						 <input type="submit" value="submit">
					 </div>
					  </div>


		   </form:form>
				</div>
	 </div>
</div>
		</div>
	</section>
<jsp:include page="../common/footer.jsp"/>

</body>
</html>		