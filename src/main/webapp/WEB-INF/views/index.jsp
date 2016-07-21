<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>苏州西山中科药物研究有限公司</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/amazeui.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/res/css/style.css" />
<!-- <link href="/res/css/jquery.bxslider.css" rel="stylesheet" /> -->
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
						<li class="hw-menu-active"><a href="${pageContext.request.contextPath}/index.html">首页</a></li>	
						<li><a href="${pageContext.request.contextPath}/gyxs/index.html">关于我们</a></li>
						<li><a href="${pageContext.request.contextPath}/gnsys/index.html">功能实验室 </a></li>
						<li><a href="${pageContext.request.contextPath}/xwhd/index.html">新闻活动 </a></li>
						<li><a href="${pageContext.request.contextPath}/fw/index.html">服务中心 </a></li>
						<li><a href="${pageContext.request.contextPath}/lxwm/index.html">联系方式 </a></li>
					</ul>
				</div>

			</div>
		</div>
	</header>
	<div class="rollpic">
		<div data-am-widget="slider" class="am-slider am-slider-default"
			data-am-slider='{}'>
			<ul class="am-slides">
				<li><img src="${pageContext.request.contextPath}/image/photo.html?imgName=1468565483907.png" /></li>
				<li><img src="${pageContext.request.contextPath}/image/photo.html?imgName=1468565483907.png" /></li>
				<li><img src="${pageContext.request.contextPath}/image/photo.html?imgName=1468565483907.png" /></li>
			</ul>
		</div>
	</div>

	<div class="content">
		
		<div class="news">
			<div class="n_content">
				<ul id="sliderNews">
					<c:forEach items="${news }" var="ppp">
					<li><a
						href="${pageContext.request.contextPath }/xwhd/news-inform.html?newsType=${ppp.newsType }&articleId=${ppp.id}"
						target="">${ppp.title }<span
							class="time"><fmt:formatDate value="${ppp.createTime }" pattern="yyyy-MM-dd"></fmt:formatDate></span></a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<div class="mainbox1 mainbox_whitebg">
			<div class="huoban_biaoti_main">
				<h3>我们的服务</h3>
			</div>
			<!-- <div class="huobanimg_pic "> -->
			<div class=" sList">
				<ul>
					<li>
                        <div >
                            <img src="${pageContext.request.contextPath}/res/img/pic_yao.jpg" class="toppic-title-i"></img>
                        </div>
                        <h3>
                            <a href="${pageContext.request.contextPath }/fw/index.html" title='化学'>药品</a></h3>
                        <p>
                            <a href="${pageContext.request.contextPath }/fw/index.html">中科药物在化学药物开发方面。</a></p>
					</li>
					<li>
                        <div align="center">
                            <img src="${pageContext.request.contextPath}/res/img/pic_nong.jpg" class="toppic-title-i"></img>
                        </div>
                        <h3>
                            <a href="${pageContext.request.contextPath }/fw/index.html" title='化学'>农药</a></h3>
                        <p>
                            <a href="${pageContext.request.contextPath }/fw/index.html">中科药物在化学药物开发方面。</a></p>
					</li>
					<li>
						<div align="center">
                            <img src="${pageContext.request.contextPath}/res/img/pic_hua.jpg" class="toppic-title-i"></img>
                        </div>
                        <h3>
                            <a href="${pageContext.request.contextPath }/fw/index.html" title='化学'>新化学物质</a></h3>
                        <p>
                            <a href="${pageContext.request.contextPath }/fw/index.html">中科药物在化学药物开发方面。</a></p>
					</li>
					<li>
						<div align="center">
                            <img src="${pageContext.request.contextPath}/res/img/pic_dong.jpg" class="toppic-title-i"></img>
                        </div>
                        <h3>
                            <a href="${pageContext.request.contextPath }/fw/index.html" title='化学'>动物模型</a></h3>
                        <p>
                            <a href="${pageContext.request.contextPath }/fw/index.html">中科药物在化学药物开发方面。中科药物在化学药物开发方面。中科药物在化学药物开发方面。</a></p>
					</li>
				</ul>
			</div>
			<div class="huobanimg_bottom"></div>

		</div>
		<div class="mainbox1 mainbox_whitebg">
			<div class="huoban_biaoti_main">
				<h3>功能实验室</h3>
			</div>
			<div class="huobanimg_pic">
				<ul>
					<li><div><img alt="" src="${pageContext.request.contextPath}/res/img/animals.png" ></div><p>实验动物房</p></li>
					<li><div><img alt="" src="${pageContext.request.contextPath}/res/img/xwj.png" ></div><p>组织病理室</p></li>
					<li><div><img alt="" src="${pageContext.request.contextPath}/res/img/sys.png" ></div><p>临床检验室</p></li>
					<li><div><img alt="" src="${pageContext.request.contextPath}/res/img/fenxi.png" ></div><p>分析室</p></li>
					<li><div><img alt="" src="${pageContext.request.contextPath}/res/img/environment.png" ></div><p>生态毒理室</p></li>
				</ul>
			</div>
			<div class="huobanimg_bottom"></div>

		</div>
		<div class="mainbox1">
			<div class="am-slider am-slider-default am-slider-carousel part-all"
				data-am-flexslider="{itemWidth:150, itemMargin: 5, slideshow: false}"
				style="background-color: #f0eeed; box-shadow: none;">
				<ul class="am-slides">
					<li><img src="${pageContext.request.contextPath}/res/img/pic_yao.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_nong.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_hua.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_dong.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_yao.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_nong.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_hua.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_dong.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_yao.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_nong.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_hua.jpg"/></li>
					<li><img src="${pageContext.request.contextPath}/res/img/pic_dong.jpg"/></li>
					
				</ul>
			</div>
		
		</div>
	</div>
	
	<div class="foot">
		<div class="bottom">
			<div class="down_le bord_ri">
				<h4>联系我们</h4>
				<p class="siz12 col_6" style="margin: 30px 0;">
					<img src="${pageContext.request.contextPath }/res/img/tell.png"
						height="22" width="22">&nbsp;总公司市场部：0512-65982476 <br>
					<img src="${pageContext.request.contextPath }/res/img/email.png"
						height="22" width="22">&nbsp;邮箱地址：marketing@szxszk.com
				</p>
			</div>
			<div class="down_ch bord_ri">
				 <h4>实验室</h4>
				<table class="siz12 col_6" style="margin:30px 30px 0 5px;">
					<tr><td>实验动物房&nbsp;</td><td>&nbsp;组织病理室&nbsp;</td><td>&nbsp;实验动物房&nbsp;</td><td>&nbsp;组织病理室</td></tr>
					<tr><td>组织病理室&nbsp;</td><td>&nbsp;组织病理室&nbsp;</td><td>&nbsp;实验动物房&nbsp;</td><td>&nbsp;组织病理室</td></tr>
				</table>
			</div>
			<div class="gzwm">关注我们</div>
			<div class="bown_ri">
				<p style="margin: 15px 10px 20px -30px;">
					关注西山中科<br>官方微信
				</p>
			</div>
			<div class="bown_ri">
				<a href="#"><img
					src="${pageContext.request.contextPath}/res/img/weixin.jpg"></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<DIV class="bot">
		<div class="bot1000">
			<span> 苏州西山中科药物研究有限公司 版权所有 任何单位及个人未经许可不可擅自使用</span> <br /> <span>©
				SAC -2016 苏ICP备12008164号</span>&nbsp;
		</div>
	</DIV>
</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="res/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/res/js/amazeui.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/scroll.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/res/js/jquery.bxslider.min.js"></script>
<script type="text/javascript">

	$(function() {
		 var sliderNews =  $("#sliderNews").bxSlider({
			displaySlideQty : 1,
			moveSlideQty : 1,
			controls : false,
			mode : 'vertical',
			pause : 3000,
			auto : true,
			autoHover: true,
			pager:false
			});
	})
	/* $(document).ready(function(){
		  $('#sliderNews').bxSlider({
				displaySlideQty : 1,
				moveSlideQty : 1,
				controls : false,
				mode : 'vertical',
				pause : 5000,
				auto : true,
				autoHover: true,
				pager:false
				});
	}); */
</script>
</html>
