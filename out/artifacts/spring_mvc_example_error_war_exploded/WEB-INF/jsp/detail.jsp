<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
<title>About</title>
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
<jsp:include page="common/header.jsp"/>
<!--=====================
          Content
======================-->
<section id="content">
  <div class="ic"></div>
  <div class="container">
    <c:forEach items="${list}" var="goodsform" varStatus="status">
    <div class="row">
      <div class="grid_12">

        <h2>My Goods  Detail Information  of ${goodsform.name}</h2>
          <img src="${goodsform.picture}" alt="" class="img_inner fleft">
          <p>${goodsform.information}</p>
          <p>${goodsform.category}</p>
          <p>${goodsform.comment}</p>
          <img src="${goodsform.picture}" alt="" class="img_inner img_fright">
          <p> <span> <strong>has been   viewed :</strong></span> ${goodsform.view} <span>times</span></p>
          <p><span><strong>$</strong></span> ${goodsform.price} cost!</p>
          <p> photo  Date:
            <time class="time-1" datetime="${goodsform.date}">
              ${goodsform.date}
            </time> </p>
         <p>
           <span class="fa fa-tag">TAG:</span>${goodsform.tag}
         </p>
        <p>
           <div class="fa fa-bookmark"></div> <strong>Type:</strong> ${goodsform.type}
        </p>

      </div>
      <p>
        <div class="row pull-right" style="font-size: xx-large">
      <a class="info fa fa-shopping-cart text-center" href="addCart?goodsId=${goodsform.id}"><strong>Add to Cart</strong></a>
    </div>
      </p>
    </div>
     </c:forEach>
      </div>
  <div class="sep-1 offset__1"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h3>My Recent  Awards</h3>
      </div>
      <div class="grid_3">
        <div class="block-1">
          <div class="fa fa-image"></div>
          <div class="block-1_title">Aliquam nibh ante</div>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit
          <br>
          <a href="#" class="btn">more</a>
        </div>
      </div>
      <div class="grid_3">
        <div class="block-1">
          <div class="fa fa-trophy"></div>
          <div class="block-1_title">Kiam nibh anteli</div>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit
          <br>
          <a href="#" class="btn">more</a>
        </div>
      </div>
      <div class="grid_3">
        <div class="block-1">
          <div class="fa fa-star"></div>
          <div class="block-1_title">Nomilonibh anter</div>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit
          <br>
          <a href="#" class="btn">more</a>
        </div>
      </div>
      <div class="grid_3">
        <div class="block-1">
          <div class="fa fa-camera"></div>
          <div class="block-1_title">Moliuam nibh anteg</div>Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit
          <br>
          <a href="#" class="btn">more</a>
        </div>
      </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<jsp:include page="common/footer.jsp"/>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
</body>
</html>

