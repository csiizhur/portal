<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>功能实验室</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="/res/img/hengwang-1.png" href="${pageContext.request.contextPath}/res/img/xishanlogo.png">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/amazeui.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css"/>
  <link rel="stylesheet" href="${pageContext.request.contextPath}/res/iconfont/iconfont.css"/>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" src="${pageContext.request.contextPath}/res/img/xishanlogo.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
      <li><a href="${pageContext.request.contextPath}/gyxs/index.html">关于我们</a></li>
      <li class="hw-menu-active"><a href="${pageContext.request.contextPath}/gnsys/index.html">功能实验室</a></li>
      <li><a href="${pageContext.request.contextPath}/xwhd/index.html">新闻动态 </a></li>
      <li><a href="${pageContext.request.contextPath}/fw/index.html">服务中心 </a></li>
      <li><a href="${pageContext.request.contextPath}/lxwm/index.html">联系我们</a></li>
    </ul>
    </div>

  </div>
  </div>
</header>
<div class="toppic">
	<div class="am-container-1">
	 <div class="toppic-title left">
			<i class="am-icon-lightbulb-o toppic-title-i"></i>
			<span class="toppic-title-span">功能实验室</span>
			<p>Solutions</p>
		</div>
		<div class="right toppic-progress">
			<span><a href="javascript:history.go(-1);" class="w-white">返回</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="${pageContext.request.contextPath}/index.html" class="w-white">首页</a></span>
		</div>
	</div>
</div>

		

  
   <div data-am-widget="tabs"class="am-tabs am-tabs-d2 ">

      <ul class="am-tabs-nav am-cf solutions-tabs-ul ">
         <li class="am-active solutions-tabs-ul-li1" ><a href="[data-tab-panel-0]" ><i class=" iconfont my-add-style">&#xe603;</i><span>实验动物房</span></a></li>
         <li class="solutions-tabs-ul-li2"><a href="[data-tab-panel-1]"><i class=" iconfont my-add-style">&#xe602;</i><span>组织病理室</span></a></li>
         <li class="solutions-tabs-ul-li3"><a href="[data-tab-panel-2]" ><i class="iconfont my-add-style">&#xe608;</i><span>临床检验室</span></a></li>
         <li class="solutions-tabs-ul-li4"><a href="[data-tab-panel-3]"><i class=" iconfont my-add-style">&#xe606;</i><span>一般毒理室</span></a></li>
         <li class="solutions-tabs-ul-li1"><a href="[data-tab-panel-4]" ><i class="iconfont my-add-style">&#xe609;</i><span>分析室</span></a></li>
         <li class="solutions-tabs-ul-li2"><a href="[data-tab-panel-5]"><i class=" iconfont my-add-style">&#xe604;</i><span>细胞生物室</span></a></li>
         <li class="solutions-tabs-ul-li3"><a href="[data-tab-panel-6]" ><i class="iconfont my-add-style">&#xe601;</i><span>供试品室</span></a></li>
         <li class="solutions-tabs-ul-li4"><a href="[data-tab-panel-7]"><i class="iconfont my-add-style">&#xe607;</i><span>档案室</span></a></li>
         <li class="solutions-tabs-ul-li1"><a href="[data-tab-panel-8]" ><i class="iconfont my-add-style">&#xe60a;</i><span>环境毒理室</span></a></li>
         <li class="solutions-tabs-ul-li2"><a href="[data-tab-panel-9]"><i class="iconfont my-add-style">&#xe600;</i><span>信息中心</span></a></li>
         <li class="solutions-tabs-ul-li3"><a href="[data-tab-panel-10]" ><i class="iconfont my-add-style">&#xe605;</i><span>质量保证部</span></a></li>
      </ul>

      <div class="am-tabs-bd solutions-tabs-content ">
          <div data-tab-panel-0 class="am-tab-panel am-active">
          	<ul class=" solutions-content-ul">
          		<c:forEach items="${l1 }" var="l1">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l1.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l1.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l1.laboratoryName }</h5>
            			<p>${l1.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            	<div class="clear"></div>
            </ul>
            
          </div>
          <div data-tab-panel-1 class="am-tab-panel ">
             <ul class="am-container-1 solutions-content-ul">
             	<c:forEach items="${l2 }" var="l2">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l2.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l2.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l2.laboratoryName }</h5>
            			<p>${l2.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            	</a>
            </ul>
          </div>
          <div data-tab-panel-2 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l3 }" var="l3">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l3.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l3.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l3.laboratoryName }</h5>
            			<p>${l3.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-3 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach var="l4" items="${l4 }">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l4.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l4.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l4.laboratoryName }</h5>
            			<p>${l4.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-4 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l5 }" var="l5">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l5.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l5.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l5.laboratoryName }</h5>
            			<p>${l5.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-5 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l6 }" var="l6">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l6.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l6.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l6.laboratoryName }</h5>
            			<p>${l6.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-6 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l7 }" var="l7">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l7.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l7.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l7.laboratoryName }</h5>
            			<p>${l7.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-7 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l8 }" var="l8">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l8.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l8.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l8.laboratoryName }</h5>
            			<p>${l8.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-8 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l9 }" var="l9">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l9.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l9.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l9.laboratoryName }</h5>
            			<p>${l9.laboratoryInfo}</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-9 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l10 }" var="l10">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l10.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l10.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l10.laboratoryName }</h5>
            			<p>${l10.laboratoryInfo }</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
          <div data-tab-panel-10 class="am-tab-panel ">
            <ul class="am-container-1 solutions-content-ul">
            	<c:forEach items="${l11 }" var="l11">
            	<li class="am-u-sm-12 am-u-md-6 am-u-lg-12">
            		<a href="gnsysInfo.html?laboratoryId=${l11.id }">
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-3 solution-tabs-img">
            			<img src="${l11.laboratoryPic }" />
            		</div>
            		<div class="am-u-sm-12 am-u-md-12 am-u-lg-9 solution-tabs-words">
            			<h5>${l11.laboratoryName }</h5>
            			<p>${l11.laboratoryInfo}</p>
            		</div>
            		</a>
            	</li>
            	</c:forEach>
            </ul>
          </div>
      </div>
   
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

<DIV class="bot">
<div class="bot1000">
<span> 苏州西山中科系统股份有限公司  版权所有  任何单位及个人未经许可不可擅自使用</span>
<br/>
<span>© SAC 1999-2016  苏ICP备12008164号</span>&nbsp;<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255665239'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1255665239%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
</div>
</DIV>
</body>
</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="/res/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/res/js/amazeui.min.js"></script>

</html>
