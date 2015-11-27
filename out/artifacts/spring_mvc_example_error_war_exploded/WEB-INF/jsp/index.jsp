<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/include.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>The Perge bootstrap Website Template | Home :: w3layouts</title>
<link href="./css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="./js/jquery.min.js"></script>
<!-- Custom Theme files -->
<link href="./css/style.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="application/x-javascript">
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
</script>

<!---- start-smoth-scrolling---->
<script type="text/javascript" src="./js/move-top.js"></script>
<script type="text/javascript" src="./js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!---- start-smoth-scrolling---->
<!--web-fonts -->
<link
	href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700|Roboto:500,100,300,700,900,100italic,400'
	rel='stylesheet' type='text/css'>
<!--web-fonts -->
<!----start-top-nav-script---->
<script>
	$(function() {
		var pull = $('#pull');
		menu = $('nav ul');
		menuHeight = menu.height();
		$(pull).on('click', function(e) {
			e.preventDefault();
			menu.slideToggle();
		});
		$(window).resize(function() {
			var w = $(window).width();
			if (w > 320 && menu.is(':hidden')) {
				menu.removeAttr('style');
			}
		});
	});
</script>
<!----//End-top-nav-script---->
</head>
<body>
	<div class="main-header">
		<!----- start-header---->
		<div id="home" class="header">
			<div class="top-header">
				<div class="container">
					<div class="logo">
						<img src="./images/logo.png" alt="">
					</div>
					<!----start-top-nav---->
					<nav class="top-nav">
					<ul class="top-nav">
						<c:choose>
							<c:when test="${sessionScope.UVO.userId==null}">
								<li><a href="initLogin">登录</a></li>
							</c:when>
							<c:otherwise>
								<li><a href="initCart">${sessionScope.UVO.userId}</a></li>
							</c:otherwise>
						</c:choose>
						<li><a href="initGoods">首页</a></li>
						<li><a href="initGoods?type=博客">博客类</a></li>
						<li><a href="initGoods?type=网页">网站类</a></li>
						<li><a href="initEditGoods">UPLOAD</a></li>
					</ul>
					<a href="#" id="pull"><img src="./images/menu-icon.png"
						title="menu" /></a> </nav>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<div id="blog" class="blog">
		<div class="container">
			<div class="news">
				<c:forEach items="${list}" var="goods" varStatus="status">
					<div class="col-md-4 blog_grid">
						<img src="${goods.picture}" alt="" width="350px" height="233px" />
						<div class="team-info">
							<div class="team-head">
								<h3>${goods.name}</h3>
								<span>${goods.price}</span>
							</div>
							<div class="n-icons">
								<ul class="n-social unstyled-list list-inline">
									<div class="slide-btns">
										<a class="livedemo" href="openGoods?goodsId=${goods.id}">显示详细信息</a>
									</div>
								</ul>
							</div>
							<div class="clearfix"></div>
						</div>
						<p>${goods.context}</p>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<!---------/start-footer--------->
	<div class="footer">
		<div class="container">
			<div class="copy-right">
				<p>
					&copy; 2014 All rights Reserved | Template by &nbsp;<a
						href="http://w3layouts.com">W3Layouts</a>
				</p>

			</div>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-------//End-footer----------->

</body>
</html>