<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>企业文化详情</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
<meta name="format-detection" content="telephone=no">
<meta name="renderer" content="webkit">
<meta http-equiv="Cache-Control" content="no-siteapp" />

<link rel="alternate icon" href="/res/img/xishanlogo.png">
<link rel="stylesheet" href="/res/css/amazeui.min.css" />
<link rel="stylesheet" href="/res/css/style.css" />
</head>
<body class="commonbg_main">
	<header class="am-topbar header">
		<div class="am-container-1">
			<div class="left hw-logo">
				<img class=" logo" src="/res/img/xishanlogo.png"></img>
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
						<li><a href="/index.html">首页</a></li>
						<li class="hw-menu-active"><a href="/gyxs/index.html">关于我们</a></li>
						<li><a href="/gnsys/index.html">功能实验室</a></li>
						<li><a href="/xwhd/index.html">新闻动态 </a></li>
						<li><a href="/fw/index.html">服务中心 </a></li>
						<li><a href="/lxwm/index.html">联系我们</a></li>
					</ul>
				</div>

			</div>
		</div>
	</header>
	<div class="toppic">
		<div class="am-container-1">
			<div class="toppic-title left">
				<i class="am-icon-soccer-ball-o toppic-title-i"></i> <span
					class="toppic-title-span">企业文化</span>
				<p>Culture Center</p>
			</div>
			<div class="right toppic-progress">
				<span><a href="/gyxs/index.html" class="w-white">关于西山</a></span> <i
					class=" am-icon-arrow-circle-right w-white"></i> <span><a
					href="/index.html" class="w-white">首页</a></span>
			</div>
		</div>
	</div>
	<div class="content">
		<div class="submenu">
			<ul>
				<!--关于西山 start  -->
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/company-inform.html">公司介绍</a></li>
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/organize-inform.html">组织机构</a></li>
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/team-inform.html">技术团队</a></li>
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/ent-culture-inform.html">企业文化</a></li>
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/honor-inform.html">资质荣誉</a></li>
				<li class="list-link"><a href="${pageContext.request.contextPath }/gyxs/history-inform.html">历史沿革</a></li>
				<!--关于西山 end  -->
			</ul>
		</div>
		<div class="mainbox news_article">
			<div class="maintitle">

				<h3 style="text-align: left; text-indent: 24px;">
					<a target="_parent" href="/index.html">首页</a> &gt;<a
						target="_parent" href="/index.html"></a> <a target="_parent"
						href="/gyxs/index.html">关于我们</a> &gt;<a target="_parent"
						href="/gyxsindex.html"></a> <a target="_parent"
						href="/gyxs/ent-culture-inform.html">企业文化</a> <label><a
						href="javascript:history.back()">返回</a></label> &gt; ${culture.cultureName}
				</h3>
			</div>

			<table style="line-height: 24px; text-indent: 24px;" border="0" width="99%">
				<tbody>
					<tr>
					</tr>
					<tr>
						<td><p>${culture.cultureInfo }</p>
							<p>
								<%-- <img alt="" src="${culture.culturePic}" height="371" width="660"> --%>
								<img src="/image/photo.html?imgName=${culture.culturePic }">
							</p>
							
							</td>
					</tr>
				</tbody>
			</table>
			<br> <br>
		</div>
	</div>

	<div class="foot">
		<div class="bottom">
			<div class="down_le bord_ri">
				<h4>联系我们</h4>
				<p class="siz12 col_6" style="margin: 30px 0;">
					<img src="/res/img/tell.png"
						height="18" width="18">&nbsp;总公司市场部：0512-65982476 <br>
					<img src="/res/img/email.png"
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
					src="/res/img/weixin.jpg"></a>
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

</html>
