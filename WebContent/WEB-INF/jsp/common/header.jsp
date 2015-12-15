<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <title></title>

    <link rel="icon" href="images/favicon.ico">
    <link rel="shortcut icon" href="images/favicon.ico" />
    <link rel="stylesheet" href="../../../css/style.css">
<%--    <link rel="stylesheet" href="../../../css/bootstrap.css.css">--%>
    <link rel="stylesheet" href="../../../css/jquery-ui.css"/>

    <script  type="text/javascript" src="../../../js/jquery.js"></script>
    <link rel="stylesheet" type="text/css" href="../../../css/jquery.autocomplete.css"/>
    <script type="text/javascript" src="../../../js/jquery.autocomplete.js"></script>
</head>
<body>
<!--==============================
              header
=================================-->
<header>
    <div class="header_top">
        <div class="container">
            <div class="row">
                <div class="grid_12">
                    <h1><a href="#">Photo.SHopping <br> Capturing Your Life </a></h1>
                    your photographer
                </div>
            </div>
        </div>
    </div>
    <section id="stuck_container">
        <!--==============================
                    Stuck menu
        =================================-->
        <div class="container" id="accordion">
            <div class="row">
                <div class="grid_12 ">
                    <h1 class="logo">
                        <a href="#">
                            Photo.Shopping
                        </a>
                    </h1>
                    <div class="navigation ">
                        <nav>
                            <ul class="sf-menu">
                                <li class="current"><a href="initGoods">Home</a></li>
                                <%--<li><a href="detail.jsp">About</a></li>--%>
                                <li><a href="initGoods?type=gallery">Gallery</a></li>
                                <li><a href="initGoods?type=blog">Blog</a></li>
                                <li><a href="contacts">Contacts</a></li>



                            </ul>
                            <ul    class="sf-menu  pull-right ">
                                <li>
                                    <form  method="post" action="GlobalSearch">
                                    <div class="">

                                        <input id="autocomplete" name="autocomplete" type="text" />
                                        <button type="submit">search</button>
                                    </div>
                                        </form>

                                </li>
                                <c:choose>
                                    <c:when test="${sessionScope.UVO.name==null}">
                                        <li><a href="initLogin">Login</a></li>
                                    </c:when>

                                    <c:otherwise>


                                         <li >
                                            <a href="initCart">${sessionScope.UVO.name}</a>

                                         </li>
                                                <c:if test="${sessionScope.UVO.role == 'admin'}">
                                                    <li>
                                                        <a href="initEditGoods">upload</a>
                                                    </li>
                                                </c:if>
                                        <li>
                                                    <a href="initLogout">Logout</a>
                                        </li>



                                    </c:otherwise>

                                </c:choose>

                            </ul>
                        </nav>
                        <div class="clear"></div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </section>
</header>

<script src="../../../js/jquery-ui.js"></script>
<%--<script src="http://libs.baidu.com/jquery/1.10.2/jquery.min.js"></script>--%>

<script src="../../../js/jquery-migrate-1.1.1.js"></script>
<script src="../../../js/jquery.easing.1.3.js"></script>
<script src="../../../js/script.js"></script>
<script src="../../../js/superfish.js"></script>
<script src="../../../js/jquery.equalheights.js"></script>
<script src="../../../js/jquery.mobilemenu.js"></script>
<script src="../../../js/tmStickUp.js"></script>
<%--<script src="../../../js/jquery.ui.totop.js"></script>--%>
<script src="../../../js/jquery.shuffle-images.js"></script>

<%--
  <script  src="../../../js/jquery.plugin.js"></script>--%>

<script type="text/javascript">

    function getAbsolutePath() {
        var filename = "jquery.js";
        var scripts = document.getElementsByTagName('script');
        var script = null;
        var len = scripts.length;

        for(var i = 0; i < scripts.length; i++) {
            if(scripts[i].src.indexOf(filename) != -1) {
                script = scripts[i];
                break;
            }
        }
        if(script) {
            var src = script.src;
            // 不是绝对路径需要修正
            if(src.indexOf("http://") != 0 && src.indexOf("/") != 0){
                var url = location.href;
                var index = url.indexOf("?");
                if(index != -1){
                    url = url.substring(0, index-1);
                }
                src = getPath(src,url);
            }
            return src;
        }
        return null;
    }


