<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>健康养生平台-首页</title>
<link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/reset.css">
	<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/my.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/main.css">
<!--[if IE 6]>
    <script type="text/javascript" src="script/DD_belatedPNG_0.0.8a-min.script"></script>
    <script type="text/javascript" src="script/ie6Fixpng.script"></script>
    <![endif]-->
</head>
<body>
	<div class="headerBar">
		<div class="topBar">
			<div class="comWidth">

				<div class="rightArea">
				为健康而养生&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/page/login">[登录]</a><a href="${pageContext.request.contextPath }/page/register">[免费注册]</a>
				</div>
			</div>
		</div>
		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="${pageContext.request.contextPath }/fontPageDisplay"><img
						src="${pageContext.request.contextPath }/images/logo/logo.png"
						alt="健康管理平台"></a>
				</div>
				<div class="search_box fl">
					<input type="text" class="search_text fl"> <a
						href="${pageContext.request.contextPath }/page/select"><input
						type="button" value="搜 索" class="search_btn fr"></a>
				</div>
				<div class="shopCar fr" onclick="window.open('${pageContext.request.contextPath }/cart')">
				 	<span class="shopText fl">购物车</span> <span class="shopNum fl">0</span>
				</div>
			</div>
		</div>
		<div class="navBox">
			<div class="comWidth">
				<div class="shopClass fl">
						
						<a class="myColor" href="${pageContext.request.contextPath }/seasons/season">四季养生</a>
					
					<div class="shopClass_show">
						<c:forEach items="${classificationsList }" var="classification">
							<dl class="shopClass_item">
								<dt>
									<a
										href="${pageContext.request.contextPath }/categories/classification/${classification.drugsClassificationId}"
										class="b" target="_blank">${classification.drugsClassificationName }</a>
								</dt>
							</dl>
						</c:forEach>
					</div>
				</div>
				<ul class="nav fl">
					<c:forEach items="${characteristicList }" var="characteristic">
						<li><a href="${pageContext.request.contextPath }/categories/characteristic/${characteristic.drugsCharacteristicId}">${characteristic.drugsCharacteristicName }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="banner comWidth clearfix">
		<div class="banner_bar banner_big">
			<ul class="imgBox">
				<jsp:include page="carousel.jsp"></jsp:include>
			
			
			</ul>
		</div>
	</div>
	<!-- 商品列表 -->
	<c:forEach items="${list}" var="list">
		<div class="shopTit comWidth">
			<span class="icon"></span>
			<h3>${list.classification.drugsClassificationName }</h3>
			<a href="${pageContext.request.contextPath }/categories/classification/${classification.drugsClassificationId}" class="more">更多&gt;&gt;</a>
		</div>
		<div class="shopList comWidth clearfix">
			<div class="leftArea">
				<div class="banner_bar banner_sm">
					<ul class="imgBox">
						<li><a href="#"><img
								src="${pageContext.request.contextPath }/images/banner/u=1625902898,3649731062&fm=27&gp=0.jpg"
								alt="banner"></a></li>
						<li><a href="#"><img
								src="${pageContext.request.contextPath }/images/banner/banner_sm_02.png"
								alt="banner"></a></li>
					</ul>
					<div class="imgNum">
						<a href="#" class="active"></a> <a href="#"></a>
					</div>
				</div>
			</div>
			<div class="rightArea">
				<div class="shopList_top clearfix">
					<c:forEach items="${list.drugs }" var="drugs" begin="0" end="3">

						<div class="shop_item">
							<div class="shop_img">
								<a href="${pageContext.request.contextPath }/introduction/${drugs.drugsId }"><img
									src="${drugs.drugsPic }" alt=""></a>
							</div>
							<h3>${drugs.drugsName }</h3>

							<p>￥${drugs.drugsPrice }</p>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</c:forEach>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
