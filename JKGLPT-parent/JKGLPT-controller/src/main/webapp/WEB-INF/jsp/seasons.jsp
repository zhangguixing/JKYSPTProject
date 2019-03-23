<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0030)http://www.ycqzyy.com/cjys/sp/ -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">

<title>春季食谱大全_春季吃什么_春季菜谱【图】_四季养生堂</title>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style/reset2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style/iask.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/style/my.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath}/script/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						if ("season" == '${flag}') {
							$("#title").html("四季养生");
							$("#content")
									.html(
											"四季养生,春生、夏长、秋收、冬藏,是大自然一年中运动变化的规律。中医认为“天人相应”,人体必须顺应自然四季变化的规律,保持机体与自然的平衡.");
						} else if ("springRecipes" == '${flag}') {
							$("#title").html("春季养生食谱");
							$("#content")
									.html(
											"春季食谱为大家介绍：春季养生吃什么好,春季食谱有哪些，春季养生吃什么?不知道春季养生吃什么就来看看,这里为您整理了丰富的春季养生食谱。");
						} else if ("springSoup" == '${flag}') {
							$("#title").html("春季养生汤");
							$("#content")
									.html(
											"春季养生汤主要介绍：春季养生汤食谱大全,适合春季的养生汤有哪些，春季喝什么汤养生,春季养生汤有哪些等！不知道春季养生汤有哪些就来看看,这里为您整理了丰富的春季养生汤大全。");
						} else if ("springKnowledge" == '${flag}') {
							$("#title").html("春季养生知识");
							$("#content")
									.html(
											"春季养生主要介绍：春季养生小知识大全,春季养生常识,春季养生要点等！一年之季在于春,做好春季养生保健,可以让您健康一整年。");
						} else if ("summerRecipes" == '${flag}') {
							$("#title").html("夏季养生食谱");
							$("#content")
									.html(
											"夏季养生食谱为大家介绍：夏季养生吃什么好,夏季养生食谱有哪些，夏季养生吃什么?不知道夏季养生吃什么就来看看,这里为您整理了丰富的夏季养生食谱。");
						} else if ("summerSoup" == '${flag}') {
							$("#title").html("夏季养生汤");
							$("#content")
									.html(
											"夏季养生汤主要介绍：夏季养生汤食谱大全,适合夏季的养生汤有哪些，夏季喝什么汤养生,夏季养生汤有哪些等！不知道夏季养生汤有哪些就来看看,这里为您整理了丰富的夏季养生汤大全。");
						} else if ("summerKnowledge" == '${flag}') {
							$("#title").html("夏季养生知识");
							$("#content")
									.html(
											"夏季养生主要介绍：夏季养生小知识大全,夏季养生常识,夏季养生要点等！做好夏季养生保健,可以让您健康一整年。");
						} else if ("autumnRecipes" == '${flag}') {
							$("#title").html("秋季养生食谱");
							$('#content')
									.html(
											"秋季养生食谱为大家介绍：秋季养生吃什么好,秋季养生食谱有哪些，秋季养生吃什么?不知道秋季养生吃什么就来看看,这里为您整理了丰富的秋季养生食谱。");
						} else if ("autumnSoup" == '${flag}') {
							$("#title").html("秋季养生汤");
							$("#content")
									.html(
											"秋季养生汤主要介绍：秋季养生汤食谱大全,适合秋季的养生汤有哪些，秋季喝什么汤养生,秋季养生汤有哪些等！不知道秋季养生汤有哪些就来看看,这里为您整理了丰富的秋季养生汤大全。");
						} else if ("autumnKnowledge" == '${flag}') {
							$("#title").html("秋季养生知识");
							$("#content")
									.html(
											"秋季养生主要介绍：秋季养生小知识大全,秋季养生常识,秋季养生要点等！做好秋季养生保健,可以让您健康一整年。");
						} else if ("winterRecipes" == '${flag}') {
							$("#title").html("冬季养生食谱");
							$("#content")
									.html(
											"冬季养生食谱为大家介绍：冬季养生吃什么好,冬季养生食谱有哪些，冬季养生吃什么?不知道冬季养生吃什么就来看看,这里为您整理了丰富的冬季养生食谱。");
						} else if ("winterSoup" == '${flag}') {
							$("#title").html("冬季养生汤");
							$("#content")
									.html(
											"冬季养生汤主要介绍：冬季养生汤食谱大全,适合冬季的养生汤有哪些，冬季喝什么汤养生,冬季养生汤有哪些等！不知道冬季养生汤有哪些就来看看,这里为您整理了丰富的冬季养生汤大全。");
						} else if ("winterKnowledge" == '${flag}') {
							$("#title").html("冬季养生知识");
							$("#content")
									.html(
											"冬季养生主要介绍：冬季养生小知识大全,冬季养生常识,冬季养生要点等！做好冬季养生保健,可以让您健康一整年。");
						}
						
						
						
						
						
					});
