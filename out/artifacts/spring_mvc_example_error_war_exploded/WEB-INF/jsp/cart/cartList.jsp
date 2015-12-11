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
  <title>Blog</title>
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
<section id="content"><div class="ic"></div>
  <div class="container">
    <div class="row">
        <form method="get" action="deleteSelected">
      <div class="grid_10">
        <h2>Cart Information</h2>
        <div>

            <div class="blog">
              <table>
                <tbody>
                <tr><th><input id="selectAllButton" type="checkbox"/></th>
                  <th style="text-align:center;">pic</th>
                  <th style="text-align:center;">cart_number</th>
                  <th style="text-align:center;">name</th>
                  <th style="text-align:center;">date</th>
                  <th style="text-align:center;">price</th>
                  <th style="text-align:center;">delete</th>
                </tr>
                <c:forEach items="${list}" var="cartForm" varStatus="status">
                <tr>
                    <td > <input name="id" type="checkbox" value="${cartForm.id}" /> </td>
                  <td> <img src="${cartForm.goodsPicture}" width="100" height="50"></td>
                  <td> ${cartForm.goodsUUID}</td>
                  <td> ${cartForm.goodsName}</td>

                  <td><div class="fa fa-bookmark">${cartForm.goodsDate} </div>  </td>
                  <td colspan="2"><div class="fa fa-dollar">${cartForm.goodsPrice}</div> </td>

                  <td>
                    <a href="delCart?id=${cartForm.id}"><div class="fa fa-undo">
                      <strong style="font-size: x-large">delete</strong></div>
                    </a>
                  </td>

                </tr>
                    </c:forEach>
                </tbody>
              </table>
            </div>

        </div>

      </div>
      <div class="grid_2">
        <h2>cart list </h2>
        <ul class="list-1">
          <li><span></span><a href="account?guestId=${sessionScope.UVO.userId}"><div
                  class="fa fa-chevron-right"></div>pay  all goods </a></li>
            <li>
               <input type="submit" class="btn btn-default" id="deleteIDS" name="deleteIDS">
               delete  select goods </input>
            </li>
        </ul>
      </div>
    </form>
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

