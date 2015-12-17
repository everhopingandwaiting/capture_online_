<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>

<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>MiniCheckout</title>
    <link rel="stylesheet" type="text/css" href="../../../css/pinus.css">
</head>
<body>

    <div class="h_content">
        <jsp:include page="../common/header.jsp"/>
    </div>
    <section id="content">
        <div class="ic"></div>
        <div class="container">
            <div class="row">
                <div class="content2">
                    <div class="app">
                        <span class="iphone"><img src="../../../images/big3.jpg" width="100%" height="auto"></span>
                        <label class="text_amount">
                            PAID AMOUNT : <input id="amount" type="text"  readonly="readonly"  placeholder="PAID AMOUNT :"
                                                 value="${order.amount}"/>
                        </label>
                     <input hidden="hidden" id="order_no" value="${order.uuid}" type="text"/>
                        <div class="ch">
                            <span class="up" id="pay">一键支付</span>
                            <span class="up" onclick="app_pay('wx')">微 信</span>
                            <span class="up" onclick="app_pay('alipay')">支付宝</span>
                            <span class="up" onclick="app_pay('upacp')">银联(upacp)</span>
                            <span class="up" onclick="app_pay('bfb')">百度钱包</span>
                            <span class="up" onclick="wap_pay('upacp_wap')">银联 WAP</span>
                            <span class="up" onclick="wap_pay('alipay_wap')">支付宝 WAP</span>
                            <span class="up" onclick="wap_pay('bfb_wap')">百度钱包 WAP</span>
                            <span class="up" onclick="wap_pay('jdpay_wap')">京东支付 WAP</span>
                            <span class="up" onclick="wap_pay('yeepay_wap')">易宝支付 WAP</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <jsp:include page="../common/footer.jsp"></jsp:include>

    <script type="text/javascript" src="https://one.pingxx.com/lib/pingpp_one.js"></script>
    <script type="text/javascript">/*
//        var  order_no=document.getElementById("order_no").va
var order_no = $("#order_no").val();
document.addEventListener('pingpp_one_ready',function(){
    document.getElementById('pay').addEventListener('click',function(){
        pingpp_one.init({
            app_id:'app_OuzfnLX9y9e5rjzX',
            order_no: $('#order_no').val(),
            amount:$('#amount').val(),                                         //订单价格，单位：人民币 分
            // 壹收款页面上需要展示的渠道，数组，数组顺序即页面展示出的渠道的顺序
            // upmp_wap 渠道在微信内部无法使用，若用户未安装银联手机支付控件，则无法调起支付
            channel:['alipay_wap','wx_pub','upacp_wap','yeepay_wap','jdpay_wap','bfb_wap'],
            charge_url:'http://10.0.44.62:8080/account',  //商户服务端创建订单的 url
//            charge_param:{a:john,b:SUSE},                  //(可选，使用微信公众号支付时必须传入)
            debug:true                                   //(可选，debug 模式下会将 charge_url 的返回结果透传回来)
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
                    window.location.href='http://10.0.44.62:8080/initGoods'
                });
            }
        });
    });
});

    */</script>

    <%--<script type="text/javascript">
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
--%>

    <script src="../../../js/pingpp.js" type="text/javascript"></script>
<script type="text/javascript">
    function wap_pay(channel) {
        var amount = document.getElementById('amount').value * 100;

        var pay_url = "/account";

        var xhr = new XMLHttpRequest();
        xhr.open("POST", pay_url, true);
        xhr.setRequestHeader("Content-type", "application/json");
        xhr.send(JSON.stringify({
            channel: channel,
            amount: amount
        }));

        xhr.onreadystatechange = function () {
            if (xhr.readyState == 4 && xhr.status == 200) {
                console.log(xhr.responseText);
                pingpp.createPayment(xhr.responseText, function(result, err) {
                    console.log(result);
                    console.log(err);
                });
            }
        }
    }

    // app_pay 需要配合 example-webview 的 iOS 或者 Android 项目使用。
    function app_pay(channel) {
        var amount = document.getElementById('amount').value * 100;
        if (typeof pingpp_ios_sdk !== 'undefined') {
            pingpp_ios_sdk.callPay(channel, amount);
        } else if (typeof pingpp_android_sdk !== 'undefined') {
            pingpp_android_sdk.callPay(channel, amount);
        }
    }
</script>
</body>
</html>