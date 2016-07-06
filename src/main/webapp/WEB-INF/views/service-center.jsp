<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>服务中心</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="img/hengwang-1.png" href="/res/img/xishanlogo.png">
  <link rel="stylesheet" href="/res/css/amazeui.css"/>
  <link rel="stylesheet" href="/res/css/style.css"/>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" src="/res/img/xishanlogo.png"></img>
		  <img class="word" src="/res/img/xishanlogo.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><a href="/index.htm">首页</a></li>
      <li><a href="/gnsys/index.htm">功能实验室</a></li>
      <li class="hw-menu-active"><a href="/fw/index.htm">服务中心 </a></li>
      <li><a href="/xwhd/index.htm">新闻动态 </a></li>
      <li><a href="/gyxs/index.htm">关于我们</a></li>
      <li><a href="/lxwm/index.htm">联系我们</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="toppic">
	 <div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-hand-paper-o toppic-title-i"></i>
			<span class="toppic-title-span">服务中心</span>
			<p>Service Center</p>
		</div>
		<div class="right toppic-progress">
			<span><a href="index.html" class="w-white">首页</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="service-center.html" class="w-white">服务中心</a></span>
		</div>
	</div>
</div>

<div class=" am-container-1">
	<div class="service-center">
	    <ul class="service-ul">

	    	<c:forEach items="${list }" var="p">
	    	<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
	    		<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
	    			<h4 class="w-blue"><a class="w-blue" href="service-item/show.htm?parentId=${p.id }">${p.serviceName }</a></h4>
	    			<p>${p.serviceContent }</p>
	    		</div>
	    		<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
	    		   <img src="${p.servicePic }" />	
	    		</div>
	    	</li>
	    	</c:forEach>
	    	<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
	    		<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
	    			<h4 class="w-blue">企业网站开发</h4>
	    			<p>作为企业形象的门面，一个好的企业网站为客户的产品。武汉恒望不断致力于移动互联网产品的开发服务，更注重企业网站。
                                  我们不但致力于高品质App的开发，而且在微信公众平台二次开发方面拥有优秀开发人才和市场推广经验。迄今为止，我们已经为数十家企业
                                  开发了微信公众平台帐号。客户可以结合微信公众平台，更好得去运营App平台和网站，不但提高了用户的数量，而且更好得拉近了与用户的距离。</p>
	    		</div>
	    		<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
	    		   <img src="/res/img/website.png" />	
	    		</div>
	    	</li>
	    	
	    	
	    </ul>
	</div>
</div>






<footer class="footer ">
	
<ul>
        
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 part-5-li2">
            <div class="part-5-title">联系我们</div>
            <div class="part-5-words2">
                <span>地址:苏州市吴中区吴中大道1336号</span>
                <span>电话:www.suzhouresearch.com</span>
                <span>传真:0512-65982476</span>
                <span>邮箱:marketing@szxszk.com</span>
                <span><i class="am-icon-phone"></i><em >0512-65982476（市场部）</em></span>
            </div>
        </li>
        <li class="am-u-lg-4 am-u-md-4 am-u-sm-12 ">
            <div class="part-5-title">相关链接</div>
            <div class="part-5-words2">
                <ul class="part-5-words2-ul">
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="solutions.html">解决方案</a></li>
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="product-show.html">产品展示</a></li>
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="customer-case.html">客户案例</a></li>
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="service-center.html">服务中心</a></li>
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="about-us.html">关于我们</a></li>
                    <li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a href="recruit.html">招贤纳士</a></li>
                    <div class="clear"></div>
                </ul>
            </div>
        </li>
        <div class="clear"></div>
    </ul>
   
</footer>


</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->
<script src="${pageContext.request.contextPath}/res/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/amazeui.min.js"></script>
<!--[if (gte IE 9)|!(IE)]><!-->

</html>
