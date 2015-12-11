<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 15-12-6
  Time: 下午3:41
  To change this template use File | Settings | File Templates.
--%>
<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 15-12-6
  Time: 下午3:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
  <title>Cart INFORMATION</title>
  <meta charset="utf-8">
  <meta name = "format-detection" content = "telephone=no" />
  <link rel="icon" href="images/favicon.ico">
  <link rel="shortcut icon" href="images/favicon.ico" />
  <link rel="stylesheet" href="css/style.css">
  <script src="js/jquery.js"></script>
  <script src="js/jquery-migrate-1.1.1.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/script.js"></script>
  <script src="js/superfish.js"></script>
  <script src="js/jquery.equalheights.js"></script>
  <script src="js/jquery.mobilemenu.js"></script>
  <script src="js/tmStickUp.js"></script>
  <script src="js/jquery.ui.totop.js"></script>
  <script>
    $(window).load(function(){
      $().UItoTop({ easingType: 'easeOutQuart' });
      $('#stuck_container').tmStickUp({});
    });

  </script>
  <!--[if lt IE 8]>
  <div style=' clear: both; text-align:center; position: relative;'>
    <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
      <img src="http://storage.ie6countdown.com/assets/100/images/banners/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
    </a>
  </div>
  <![endif]-->
  <!--[if lt IE 9]>
  <script src="js/html5shiv.js"></script>
  <link rel="stylesheet" media="screen" href="css/ie.css">
  <![endif]-->
</head>

<body>
<!--==============================
              header
=================================-->
<jsp:include page="../common/header.jsp"/>
<!--=====================
          Content
======================-->
<section id="content">
  <div class="ic"></div>
  <div class="container">
    <div class="row">
      <h2> Thanks to  buy  my  goods,have a  good  day!</h2>
      <ul class="list-1">
        <div class="slide-btns">
          <a href="initGoods"><span class="fa fa-link"></span> back to home</a>

        </div>
      </ul>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<jsp:include page="../common/footer.jsp"/>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>

