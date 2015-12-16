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
<link  href="../../css/smohan.pop&share.css" type="text/css" rel="stylesheet"/>

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
//alert(x.name);
        var a = document.getElementsByName("gridID");
        for( var i=0;i< a.length;i++) {
            a[i].href = "galleryDetail?goodsId=12Detail?goodsId="+ x.name;
        }

    }
</script>
<!--==============================
              header
=================================-->
<jsp:include page="common/header.jsp"/>
<!--=====================
          Content
======================-->
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h2 class="ta__center">Recent  Photos</h2>
        <div class="shuffle-group">
          <div class="row">
            <div class="grid_8">

              <div data-si-mousemove-trigger="100"  class="shuffle-me ">
                  <a  name="gridID" href="galleryDetail?goodsId=13" class="info" target="_parent"></a>
                <div class="images">
                  <c:forEach items="${grid0}" var="gard" varStatus="status">
                  <img   id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt=""
                         onmousemove="changeURL(this)"/>

                    </c:forEach>
                </div>
              </div>
            </div>
            <div class="grid_4">
              <div data-si-mousemove-trigger="100" class="shuffle-me ">
                <a  name="gridID" href="galleryDetail?goodsId=14" class="info" target="_parent"></a>
                <div class="images">

                  <c:forEach items="${grid1}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onmousemove="changeURL(this)"/>

                  </c:forEach>


                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me ">
                <a  name="gridID" href="galleryDetail?goodsId=15" class="info" target="_parent"></a>
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
                <a  name="gridID" href="galleryDetail?goodsId=9" class="info" target="_parent"></a>
                <div class="images">
                  <c:forEach items="${grid3}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onmousemove="changeURL(this)">

                  </c:forEach>

                </div>
              </div>
              <div data-si-mousemove-trigger="100" class="shuffle-me">
                <a  name="gridID" href="galleryDetail?goodsId=10" class="info" target="_parent"></a>

                <div class="images">
                  <c:forEach items="${grid4}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt=""   onmousemove="changeURL(this)">

                  </c:forEach>


                </div>
              </div>
            </div>
            <div class="grid_8">
              <div data-si-mousemove-trigger="100"  class="shuffle-me">
                <a  name="gridID" href="galleryDetail?goodsId=12" class="info" target="_parent"></a>

                <div class="images">
                  <c:forEach items="${grid5}" var="gard" varStatus="status">
                    <img  id="${gard.id}" src="${gard.picture}" name="${gard.id}" alt="" onmousemove="changeURL(this)">

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
          <div class="demo">
              <a href="javascript:void(0)" class="share" style=" width:100px; text-align:center; line-height:30px; height:30px; margin:10px auto;font-size:16px; display:block; text-decoration:none; padding:10px; border:1px dashed #cfcfcf;">分享DEMO</a>

              <p>
                  弹出层单独使用说明：<br/>
                  IE9以下无法圆角<br/>IE7以下未做测试
              </p>
              <p>
                  $(document).ready(function(){ <br/>
                  $('.share').SmohanPopLayer({  <br/>
                  Shade : true, //是否显示遮罩层 <br/>
                  Event:'click', //触发事件 <br/>
                  Content : 'Share', //内容DIV ID <br/>
                  Title : '分享Smohan到各大社区' //显示标题 <br/>
                  }); <br/>
                  });
              </p>
          </div>
        <ul class="socials">
          <li>
            <div  class="fa fa-facebook"></div>
            <a   style="cursor: pointer;" onclick="share()">Be a fan on QQ</a>
          </li>
          <li>
              <div class="">
            <div  class="fa fa-twitter"></div>
            <a   class="share" id="share" href="javascript:void(0)" style="cursor: pointer;">Follow me on ALLP</a>
                  <p  hidden="hidden">
                      $(document).ready(function(){ <br/>
                      $('.share').SmohanPopLayer({  <br/>
                      Shade : true, //是否显示遮罩层 <br/>
                      Event:'click', //触发事件 <br/>
                      Content : 'Share', //内容DIV ID <br/>
                      Title : '分享Smohan到各大社区' //显示标题 <br/>
                      }); <br/>
                      });
                  </p>

              </div>
          </li>
          <li>
            <div class="fa fa-google-plus"></div>
            <a style="cursor: pointer;" onclick="share()">Follow me on Google+</a>
          </li>
          <li>
            <div class="fa fa-youtube"></div>
            <a style="cursor: pointer;" onclick="share()">Follow me on YouTube</a>
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
<script src="../../js/jquery.js"></script>
<script type="text/javascript" src="../../js/smohan.pop&share.js"></script>
<script type="text/javascript">
    function share() {
        (function () {
            var p = {
                url: location.href,
                showcount: '1',
                desc: 'do you  like this ?',
                summary: 'https://github.com/everhopingandwaiting/capture_online',
                title: 'create by john',
                site: 'https://github.com/everhopingandwaiting/capture_online',
                pics: 'https://github.com/everhopingandwaiting/capture_online',
                style: '101',
                width: 199,
                height: 30
            };
            var s = [];
            for (var i in p) {
                s.push(i + '=' + encodeURIComponent(p[i] || ''));
            }
            document.write(['<a version="1.0" class="qzOpenerDiv" href="http://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?', s.join('&'), '" target="_parent">分享</a>'].join(''));
        })();
    }
</script>

</body>
</html>

