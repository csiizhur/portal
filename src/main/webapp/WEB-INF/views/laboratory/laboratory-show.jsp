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
						<li  class="hw-menu-active"><a href="${pageContext.request.contextPath}/gnsys/index.html">功能实验室</a></li>
						<li><a href="${pageContext.request.contextPath}/xwhd/index.html">新闻动态 </a></li>
						<li><a href="${pageContext.request.contextPath}/fw/index.html">服务中心 </a></li>
						<li><a href="${pageContext.request.contextPath}/lxwm/index.html">联系我们</a></li>
					</ul>
				</div>

			</div>
		</div>
	</header>

	<div class="prod_banner_wrapper">
		<div
			style="background-image: url(${pageContext.request.contextPath}/res/img/bgg.jpg); width: 100%; float: left; height: 139px;">
			<div class="prod_banner" style="font-size: 12px">

				<p>首页>服务中心>${lab.laboratoryName }</p>
				<h2>${lab.laboratoryName }</h2>
			</div>
		</div>
	</div>

	<div class="content_nospace">
		<div class="prod_detail_l">

			<div class="prodnav">
				<ul>
					<li><a href="javascript:void(0)" class="cur">实验室概述</a></li>
					<li><a class="" href="javascript:void(0)">实验室优势</a></li>
				</ul>
			</div>
			<div class="container">
				<div class="sub-con cur-sub-con">
					<h3>实验室信息</h3>
					<p>&nbsp; &nbsp;		
						${lab.laboratoryInfo }
						</p>
					<p>&nbsp;&nbsp;&nbsp;</p>
				</div>
				<div class="sub-con">
					<p>&nbsp;</p>
					<%-- <c:out value="${msg eq 'noPic' }"></c:out>
					<c:out value="${msg ne 'noPic' }"></c:out> 
					<c:out value="${empty msg }"></c:out>--%>
					<c:if test="${msg=='noPic' }">
						抱歉没有该图片信息!!
					</c:if>
					<%-- <c:if test="${msg ne 'noPic' }">
					<p>&nbsp;&nbsp;&nbsp;
						<img src="/image/photo.html?imgName=${lab.laboratoryPic }" style="width: 100%"></img></p>
					</c:if> --%>
					<c:if test="${empty msg }">
					<p>&nbsp;&nbsp;&nbsp;
						<img src="${pageContext.request.contextPath }/image/photo.html?imgName=${lab.laboratoryPic }" style="width: 100%"></img></p>
					</c:if>
				</div>
			</div>

		</div>
		<div class="prod_detail_r">
			<h2>功能实验室</h2>
			 <ul >
			 	<li ><a href="${pageContext.request.contextPath }/gnsys/detail/sydw.html">实验动物房</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/zzbl.html">组织病理室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/lcjy.html">临床检验室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/ybdl.html">一般毒理室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/fxs.html">分析室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/xbsw.html">细胞生物室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/gsp.html">供试品室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/das.html">档案室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/hjdl.html">环境毒理室</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/xxzx.html">信息中心</a></li>
				<li ><a href="${pageContext.request.contextPath }/gnsys/detail/zlbz.html">质量保证部</a></li>
			</ul>
		</div>
		<!-- <div>
			<h2>我们的服务</h2>
			<div class="side">
				<ul>
					<li class="side_tree">
						<div>
							<a class="side_tree_title"
								href="">农药</a>
							<ins class="side_tree_icon"></ins>
							<div style="clear: both; border-top: none;"></div>
						</div>
						<ul class="list2" style="display: none;">
							<li class=""><span><a class="side_tree_title"
									href="/fw/detail/hjdl.html">环境毒理实验</a>
									<div style="clear: both; border-top: none;"></div></span></li>
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/dlxjc-glp.html">毒理学检测GLP</a>
									<div style="clear: both; border-top: none;"></div></span></li>
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/dddlx.html">毒代动力学实验</a>
									<div style="clear: both; border-top: none;"></div></span></li>
						</ul>
					</li>
					<li class="side_tree">
						<div>
							<a class="side_tree_title"
								href="">新化学物质</a>
							<ins class="side_tree_icon"></ins>
							<div style="clear: both; border-top: none;"></div>
						</div>
						<ul class="list2" style="display: none;">
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/dlxjc.html">毒理学检测</a>
									<div style="clear: both; border-top: none;"></div></span></li>
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/stdlx.html">生态毒理学试验</a>
									<div style="clear: both; border-top: none;"></div></span></li>
						</ul>
					</li>
					<li class="side_tree">
						<div>
							<a class="side_tree_title"
								href="">药品</a>
							<ins class="side_tree_icon"></ins>
							<div style="clear: both; border-top: none;"></div>
						</div>
						<ul class="list2" style="display: none;">
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/ywaq.html">药物安全性评价GLP</a>
									<div style="clear: both; border-top: none;"></div></span></li>
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/yxxyj.html">药效学研究</a>
									<div style="clear: both; border-top: none;"></div></span></li>
							<li class=" "><span><a class="side_tree_title"
									href="/fw/detail/yddlx.html">药代动力学试验</a>
									<div style="clear: both; border-top: none;"></div></span></li>
						</ul>
					</li>
					
					
				</ul>
			</div>
			<div class="prod_detail_rcontact">
				<img src="/res/img/bgg.jpg">
			</div>
		</div> -->

		<!--切换菜单 end-->
	</div>
	<div class="foot">
		<div class="bottom">
			<div class="down_le bord_ri">
				<h4>联系我们</h4>
				<p class="siz12 col_6" style="margin: 30px 0;">
					<img src="${pageContext.request.contextPath }/res/img/tell.png"
						height="18" width="18">&nbsp;总公司市场部：0512-65982476 <br>
					<img src="${pageContext.request.contextPath }/res/img/email.png"
						height="18" width="18">&nbsp;邮箱地址：marketing@szxszk.com
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
					关注西山<br>官方微信
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
</body>
<!--[if lt IE 9]>
<script src="http://libs.baidu.com/jquery/1.11.1/jquery.min.js"></script>
<script src="http://cdn.staticfile.org/modernizr/2.8.3/modernizr.js"></script>
<script src="assets/js/amazeui.ie8polyfill.min.js"></script>
<![endif]-->

