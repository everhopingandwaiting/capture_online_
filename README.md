
#spring-mvc-example

---------
#TODO

-----
design  the  db



1. Bolg  db
* id
* category
* date
* name
* tag
* comment
* view
* information
* pic
* price

2.  guest db
* id
* name
* phone
* email
* password
3. cart db
* id
* guest_id
* date
* uuid
* goods_id
4.  gallery db
* id
* date
* name
* pic
* view
* info

遇到 问题如下：
====
1. 首页 index 页面

 图片轮换过程不能 触发，ChangeURL() 函数，导致不能查看图片详情

 （blog 详情查看ok）

 2. 在 header 页面 ， 的    name="searchValue"   <input id="searchValue" name="searchValue" type="text" />

  我想实现 类似百度的那种 搜索提示框，  使用了jquery.autocomplete.js
  插件，不过有问题 ，

 我从数据库中取得 所有goods的用户name ，然后存储到工程发布根目录的
 dataauto.json文件中，然后从前台js 代码中取得其中值，用于
 autocomplete（） 方法的 source或 data 属性，但是
 取得的值不会从中得到其 JSON 部分的数据。
 其使用过的 尝试方法 见 header 页面的 script 部分。
------------
```
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
```
```
<form  method="post" action="GlobalSearch">
                                       <div class="">

                                           <input id="searchValue" name="searchValue" type="text" />
                                           <button type="submit">search</button>
                                       </div>
                                           </form>


```

