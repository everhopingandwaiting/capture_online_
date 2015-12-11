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
  <title>UPLOAD INFORMATION</title>
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

    <script type="application/x-javascript">


        addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }


    </script>
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="./js/move-top.js"> </script>
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
    <%--<link
            href='http://fonts.googleapis.com/css?family=Open+Sans+Condensed:300,300italic,700|Roboto:500,100,300,700,900,100italic,400'
            rel='stylesheet' type='text/css'>--%>
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

        function fr(source) {
            var file = source.files[0];
            if (window.FileReader) {

                var r = new FileReader();
                r.onloadend = function(e) {
                    var t = e.target.result;
                    document.getElementById("i1").src = t;
                    document.getElementById("i1").style.display='inline';
                    //document.getElementById("d1").innerHTML=t;
                };
                r.onerror = function(e) {
                };
                r.readAsDataURL(file);
            } else {
                document.writeln("你的浏览器不支持");
            }

        }
    </script>
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
    <div class="row form-group grid_6 preffix_1">

        <form:form cssClass="form-group" action="uploadGoods" method="POST" commandName="goodsForm"
                   enctype="multipart/form-data">
            <div class="contact-form-loader"></div>
            <br />  <br />  <br />  <br />
           <div class="row form-control"> name：<form:input cssClass="form-control" path="name"
                                            />
            <br />

           </div>
            <br />
          <div class="row form-control">
            type：<form:select path="type" >
            <form:option value="gallery">gallery</form:option>
            <form:option value="blog">blog</form:option>
        </form:select>
              </div>
            <br />
        <div class="form-control row">
            category:  <form:input cssClass="form-control" path="category"></form:input>
        </div>
            <br />
        <div class="row form-control">
            tag：<form:input path="tag" />
            <br />
            </div>

            <br />
            <div class="row form-control">
            picture：<input type="file" id="picture" name="file" onchange="fr(this)"
            style="display: inline;" />
            <img id="i1" width="300" height="200" style="display:none;"/>
            <br />

            </div>
            <br />

            <div class="row form-control">
            information：<form:textarea path="information"
                              />
            <br />

                </div>
            <br />
            <div  class="row form-control">
            price：<form:input path="price"  />
            <br />
            <br />
                </div>
            <div class="row form-control">
            <input class="btn btn-default" type="submit" value="submit" />
                </div>


        </form:form>


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

