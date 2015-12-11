<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
<title>Home</title>
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
<script src="js/jquery.shuffle-images.js"></script>
<script type="text/javascript">
 $(window).load(function(){
  $().UItoTop({ easingType: 'easeOutQuart' });
  $('#stuck_container').tmStickUp({});  
 }); 

 $(document).ready(function(){
       $(".shuffle-me").shuffleImages({
         target: ".images > img"
       });
    });
 function changeURL(x) {

     var a = document.getElementById("gridID");
     for( var i=0;i< a.size;i++) {
         a[i].href = "galleryDetail?goodsId="+ x.name;
     }

 }
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

<body class="page1" id="top">
<!--==============================
              header
=================================-->
<jsp:include page="common/header.jsp"/>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - August11, 2015!</div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h2 class="ta__center">Recent  Photos</h2>
        <div class="shuffle-group">
          <div class="row">
            <div class="grid_8">

              <div data-si-mousemove-trigger="100"  class="shuffle-me offset__1">
                  <a  name="gridID" href="gallery" class="info" target="_parent"></a>
                <div class="images">
                  <c:forEach items="${grid0}" var="gard" varStatus="status">
                  <img   id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt=""
                        onclick="changeURL(this)"/>

                    </c:forEach>
                </div>
              </div>
            </div>
            <div class="grid_4">
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a  name="gridID" href="gallery" class="info" target="_blank"></a>
                <div class="images">

                  <c:forEach items="${grid1}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onfocus="changeURL(this)"/>

                  </c:forEach>


                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me offset__1">
                <a  name="gridID" href="gallery" class="info" target="_blank"></a>
                <div class="images">

                  <c:forEach items="${grid2}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onmousemove="changeURL(this)">


                  </c:forEach>

                </div>
              </div>
            </div>
            <div class="clear"></div>
            <div class="grid_4">
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a  name="gridID" href="gallery" class="info" target="_blank"></a>
                <div class="images">
                  <c:forEach items="${grid3}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onfocus="changeURL(this)">

                  </c:forEach>

                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a  name="gridID" href="gallery" class="info" target="_blank"></a>

                <div class="images">
                  <c:forEach items="${grid4}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt=""   onfocus="changeURL(this)">

                  </c:forEach>


                </div>
              </div>
            </div>
            <div class="grid_8">
              <div data-si-mousemove-trigger="100"  class="shuffle-me">
                <a  name="gridID" href="gallery" class="info" target="_blank"></a>

                <div class="images">
                  <c:forEach items="${grid5}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onfocus="changeURL(this)">

                  </c:forEach>

                </div>
              </div>
            </div>
            </div>
          </div>
      </div>
    </div>
  </div>
  <div class="copyrights">Collect from </div>
  <div class="sep-1"></div>
  <div class="container">
    <div class="row">
      <c:forEach items="${listHotBlog}" var="hot" varStatus="status">




      <div class="grid_8">
        <h3>${hot.name}</h3>
        <img src="${hot.picture}" alt="" class="img_inner fleft noresize">
        <div class="extra_wrapper"><p class="offset__1" >
           ${hot.information}
         </p></div>
        <div class="clear"></div>
        <p>Find detailed information about the
          <a href="contacts" rel="nofollow" class="color1"><strong>contacts me!</strong></a> here. </p>
        <p>${hot.category}</p>
        <time class="time-1" datetime="${hot.date}">
            ${hot.date}</time>

        <a href="blogDetail?goodsId=${hot.id}" class="btn">more</a>
      </div>
      <div class="grid_4">
        <h3>Follow me</h3>
        <ul class="socials">
          <li>
            <div class="fa fa-facebook"></div>
            <a href="#">Be a fan on Facebook</a>
          </li>
          <li>
            <div class="fa fa-twitter"></div>
            <a href="#">Follow me on Twitter</a>
          </li>
          <li>
            <div class="fa fa-google-plus"></div>
            <a href="#">Follow me on Google+</a>
          </li>
          <li>
            <div class="fa fa-youtube"></div>
            <a href="#">Follow me on YouTube</a>
          </li>
        </ul>
      </div>
      </c:forEach>
    </div>
  </div>
  <div class="sep-1"></div>
  <div class="container">
    <div class="row">
      <div class="grid_7">
        <h3 class="head__1">From the Blog</h3>
        <time class="time-1" datetime="2014-01-01">
          24.07 <br> 2014</time><p class="offset__2">Lorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis, quis malesuada nibh odio ut velit. Proin pharetra luctus diam, a scelerisque eros convallis accumsan. Maecenas vehicula egestas  derto venenatis. Duis </p>
        Dorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor, leo magna sodales felis. <br>
        <a href="#" class="btn">more</a>
      </div>
      <div class="grid_4 preffix_1">
        <h3 class="head__1">Testimonials</h3>
        <blockquote class="bq_1">
          <img src="images/page1_img2.jpg" alt="" class="img_inner fleft noresize">
          <div class="extra_wrapper">
            <div class="bq_title">Lize Jons</div>
          </div>
          <div class="clear"></div>
          Lorem ipsum dolor sit amet, consectetur adipiscing elit. In mollis erat mattis neque facilisis, sit amet ultricies erat rutrum. Cras facilisis, nulla vel viverra auctor...
          <br>
          <a href="#" class="btn">more</a>
        </blockquote>
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

