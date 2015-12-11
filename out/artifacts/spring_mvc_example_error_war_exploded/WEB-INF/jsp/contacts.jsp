<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/jsp/common/include.jsp"%>
<!DOCTYPE html>
<html >
<head>
<title>Contacts</title>
<meta charset="utf-8">
<meta name = "format-detection" content = "telephone=no" />
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico" />
<link rel="stylesheet" href="css/contact-form.css">
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
<script src="js/TMForm.js"></script>
<script src="js/modal.js"></script>

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
<section id="content"><div class="ic">More Website Templates @ TemplateMonster.com - August11, 2014!</div>
  <div class="container">
    <div class="row">
      <div class="grid_12">
        <h2>Contacts</h2>
        <div class="map">
          <figure class="">
            <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d24214.807650104907!2d-73.94846048422478!3d40.65521573400813!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sus!4v1395650655094" style="border:0"></iframe>
          </figure>
        </div>
      </div>
      <div class="grid_5">
        <h2>Contact Info</h2>
        <div class="text1 tx__1">Lorem ipsum dolor sit amet, consecteturpiscinger elit um dolor sit amet, consecteturpiscing. 
</div>
        <p>All <a href="http://www.templatemonster.com/ " rel="nofollow" class="color1"><strong>premium website themes</strong></a> go with 24/7 support.</p>
        <p>If you have any questions regarding customization of <a href="http://blog.templatemonster.com/free-website-templates/" rel="nofollow" class="color1"><strong>freebies</strong></a>, ask guys from <a href="http://www.templatetuning.com/" rel="nofollow" class="color1"><strong>TemplateTuning</strong></a> to help you.</p>
        The Company Name Inc. <br>
        9870 St Vincent Place,<br>
        Glasgow, DC 45 Fr 45.<br>
        Telephone: +1 800 603 6035<br>
        FAX: +1 800 889 9898<br>
        E-mail: <a href="#">mail@demolink.org</a>
      </div>
      <div class="grid_6 preffix_1">
        <h2>Contact  Form</h2>
              <form id="contact-form">
                  <div class="contact-form-loader"></div>
                  <fieldset>
                    <label class="name">
                      <input type="text" name="name" placeholder="Name:" value="" data-constraints="@Required @JustLetters"  />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid name.</span>
                    </label>
                   
                    <label class="email">
                      <input type="text" name="email" placeholder="E-mail:" value=""
                             data-constraints="@Required @Email @" />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid email.</span>
                    </label>
                    <label class="phone">
                      <input type="text" name="phone" placeholder="Phone:" value=""
                             data-constraints="@Required @JustNumbers " />
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*This is not a valid phone.</span>
                    </label>
                   
                    <label class="message">
                      <textarea name="message" placeholder="Message:"
                                data-constraints='@Required   @Length(min=20,max=999999)'></textarea>
                      <span class="empty-message">*This field is required.</span>
                      <span class="error-message">*The message is too short.</span>
                    </label>
                    <div class="ta__right">
                      <a href="#" class="btn" data-type="reset">clear</a>
                      <a href="#" class="btn" data-type="submit">send</a>
                    </div>
                  </fieldset> MySQL - capture_online@localhost
                  <div class="modal fade response-message">
                    <div class="modal-dialog">
                      <div class="modal-content">
                        <div class="modal-header">
                          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                          <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                          You message has been sent! We will be in touch soon.
                        </div>      
                      </div>
                    </div>
                  </div>
                </form>   
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