<!--[if (gte IE 9)|!(IE)]><!-->
<script src="${pageContext.request.contextPath}/res/js/jquery.min.js"></script>
<!--<![endif]-->
<script src="${pageContext.request.contextPath}/res/js/amazeui.min.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				var intervalID;
				var curLi;
				$(".casenav li a").mouseover(function() {
					curLi = $(this);
					intervalID = setInterval(onMouseOver, 50);//鼠标移入的时候有一定的延时才会切换到所在项，防止用户不经意的操作 
				});
				function onMouseOver() {
					$(".cur-sub-con").removeClass("cur-sub-con");
					$(".sub-con").eq($(".casenav li a").index(curLi)).addClass(
							"cur-sub-con");
					$(".cur").removeClass("cur");
					curLi.addClass("cur");
				}
				$(".casenav li a").mouseout(function() {
					clearInterval(intervalID);
				});

				$(".casenav li a").click(
						function() {//鼠标点击也可以切换 
							clearInterval(intervalID);
							$(".cur-sub-con").removeClass("cur-sub-con");
							$(".sub-con").eq($(".casenav li a").index(curLi))
									.addClass("cur-sub-con");
							$(".cur").removeClass("cur");
							curLi.addClass("cur");
						});

			});
</script>


<script type="text/javascript">
	$(document).ready(
			function() {
				var intervalID;
				var curLi;
				$(".prodnav li a").mouseover(function() {
					curLi = $(this);
					intervalID = setInterval(onMouseOver, 50);//鼠标移入的时候有一定的延时才会切换到所在项，防止用户不经意的操作 
				});
				function onMouseOver() {
					$(".cur-sub-con").removeClass("cur-sub-con");
					$(".sub-con").eq($(".prodnav li a").index(curLi)).addClass(
							"cur-sub-con");
					$(".cur").removeClass("cur");
					curLi.addClass("cur");
				}
				$(".prodnav li a").mouseout(function() {
					clearInterval(intervalID);
				});

				$(".prodnav li a").click(
						function() {//鼠标点击也可以切换 
							clearInterval(intervalID);
							$(".cur-sub-con").removeClass("cur-sub-con");
							$(".sub-con").eq($(".prodnav li a").index(curLi))
									.addClass("cur-sub-con");
							$(".cur").removeClass("cur");
							curLi.addClass("cur");
						});

			});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$(".side_tree_icon").click(function() {
			if ($(this).parent().next().css('display') == 'none') {
				$(this).css("background-position", "0 bottom");
				$(this).parent().next().slideDown("slow");
			} else {
				$(this).css("background-position", "0 0");
				$(this).parent().next().slideUp();
			}
		});
	});
</script>
</html>