</script>
</head>
<body>
	<!-- 头部 begin -->
	<div class="header">
		<div class="nav_top">
			<div class="logo">
				<a href="${pageContext.request.contextPath }/fontPageDisplay"><img
					class="mySeasonPic"
					src="${pageContext.request.contextPath }/images/logo/logo2.png"
					alt="四季养生堂"></a>
			</div>
			<div class="nav_xxk">
				<!--导航条-->
				<ul class="nav-main">
					<li class="home tongbeij"><a href="" rel="nofllow">首页</a></li>
					<li class="home"><a
						href="${pageContext.request.contextPath }/seasons/season"
						title="四季养生">四季养生</a></li>
					<li class=" news"><a href="" title="春季养生">春季养生</a><span></span>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/seasons/springRecipes"
								title="春季养生食谱">春季养生食谱</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/springSoup"
								title="春季养生汤">春季养生汤</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/springKnowledge"
								title="春季养生知识">春季养生知识</a></li>

						</ul></li>
					<li class=" news"><a href=""
						title="夏季养生">夏季养生</a><span></span>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/seasons/summerRecipes"
								title="夏季养生食谱">夏季养生食谱</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/summerSoup"
								title="夏季养生汤">夏季养生汤</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/summerKnowledge"
								title="夏季养生知识">夏季养生知识</a></li>

						</ul></li>
					<li class=" news"><a href=""
						title="秋季养生">秋季养生</a><span></span>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/seasons/autumnRecipes"
								title="秋季养生食谱">秋季养生食谱</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/autumnSoup"
								title="秋季养生汤">秋季养生汤</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/autumnKnowledge"
								title="秋季养生知识">秋季养生知识</a></li>

						</ul></li>
					<li class=" news"><a href=""
						title="冬季养生">冬季养生</a><span></span>
						<ul>

							<li><a
								href="${pageContext.request.contextPath }/seasons/winterRecipes"
								title="冬季养生食谱">冬季养生食谱</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/winterSoup"
								title="冬季养生汤">冬季养生汤</a></li>

							<li><a
								href="${pageContext.request.contextPath  }/seasons/winterKnowledge"
								title="冬季养生知识">冬季养生知识</a></li>

						</ul></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="nav_main_title">
		<ul>
			<li><a href="#" title="运动养生">运动养生</a></li>
			<li><a href="" title="中医养生">中医养生</a></li>
			<li><a href="" title="足疗养生">足疗养生</a></li>
			<li><a href="" title="饮食禁忌">饮食禁忌</a></li>
			<li><a href="" title="橄榄油">橄榄油</a></li>
		</ul>
	</div>
	<!-- 头部 end -->
	<div class="wrap clearfix">
		<div class="main">
			<!-- 分类列表 begin -->
			<div class="news_list">
				<div class="list_hd">
					<span id="title" class="caty"></span>
					<p id="content" class="list_bx_p"></p>
				</div>
				<div class="list_ct">

					<c:forEach items="${allEssays }" var="allEssay" begin="0" end="9">
						<div class="list_item">
							<h3>
								<a href="" title="&lt;b&gt;春季养生食谱，入春吃芦笋，营养 美味 吃不&lt;/b&gt;"
									target="_blank"><b>${allEssay.title}</b></a>
							</h3>
							<a href="" title="&lt;b&gt;春季养生食谱，入春吃芦笋，营养 美味 吃不&lt;/b&gt;"
								target="_blank" class="item_pic"><img
								src="${allEssay.essay }" width="206" height="115"
								alt="&lt;b&gt;春季养生食谱，入春吃芦笋，营养 美味 吃不&lt;/b&gt;"></a>
							<div class="item_info">
								<p>
									${allEssay.essay }<a href="" class="more_detail" rel="nofllow"
										target="_blank">[详细]</a>
								</p>
								<div class="rl_tag">
									<a href="" title="">四季养生知识</a><a
										class="share_clock">${allEssay.releaseTime }</a>
								</div>
							</div>
						</div>
					</c:forEach>

				</div>
				<div class="dede_pages">
					<ul class="pagelist">
						<li>首页</li>
						<li class="thisclass">1</li>
						<li><a href="">2</a></li>
						<li><a href="">3</a></li>
						<li><a href="">4</a></li>
						<li><a href="">5</a></li>
						<li><a href="">6</a></li>
						<li><a href="">7</a></li>
						<li><a href="">8</a></li>
						<li><a href="">9</a></li>
						<li><a href="">10</a></li>
						<li><a href="">11</a></li>
						<li><a href="">下一页</a></li>
						<li><a href="">末页</a></li>
						<li><span class="pageinfo">共 <strong>11</strong>页<strong>104</strong>条
						</span></li>
					</ul>
				</div>
			</div>
			<!-- 分类列表 end -->
		</div>
		<!-- 右侧 begin -->
		<div class="slider_setion">
			<!--推荐内容开始-->
			<div class="slider_setion">
				<!--推荐内容开始-->

				<div class="tj_read">
					<c:forEach items="${springEssays }" var="springEssay" begin="0"
						end="1">
						<div class="pic_setion">
							<a href="" title="${springEssay.title}"><img
								src="${springEssay.pic }" alt="${springEssay.title}" width="300"
								height="170"></a>
							<div class="op_wrap"></div>
							<div class="tj_title">
								<span>热点</span><a href="" title="${springEssay.title}"
									target="_blank">${springEssay.title}</a>
							</div>
						</div>
					</c:forEach>


					<ul class="txt_list">
						<c:forEach items="${springEssays }" var="springEssay" begin="0"
							end="11">
							<li><a href="" title="${springEssay.title }" target="_blank">${springEssay.title }</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="box_tl">
					<h2>四季养生热点推荐</h2>
				</div>
				<div class="tj_read">
					<c:forEach items="${autumnEssays }" var="autumnEssay" begin="0"
						end="0">
						<div class="pic_setion">
							<a href="" title="${autumnEssay.title }"><img
								src="${autumnEssay.pic }" alt="${autumnEssay.title }"
								width="300" height="170"></a>
							<div class="op_wrap"></div>
							<div class="tj_title">
								<span>推荐</span><a href=""
									title="${autumnEssay.title }" target="_blank">${autumnEssay.title }</a>
							</div>
						</div>
					</c:forEach>
					<ul class="txt_list">
						<c:forEach items="${autumnEssays }" var="autumnEssay" begin="0" end="25">
							<li><a href=""
								title="${autumnEssay.title }" target="_blank">${autumnEssay.title }</a></li>
						</c:forEach>

					</ul>



				</div>


			</div>
			<!--推荐内容结束-->
		</div>
		<!-- 右侧 end -->
	</div>
	<!-- 底部分类导航 begin -->
	<div class="bottom_caty addStop">

		<div class="wrap">

			<div class="caty_cm qxzuobj">

				<h4>
					<i class="icon wire_icon icon_zixun"></i>资讯
				</h4>

				<ul>

					<li><a href="" title="四季养生">四季养生</a></li>

				</ul>

			</div>

			<div class="caty_cm">

				<h4>
					<i class="icon wire_icon food_icon"></i>春季养生
				</h4>
				<ul>
					<li><a href="" title="春季养生食谱">春季养生食谱</a></li>
					<li><a href="" title="春季养生汤">春季养生汤</a></li>
					<li><a href="" title="春季养生知识">春季养生知识</a></li>
				</ul>
			</div>
			<div class="caty_cm">
				<h4>
					<i class="icon wire_icon sport_icon"></i>夏季养生
				</h4>
				<ul>
					<li><a href="" title="夏季养生食谱">夏季养生食谱</a></li>
					<li><a href="" title="夏季养生汤">夏季养生汤</a></li>
					<li><a href="" title="夏季养生知识">夏季养生知识</a></li>
				</ul>
			</div>
			<div class="caty_cm">
				<h4>
					<i class="icon wire_icon peo_icon"></i>秋季养生
				</h4>
				<ul>
					<li><a href="" title="秋季养生食谱">秋季养生食谱</a></li>
					<li><a href="" title="秋季养生汤">秋季养生汤</a></li>
					<li><a href="" title="秋季养生知识">秋季养生知识</a></li>
				</ul>
			</div>
			<div class="caty_cm">
				<h4>
					<i class="icon wire_icon dor_icon"></i>冬季养生
				</h4>
				<ul>
					<li><a href="" title="冬季养生食谱">冬季养生食谱</a></li>
					<li><a href="" title="冬季养生汤">冬季养生汤</a></li>
					<li><a href="" title="冬季养生知识">冬季养生知识</a></li>
				</ul>
			</div>
			<div class="caty_cm caty_b">
				<h4>
					<i class="icon wire_icon dor_icon"></i>中医
				</h4>
				<ul>
					<li><a>民间偏方</a></li>
					<li><a>中药养生</a></li>
					<li><a>中医养生</a></li>
				</ul>
			</div>

			<div class="caty_cm">

				<h4>
					<i class="icon wire_icon life_icon"></i>生活保健
				</h4>
				<ul>
					<li><a>美容护肤</a></li>
					<li><a>减肥</a></li>
					<li><a>四季养生</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 底部分类导航 end -->
	<!-- 友链 begin -->
	<!-- 友链 end -->
	<!-- 版权 begin -->
	<div class="footer">
		<div class="wrap">
			<a href="" rel="nofllow">首页</a><a href="#"
				title="四季养生">四季养生</a> <a href=""
				title="春季养生">春季养生</a><a href=""
				title="夏季养生">夏季养生</a> <a href=""
				title="秋季养生">秋季养生</a><a href=""
				title="冬季养生">冬季养生</a><br>
			<p>
				四季养生堂-提供一年四季：春、夏、秋、冬养生食谱知识分享! <br>
				本站内容仅供参考，不能用作医疗诊断和临床使用，文章未经授权禁止转载！<br> Copyright&#169;2017
				www.ycqzyy.com 版权所有四季养生堂
			</p>
			<script src="./seasons_files/hm.js.下载"></script>
			<script>
				var _hmt = _hmt || [];
				(function() {
					var hm = document.createElement("script");
					hm.src = "https://hm.baidu.com/hm.js?8974e365f0f8b4ef8ed0f83e64d89f7c";
					var s = document.getElementsByTagName("script")[0];
					s.parentNode.insertBefore(hm, s);
				})();
			</script>

		</div>

	</div>
	<!-- 版权 end -->


	<script type="text/javascript">
		if (window.location.toString().indexOf('pref=padindex') != -1) {
		} else {
			if (/AppleWebKit.*Mobile/i.test(navigator.userAgent)
					|| (/MIDP|SymbianOS|NOKIA|SAMSUNG|LG|NEC|TCL|Alcatel|BIRD|DBTEL|Dopod|PHILIPS|HAIER|LENOVO|MOT-|Nokia|SonyEricsson|SIE-|Amoi|ZTE/
							.test(navigator.userAgent))) {
				if (window.location.href.indexOf("?mobile") < 0) {
					try {
						if (/Android|Windows Phone|webOS|iPhone|iPod|BlackBerry/i
								.test(navigator.userAgent)) {
							window.location.href = "http://m.ycqzyy.com/cjys/sp/";
						} else if (/iPad/i.test(navigator.userAgent)) {
						} else {
						}
					} catch (e) {
					}
				}
			}
		}
	</script>
</body>
</html>