</script>
<script type="text/javascript">/*


 $().ready(function() {

 function format(mail) {
 return mail.name
 }

 $("#autocomplete").focus().AutoComplete("http://localhost:8080/dataauto.json", {
 multiple: false,   //是否允许搜索框追加
 //             multipleSeparator: ',',  //搜索框追加后缀格式 如：搜索值1,搜索值2

 dataType: "json", //json类型
 parse: function(data) {
 return $.map(data, function(row) {
 return {
 data: row,
 value: row.name,
 result: row.name
 }
 });
 },
 formatItem: function(item) {
 return format(item);
 }
 }).result(function(e, item) {
 window.location.href = item.to; //选中后跳转
 //$("#content").append("<p>selected " + format(item) + "</p>"); 指定一个div显示信息
 }
 );

 });


 */</script>
<script >/*
 //        var path = getAbsolutePath();
 //        alert("../"+path);
 //        var pathName=window.document.location.pathname;
 //        alert(pathName);
 //        alert(pathName.substring(0, pathName.substr(1).indexOf('/') + 1));
 $().ready(function () {

 });
 $("#autocomplete").autocomplete({
 source: "http://localhost:8080/dataauto.json",
 ajaxDataType: 'json',
 minLength:2


 });

 */
function transform(obj){
    var arr = [];
    for(var item in obj){
        arr.push(obj[item]);
    }
    return arr;
}
//var a = ["j.yao","kity","john","zhansan","boy"];
//        console.log($("#autocomplete"));
//    $.("#accordion").accordion();

//        var a = JSON.parse(readFile().responseText);
//alert(a);
var b = $.getJSON("http://10.0.44.62:8080/dataauto.json",function(data){


});
console.log(typeof  a);
var dd ;
//
//dd = transform(ab);
//console.log(typeof  dd);
//$("#autocomplete").autocomplete( {
//    source:a
//
//
//});


function test(data){
 var albums = data;
 console.log(albums);         // logs ["Italy","Hawaii"] - as expected
 console.log(typeof albums);  //logs string - as expected

 $('#autocomplete').autocomplete({
 source: albums,                //this is what I want... errors out.
 //source: ["Italy","Hawaii"] // pasted response if un-commented works fine.
 });
 }

 function ab () {
     var resp;
     $.ajax({
         dataType: 'json',
         type: 'GET',
         url: 'http://10.0.44.62:8080/dataauto.json',
         success: function (response) {
             console.log(response); // logs ["Italy","Hawaii"] -as expected
             var arrResponse = JSON.parse(response); //convert json object to array
             resp = arrResponse;
         }
     });
     return resp;
 }
//var jjj = ab();
//$('#autocomplete').autocomplete({
//    source: jjj,                //this is what I want... errors out.
//    //source: ["Italy","Hawaii"] // pasted response if un-commented works fine.
//});
//$(function() {
//    var tags = [ "c++", "java", "php", "coldfusion", "javascript", "asp", "ruby" ];
//    url = '/dataauto.json';
//    $( "#autocomplete" ).autocomplete({
//        source:url//请求后台测试
//        //source:tags//当前数据测试
//
//    });
//});
</script>
<script type="text/javascript">/*
 $("#autocomplete").autocomplete({
 source: "localhost:8080/dataauto.json",
 minLength: 1
 });

 */

    $('#autocomplete')
            .AutoComplete({
                'data': "http://10.0.44.62:8080/dataauto.json",
                'ajaxDataType': 'json',
                'onerror': function(msg) {
                    alert(msg);
                }
            });

</script>
<script type="text/javascript">/*


 var data = "Core Selectors Attributes Traversing Manipulation CSS Events Effects Ajax Utilities".split(" ");
 $("#autocomplete").autocomplete(data);

 */</script>
<script type="text/javascript">
    function readFile() {

        /*  var fso, file;
         fso = new ActiveXObject("Scripting.FileSystemObject");
         file = fso.GetFile("dataauto.json");*/
        var data = $.get("/dataauto.json", function (data, textStauts) {

            var reault = data;
            return reault;
        });

        return data;

    }


</script>
<script type="text/javascript">

</script>
</body>
</html>