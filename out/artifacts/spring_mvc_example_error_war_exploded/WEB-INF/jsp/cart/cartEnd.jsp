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
<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html>
<head>
  <title>Cart INFORMATION</title>
  <meta charset="utf-8">
  <meta name = "format-detection" content = "telephone=no" />

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
<script type="text/javascript">
    var script=document.createElement('script');
    script.type='text/javascript';
    script.src='https://one.pingxx.com/lib/pingpp_one.js';
    script.onload=function(){
        document.addEventListener('pingpp_one_ready',function(e){
            pingpp_one.success(function(res){
                if(!res.status){
                    alert(res.msg);
                }
            },function(){
                winndow.location.href="http://10.0.44.62:8080/";   //示例
            });
        });
    };
    document.body.appendChild(script);
</script>

</body>
</html>

