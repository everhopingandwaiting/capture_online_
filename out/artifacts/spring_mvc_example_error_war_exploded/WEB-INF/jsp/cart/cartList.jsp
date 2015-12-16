<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp" %>
<!DOCTYPE html>
<html>
<%--
  Created by IntelliJ IDEA.
  User: john
  Date: 15-12-6
  Time: 下午3:06
  To change this template use File | Settings | File Templates.
--%>
<head>
  <title>Blog</title>
  <meta charset="utf-8">
  <meta name = "format-detection" content = "telephone=no" />
<%--  <link rel="icon" href="images/favicon.ico">
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
  <script src="js/jquery.ui.totop.js"></script>--%>
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
 <!-- <script src="js/html5shiv.js"></script>-->
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
                <tr>
                    <th style="text-align: center"> <input id="selectAllButton" type="checkbox"/> </th>
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
                  <td><div class="fa fa-dollar">${cartForm.goodsPrice}</div> </td>

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
         <%-- <li><span></span><a href="account?guestId=${sessionScope.UVO.userId}"><div
                  class="fa fa-chevron-right"></div>pay  all goods </a></li>
            <li>--%>
            <li> <span></span><a id="pay" style="cursor: pointer"><div
                    class="fa fa-chevron-right"></div>pay  all goods way1</a>
            </li>
             <li> <span></span><a id="pay1" style="cursor: pointer"><div
                     class="fa fa-chevron-right"></div>pay  all goods  way2</a>
             </li>

             <li>
               <button type="submit" class="btn btn-default" id="deleteIDS" name="deleteIDS">
               delete  select goods </button>
            </li>
        </ul>
      </div>
    </form>
        <div class="row ">
            <label class="text_amount">
                <span> PAID AMOUNT :</span>
                <div class="fa fa-dollar"></div>
                <input id="amount" type="text" readonly="readonly" value="${order.amount}"/>
            </label>
            <input hidden="hidden" id="order_no" value="${order.uuid}" type="text"/>
        <span class="iphone"><img src="../../../images/big3.jpg" width="100%" height="auto"></span>

        </div>
    </div>
  </div>
</section>
<!--==============================
              footer
=================================-->
<jsp:include page="../common/footer.jsp"/>
<a href="#" id="toTop" class="fa fa-chevron-up"></a>
<script type="text/javascript" src="https://one.pingxx.com/lib/pingpp_one.js"></script>
<script >

    (function(){
        function randomString(len) {
            len = len || 32;
            var $chars = 'ABCDEFGHJKMNPQRSTWXYZabcdefhijkmnprstwxyz2345678';    /****默认去掉了容易混淆的字符oOLl,9gq,Vv,Uu,I1****/
            var maxPos = $chars.length;
            var pwd = '';
            for (i = 0; i < len; i++) {
                pwd += $chars.charAt(Math.floor(Math.random() * maxPos));
            }
            return pwd;
        }
        document.getElementById('pay').addEventListener('click',function(e){
            e.preventDefault();
            e.stopPropagation();
            var order_no = "121514"+randomString(14);
            pingpp_one.init({
                app_id:'app_OuzfnLX9y9e5rjzX',
                order_no:parseInt( $('#order_no').val()),
                amount:$('#amount').val(),
                channel:["wx_pub","alipay_wap","jdpay_wap","upacp_wap","bfb_wap","yeepay_wap"],
                charge_url:"http://10.0.44.62:8080/account",
               /* open_id:'',
                dataType:'json',
                type:"POST",
                useDefaultXhrHeader: false,
                contentType:"application/json; charset=utf-8"*/
            },function(res){
                if(res.status){
                    location.href="http://10.0.44.62:8080/initGoods";
                }
                else{
                    alert(res.msg);
                }
            });
        });
    })();
</script>
<script type="text/javascript">
    //        var  order_no=document.getElementById("order_no").va
    var order_no = $("#order_no").val();
    document.addEventListener('pingpp_one_ready',function(){
        document.getElementById('pay1').addEventListener('click',function(){
            pingpp_one.init({
                app_id:'app_OuzfnLX9y9e5rjzX',
                order_no: $('#order_no').val(),
                amount:parseInt($('#amount').val()),                                         //订单价格，单位：人民币 分
                // 壹收款页面上需要展示的渠道，数组，数组顺序即页面展示出的渠道的顺序
                // upmp_wap 渠道在微信内部无法使用，若用户未安装银联手机支付控件，则无法调起支付
                channel:['alipay_wap','wx_pub','upacp_wap','yeepay_wap','jdpay_wap','bfb_wap'],
                charge_url: '/account', //商户服务端创建订单的 url
//                open_id:'',
//            charge_param:{a:john,b:SUSE},                  //(可选，使用微信公众号支付时必须传入)

//                dataType:'json',
//                type:"POST",
//                useDefaultXhrHeader: false,
//                contentType:"application/json; charset=utf-8"
                   debug:true //(可选，debug 模式下会将 charge_url 的返回结果透传回来)
            },function(res){
                //debug 模式下获取 charge_url 的返回结果
                if(res.debug&&res.chargeUrlOutput){
                    console.log(res.chargeUrlOutput);
                }
                if(!res.status){
                    //处理错误
                    alert(res.msg);
                }
                else{
                    //debug 模式下调用 charge_url 后会暂停，可以调用 pingpp_one.resume 方法继续执行
                    if(res.debug&&!res.wxSuccess){
                        if(confirm('当前为 debug 模式，是否继续支付？')){
                            pingpp_one.resume();
                        }
                    }
                    //若微信公众号渠道需要使用壹收款的支付成功页面，则在这里进行成功回调，
                    //调用 pingpp_one.success 方法，你也可以自己定义回调函数
                    //其他渠道的处理方法请见第 2 节
                    else pingpp_one.success(function(res){
                        if(!res.status){
                            alert(res.msg);
                        }
                    },function(){
                        //这里处理支付成功页面点击“继续购物”按钮触发的方法，
                        //例如：若你需要点击“继续购物”按钮跳转到你的购买页，
                        //则在该方法内写入 window.location.href = "你的购买页面 url"
                        window.location.href = 'http://10.0.44.62:8080/initGoods';
                    });
                }
            });
        });
    });

</script>

</body>
</html>

