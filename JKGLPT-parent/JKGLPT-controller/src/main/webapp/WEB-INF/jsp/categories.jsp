<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>健康养生平台-产品分类</title>
<link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/my.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/reset.css">
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
				<div class="leftArea">
					<a href="${pageContext.request.contextPath }/fontPageDisplay" class="collection">健康首页</a>
				</div>
				<div class="rightArea">
					为健康而养生!&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/page/login">[登录]</a><a href="${pageContext.request.contextPath }/page/register">[免费注册]</a>
				</div>
			</div>
		</div>
		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="${pageContext.request.contextPath }/fontPageDisplay"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="健康养生平台"></a>
				</div>
				<div class="search_box fl">
					<input type="text" class="search_text fl"> <a href="${pageContext.request.contextPath }/page/select">
					<input type="button" value="搜 索" class="search_btn fr"></a>
				</div>
				<div class="shopCar fr" onclick="window.open('${pageContext.request.contextPath }/cart')">
				 	<span class="shopText fl">购物车</span> <span class="shopNum fl">0</span>
				</div>
			</div>
		</div>
		<div class="navBox">
			<div class="comWidth">
				<div class="shopClass fl">
					<h3>
						<a class="myColor" href="">四季养生</a>
					</h3>
				</div>
				<ul class="nav fl">
					<c:forEach items="${characteristics }" var="characteristics">
						<li><a
							href="${pageContext.request.contextPath }/categories/characteristic/${characteristics.drugsCharacteristicId}" >${characteristics.drugsCharacteristicName}</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="hr_15px"></div>
	<div class="comWidth clearfix proucts">
		<div class="leftArea">
			<div class="leftNav">
				<h3 class="nav_title">所有药品分类</h3>
				<c:forEach items="${list }" var="list">
					<div class="nav_cont">
						<a
							href="${pageContext.request.contextPath }/categories/classification/${list.classification.drugsClassificationId }">
							<h3>
								<font color="black">${list.classification.drugsClassificationName }</font>
							</h3>
						</a>
						<ul class="navCont_list clearfix">
							<c:forEach items="${ list.drugs}" var="drugs">
								<li><a href="${pageContext.request.contextPath }/introduction/${drugs.drugsId}">${ drugs.drugsName}</a></li>
							</c:forEach>
						</ul>
					</div>
				</c:forEach>

			</div>
		</div>
		<div class="rightArea">
			<div class="banner_bar banner_big">
				<ul class="imgBox">
				<jsp:include page="carousel.jsp"></jsp:include>
				</ul>
			</div>
			<div class="hr_7px"></div>
			<div class="products_title">
				<h3>药品列表</h3>
			</div>

			<div class="products_list clearfix">
				<c:forEach items="${drugsss }" var="drugs">
					<div class="item">
						<div class="item_cont">
							<div class="img_item">
								<a href="introduction.jsp"><img src="${drugs.drugsPic }"
									alt="shopImg"></a>
							</div>
							<p>
								<a>${drugs.drugsName }</a>
							</p>

							<p class="money">${drugs.drugsPrice }</p>

							<p>
								评论:<span></span><span></span><span></span><span></span><span></span><a>(78条)</a>
							</p>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
