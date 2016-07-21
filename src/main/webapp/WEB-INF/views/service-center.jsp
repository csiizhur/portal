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
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="alternate icon" href="${pageContext.request.contextPath}/res/img/xishanlogo.png">
<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/amazeui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css" />
</head>
<body class="commonbg_main">
	<header class="am-topbar header">
		<div class="am-container-1">
			<div class="left hw-logo">
				<img class=" logo" src="${pageContext.request.contextPath}/res/img/xishanlogo.png"></img>
			</div>
			<button
				class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
				data-am-collapse="{target: '#doc-topbar-collapse'}">
				<span class="am-sr-only">导航切换</span> <span class="am-icon-bars"></span>
			</button>

			<div class="am-collapse am-topbar-collapse right"
				id="doc-topbar-collapse">


				<div class=" am-topbar-left am-form-inline am-topbar-right"
					role="search">
					<ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
						<li><a href="${pageContext.request.contextPath}/index.html">首页</a></li>
						<li><a href="${pageContext.request.contextPath}/gyxs/index.html">关于我们</a></li>
						<li><a href="${pageContext.request.contextPath}/gnsys/index.html">功能实验室</a></li>
						<li><a href="${pageContext.request.contextPath}/xwhd/index.html">新闻动态 </a></li>
						<li class="am-dropdown hw-menu-active" data-am-dropdown><a
							class="am-dropdown-toggle" data-am-dropdown-toggle
							href="${pageContext.request.contextPath}/fw/index.html"> 服务中心 <span class="am-icon-caret-down"></span>
						</a>
							<!-- <ul class="am-dropdown-content"
								style="width: 600px; height:80px; kground-color: #f7f8fa">
								<li><div class="am-g am-g-fixed"  style="font-size:12px">
										<div class="am-u-sm-3"><a href="/fw/detail/hjdl.html">>环境毒理实验</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/dlxjc-glp.html">>毒理学检测GLP</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/dddlx">>毒代动力学实验</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/dlxjc.html">>毒理学检测</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/stdlx.html">>生态毒理学实验</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/ywaq.html">>药物安全性评价</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/yxxyj.html">>药效学研究</a></div>
										<div class="am-u-sm-3"><a href="/fw/detail/yddlx.html">>药代动力学实验</a></div>
									</div></li>
							</ul> --></li>
						<li><a href="${pageContext.request.contextPath}/lxwm/index.html">联系我们</a></li>
					</ul>
				</div>

			</div>
		</div>
	</header>
	<div class="toppic">
		<div class="am-container-1">
			<div class="toppic-title left">
				<i class="am-icon-hand-paper-o toppic-title-i"></i> <span
					class="toppic-title-span">服务中心</span>
				<p>Service Center</p>
			</div>
			<div class="right toppic-progress">
				<span><a href="${pageContext.request.contextPath}/index.html" class="w-white">首页</a></span> <i
					class=" am-icon-arrow-circle-right w-white"></i> <span><a
					href="${pageContext.request.contextPath}/fw/index.html" class="w-white">服务中心</a></span>
			</div>
		</div>
	</div>

	<div class=" am-container-1">
		<ul class="service-ul">

			<c:forEach items="${list }" var="p">
				<li class="am-u-lg-12 am-u-md-12 am-u-sm-12">
					<div class="am-u-lg-8 am-u-md-8 am-u-sm-12 service-content">
						<h4 class="w-blue">
							<a class="w-blue" href="service-item/show.html?parentId=${p.id }">${p.serviceName }</a>
						</h4>
						<p>${p.serviceContent }</p>
					</div>
					<div class="am-u-lg-4 am-u-md-4 am-u-sm-12 service-img">
						<img src="${p.servicePic }" />
					</div>
				</li>
			</c:forEach>

		</ul>
	</div>






	<footer class="footer ">

		<ul>

			<li class="am-u-lg-4 am-u-md-4 am-u-sm-12 part-5-li2">
				<div class="part-5-title">联系我们</div>
				<div class="part-5-words2">
					<span>地址:苏州市吴中区吴中大道1336号</span> <span>电话:www.suzhouresearch.com</span>
					<span>传真:0512-65982476</span> <span>邮箱:marketing@szxszk.com</span>
					<span><i class="am-icon-phone"></i><em>0512-65982476（市场部）</em></span>
				</div>
			</li>
			<li class="am-u-lg-4 am-u-md-4 am-u-sm-12 ">
				<div class="part-5-title">相关链接</div>
				<div class="part-5-words2">
					<ul class="part-5-words2-ul">
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="solutions.html">解决方案</a></li>
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="product-show.html">产品展示</a></li>
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="customer-case.html">客户案例</a></li>
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="service-center.html">服务中心</a></li>
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="about-us.html">关于我们</a></li>
						<li class="am-u-lg-4 am-u-md-6 am-u-sm-4"><a
							href="recruit.html">招贤纳士</a></li>
						<div class="clear"></div>
					</ul>
				</div>
			</li>
			<div class="clear"></div>
		</ul>

	</footer>

	<DIV class="bot">
		<div class="bot1000">
			<span> 苏州西山中科系统股份有限公司 版权所有 任何单位及个人未经许可不可擅自使用</span> <br /> <span>©
				SACI 1999-2016 苏ICP备12008164号</span>&nbsp;
			
		</div>
	</DIV>
</body>
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
