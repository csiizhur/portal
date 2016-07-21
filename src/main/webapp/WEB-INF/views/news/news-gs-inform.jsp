<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head lang="en">
<meta charset="UTF-8">
<title>公司新闻</title>
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
						<li class="hw-menu-active"><a href="${pageContext.request.contextPath}/xwhd/index.html">新闻动态
						</a></li>
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
				<i class="am-icon-hand-paper-o toppic-title-i"></i> <span
					class="toppic-title-span">公司新闻</span>
				<p>Company News</p>
			</div>
			<div class="right toppic-progress">
				<span><a href="${pageContext.request.contextPath}/index.html" class="w-white">首页</a></span> <i
					class=" am-icon-arrow-circle-right w-white"></i> <span><a
					href="${pageContext.request.contextPath}/fw/index.html" class="w-white">服务中心</a></span>
			</div>
		</div>
	</div>

	<div class=" content">

		<div class="submenu">
			<ul>
				<li><a href="/xwhd/news-gs-inform.html" target="_parent">公司新闻</a></li>
				<li><a href="/xwhd/news-xs-inform.html" target="_parent">学术新闻</a></li>
			</ul>
		</div>
		<div class="mainbox ">
			<div class="news_img">
				<!-- 新闻列表start -->
				<ul class="news_list">
					<c:forEach items="${list }" var="p">
						<li>
							<h3>
								<a href="/xwhd/news-inform.html?articleId=${p.id }&newsType=${p.newsType}"
									target="_parent" class="pt8">${p.title }
								</a>
							</h3>
							<p>
								<a href="/xwhd/news-inform.html?articleId=${p.id }&newsType=${p.newsType}"
									target="_parent" class="pt8">${p.description }</a>
							</p>
							<p>
								<label>[<fmt:formatDate value="${p.createTime}"
										pattern="yyyy-MM-dd" />]
								</label>
							</p>

						</li>
					</c:forEach>
				</ul>

				<!-- 新闻列表end -->

				<div align="right">
					<span class="rn3">
						<div class="news_list_page">
							<span class="rn3">
								<ul class="am-pagination ">
									共 ${requestScope.totalSize } 条记录&nbsp;&nbsp;共
									${requestScope.totalPage } 页&nbsp;&nbsp;
									<span class="tooltip"></span> ${requestScope.pageString }
								</ul>
							</span>
						</div>
					</span>
				</div>
			</div>
			<input type="hidden" value="${requestScope.totalPage }"
				id="totalPage" /> <input type="hidden" value="${currentPage}"
				id="currentPage" />
			<form action="/xwhd/news-gs-inform.html" method="post" id="form2">
				<input type="hidden" id="currentPage2" name="currentPage" value="1" />
			</form>
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
					src="${pageContext.request.contextPath}/res/images/weixin.jpg"></a>
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
<script src="${pageContext.request.contextPath}/res/js/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/res/js/amazeui.min.js"></script>
<!--[if (gte IE 9)|!(IE)]><!-->
<script type="text/javascript">
	/**
	 *跳转到首页
	 */
	function toStart() {
		if ($('#currentPage').val() != 1) {
			$('#form2').submit();
		}
	}

	/**
	 *跳转到尾页
	 */
	function toEnd() {
		var totalPage = $('#totalPage').val();
		if ($('#currentPage').val() != totalPage) {
			$('#currentPage2').val(totalPage);
			$('#form2').submit();
		}
	}

	$('.page_s').on('click', function() {
		var count = $(this).attr('lang');
		if ($('#currentPage').val() != count) {
			$('#currentPage2').val(count);
			if (count <= parseInt($('#totalPage').val()) && count >= 1) {
				$('#form2').submit();
			}
		}
	});
</script>
</html>
