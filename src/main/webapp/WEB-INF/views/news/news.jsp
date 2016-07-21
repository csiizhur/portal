<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head lang="en">
  <meta charset="UTF-8">
  <title>新闻活动</title>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport"
        content="width=device-width, initial-scale=1,maximum-scale=1.0, user-scalable=0,user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp"/>
  
  <link rel="alternate icon" type="/res/img/hengwang-1.png" href="/res/img/xishanlogo.png">
  <link rel="stylesheet" href="/res/css/amazeui.css"/>
  <link rel="stylesheet" href="/res/css/style.css"/>
</head>
<body>
<header class="am-topbar header">
	<div class="am-container-1">
		<div class="left hw-logo">
		  <img class=" logo" src="/res/img/xishanlogo.png"></img>
		  <img class="word-logo" src="/res/img/xishanlogo.png"></img>
    </div>
  <button class="am-topbar-btn am-topbar-toggle am-btn am-btn-sm am-btn-success am-show-sm-only"
          data-am-collapse="{target: '#doc-topbar-collapse'}"><span class="am-sr-only">导航切换</span> <span
      class="am-icon-bars"></span></button>

  <div class="am-collapse am-topbar-collapse right" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
      <ul class="am-nav am-nav-pills am-topbar-nav hw-menu">
      <li><a href="/index.htm">首页</a></li>
      <li><a href="/gnsys/index.htm">功能实验室</a></li>
      <li><a href="/fw/index.htm">服务中心 </a></li>
      <li class="hw-menu-active"><a href="/xwhd/index.htm">新闻动态 </a></li>
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
			<i class="am-icon-newspaper-o toppic-title-i"></i>
			<span class="toppic-title-span">新闻动态</span>
			<p>XiShan News</p>
		</div>
		<div class="right toppic-progress">
			<span><a href="javascript:history.back();" class="w-white">返回</a></span>
			<i class=" am-icon-arrow-circle-right w-white"></i>
			<span><a href="/index.htm" class="w-white">首页</a></span>
		</div>
	</div>
</div>


	
<div class="am-container-1 news-content-all">

<div class="am-collapse am-topbar-collapse left" id="doc-topbar-collapse">
    

    <div class=" am-topbar-left am-form-inline am-topbar-right" role="search">
    
    <div class="hot-title"><i class="am-icon-thumbs-o-up"></i>热门新闻 / Hot 	News</div>
    <ul class="am-list am-list-static am-list-border">
		<li><a class="am-icon-home am-icon-fw list-link"  href="news-gs-inform.htm">公司新闻</a></li>
		<li><a class="am-icon-pencil am-icon-fw list-link"  href="news-xs-inform.htm">学术新闻</a></li>
	</ul>
    </div>
</div>

<div class="left am-u-sm-12 am-u-md-8 am-u-lg-9 ">
	  <ul class="news-ul">
	  <%--测试用 <c:out value="${list }"> </c:out> --%>
	  <c:forEach items="${list }" var="p">
	  	<li class="am-u-sm-12 am-u-md-6 am-u-lg-4 ">
	  		<a href="news-inform.htm?articleId=${p.id }">
	  		<div class="news-ul-liall">
	  		  	<img class="news-ul-liimg" src="${p.pic }"/>		  	  		  	 
	  		  <div class="inform-list">
		  		  	<div class="inform-list-date"><i class="am-icon-arrow-circle-right"></i>${p.createTime }</div>
		  		  	<div class="inform-list-label"><i class="am-icon-arrow-circle-right"></i>${p.tag}</div>
		  		  	<div class="inform-list-numb"><i class="am-icon-arrow-circle-right"></i>点击次数：273</div>
	  		  </div>		  
	  		  <span>${p.title }</span>
	  		  <p>${p.content }</p>
	  	    <span class="see-more3">查看更多<i class="am-icon-angle-double-right"></i></span>
	  	  </div>
	  	  </a>
	  	</li>
		</c:forEach>
	  	<div class="clear"></div>
		</ul>
		<ul class="am-pagination ">	 
				   共 ${requestScope.totalSize } 条记录&nbsp;&nbsp;共 ${requestScope.totalPage } 页&nbsp;&nbsp;<span class="tooltip"></span>
				   ${requestScope.pageString }
				</ul>
				
				<input type="hidden" value="${requestScope.totalPage }" id="totalPage"/>
				<input type="hidden" value="${currentPage}" id="currentPage" /> 	  
</div>	  

<div class="clear"></div>
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
   <form action="${pageContext.request.contextPath}/xwhd/index.htm" method="post" id="form2">
    			<input type="hidden" id="currentPage2" name="currentPage" value="1" />
    </form>
</footer>

<DIV class="bot">
<div class="bot1000">
<span> 苏州西山中科系统股份有限公司  版权所有  任何单位及个人未经许可不可擅自使用</span>
<br/>
<span>© CSII 1999-2016  苏ICP备12008164号</span>&nbsp;<script type="text/javascript">var cnzz_protocol = (("https:" == document.location.protocol) ? " https://" : " http://");document.write(unescape("%3Cspan id='cnzz_stat_icon_1255665239'%3E%3C/span%3E%3Cscript src='" + cnzz_protocol + "s4.cnzz.com/z_stat.php%3Fid%3D1255665239%26show%3Dpic' type='text/javascript'%3E%3C/script%3E"));</script>
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
/**
*跳转到首页
*/
function toStart(){
	if($('#currentPage').val() != 1){
		$('#form2').submit();
	}
}
	
/**
*跳转到尾页
*/
function toEnd(){
	var totalPage = $('#totalPage').val();
	if($('#currentPage').val() != totalPage){
		$('#currentPage2').val(totalPage);
		$('#form2').submit();			
	}
}

$('.page_s').on('click',function(){
	var count = $(this).attr('lang');
	if($('#currentPage').val() != count){
		$('#currentPage2').val(count);
		if (count <= parseInt($('#totalPage').val()) && count >= 1){
			$('#form2').submit();
		}
	}
});
</script>
</html>