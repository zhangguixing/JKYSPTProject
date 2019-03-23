<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>健康养生平台-商品介绍</title>
<link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/my.css">

<!--[if IE 6]>
    <script type="text/javascript" src="script/DD_belatedPNG_0.0.8a-min.script"></script>
    <script type="text/javascript" src="script/ie6Fixpng.script"></script>
    <![endif]-->
<script type="text/javascript"
	src="${pageContext.request.contextPath }/script/jquery-1.8.0.min.js"></script>
<script type="text/javascript">
	function add() {
		var a = parseInt(document.getElementById("100").value);
		var b = a + 1;
		document.getElementById("100").value = b;
	}
	function min() {

		var a = parseInt(document.getElementById("100").value);
		if (a >= 1) {
			var b = a - 1;
			document.getElementById("100").value = b;
		}
	}

	function change() {
		document.getElementById("intro").className = "active";
		document.getElementById("eval").className = "";
	}
	function change2() {
		document.getElementById("eval").className = "active";
		document.getElementById("intro").className = "";
	}
	$(document)
			.ready(
					function() {
						$("#intro")
								.click(
										function() {
											$
													.ajax({
														type : "GET",
														url : "${pageContext.request.contextPath }/introduction/intro",
														data : {
															"id" : '${drug.drugsId}'
														},
														dataType : "json",
														success : function(data) {
															console.info(data);
															$("#evalDiv")
																	.html(
																			"<p>"
																					+ data.drugsDesc
																					+ "</p>");
														},
													});

										});
						$("#eval")
								.click(
										function() {
											$
													.ajax({
														type : "GET",
														url : "${pageContext.request.contextPath }/introduction/disscu",
														data : {
															"id" : '${drug.drugsId}'
														},
														dataType : "json",
														success : function(data) {
															console.info(data);
															var s = "";
															for (var i = 0; i < data.length; i++) {
																s += "<div><p>"
																		+ data[i].nickName
																		+ "于"
																		+ data[i].date
																		+ "评论了：<br/>"
																		+ data[i].discuss
																		+ "</p>"
																		+ "<br/></div><hr>";
															}
															$("#evalDiv").html(
																	s);
														},
													});

										});
					});

	function goCart() {
		var num = $("#100").val();
		var n = "<input type=hidden name=num value="+num+"><input type=hidden name=drugsId value='${drug.drugsId}'/>"
		$("#go_cart_div").html(n);
		document.getElementById("go_cart").action = "/cart";
		document.getElementById("go_cart").method = "POST";
	}
</script>
</head>
<body class="grey">

	<div class="headerBar">
		<div class="topBar">
			<div class="comWidth">
				<div class="leftArea">
					<a href="#" class="collection">收藏慕课</a>
				</div>

				<div class="rightArea">
					欢迎来到慕课网<a href="#">[登录]</a><a href="#">[免费注册]</a>
				</div>
			</div>
		</div>
		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="${pageContext.request.contextPath }/fontPageDisplay"><img
						src="${pageContext.request.contextPath }/images/logo/logo.png"
						alt="健康养生平台"></a>
				</div>
				<div class="search_box fl">
					<input type="text" class="search_text fl"> <input
						type="button" value="搜 索" class="search_btn fr">
				</div>
				<div class="shopCar fr">
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

					<div class="shopClass_show hide">
					</div>
				</div>
				<ul class="nav fl">
					<c:forEach items="${characteristicList}" var="characteristic">
						<li><a
							href="${pageContext.request.contextPath }/categories/characteristic/${characteristic.drugsCharacteristicId}">${characteristic.drugsCharacteristicName }</a></li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
	<div class="userPosition comWidth"></div>
	<div class="description_info comWidth">
		<div class="description clearfix">
			<div class="leftArea">
				<div class="description_imgs">
					<div class="big">
						<img src="${drug.drugsPic}" class="introPic"
							alt="${drug.drugsName }">
					</div>
				</div>
			</div>
			<div class="rightArea">
				<div class="des_content">
					<h3 class="des_content_tit">${drug.drugsName }</h3>

					<div class="dl clearfix">
						<div class="dt">价格:</div>
						<div class="dd">
							<span class="des_money"><em>$</em>${drug.drugsPrice }</span>
						</div>
					</div>
					<div class="dl clearfix">
						<div class="dt">优惠</div>
						<div class="dd">
							<span class="hg"><i class="hg_icon">暂无</i>由于本店处于亏本状态现在暂无优惠</span>
						</div>
					</div>
					<div class="des_position">
						<div class="dl clearfix">
							<div class="dt des_num">数量</div>
							<div class="dd clearfix">
								<div class="des_number">
									<div class="redction" onclick="min();">-</div>
									<div class="des_input">
										<input id="100" type="text" value="1">
									</div>
									<div class="plus" onclick="add();">+</div>
								</div>
								<span class="xg">限购<em>9</em>件
								</span>
							</div>
						</div>
					</div>
					<div class="shop_buy">
						<form id="go_cart" action="">
							<div id="go_cart_div"></div>
							<button type="submit" class="buy_btn" onclick="goCart();"></button>
							<!-- <br /> <a href=""  class="buy_btn" "></a> -->
						</form>
					</div>
					<div class="notes">注意：此商品可提供普通发票，不提供增值税发票。</div>
				</div>
			</div>
		</div>
		<div class="hr_15px" style="background-color: #F0F0F0"></div>
		<div class="des_info comWidth clearfix">
			<div class="leftArea">
				<div class="recommend">
					<h3 class="tit">同价位</h3>
					<c:forEach items="${sameClass }" var="sameClass" begin="0" end="3">
						<div class="item">
							<div class="item_cont">
								<div class="img_item">
									<a href="${pageContext.request.contextPath }/introduction/${drugs.drugsId}"><img
										src="${sameClass.drugsPic }"
										alt="${sameClass.drugsName }"></a>
								</div>
								<p>
									<a>${sameClass.drugsName }</a>
								</p>

								<p class="money">${sameClass.drugsPrice }</p>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
			<div class="rightArea">
				<div class="des_infoContent">
					<ul class="des_tit">
						<li id="intro" class="active" onclick="change();"><span>产品介绍</span></li>
						<li id="eval" onclick="change2();"><span>产品评价</span></li>
					</ul>
					<div class="da">
						<img src="${pageContext.request.contextPath }/images/开春盛典.png" style="width: 700px;height: 200px"
							alt="广告">
					</div>
					<div class="info_text">
						<div class="info_tit">
							<h3>强烈推荐</h3>
							<h4>货比三家,还选</h4>
						</div>
						<div id="evalDiv">

							<p id="myP">${drugsinfos.drugsDesc }</p>
						</div>
					</div>
					<div class="hr_45px"></div>
					<h3 class="shopDes_tit">商品评价</h3>

					<div class="score_box clearfix">
						<div class="score">
							<span>4.7</span><em>分</em>
						</div>
						<div class="score_speed">
							<ul class="score_speed_text">
								<li class="speed_01">非常不满意</li>
								<li class="speed_02">不满意</li>
								<li class="speed_03">一般</li>
								<li class="speed_04">满意</li>
								<li>非常满意</li>
							</ul>
							<div class="score_num clearfix">
								<p>4.7</p>
								<i></i>
							</div>
							<p>共18939位慕课网友参与评分</p>
						</div>
					</div>
					<div class="review_tab">
						<ul class="review fl">
							<li><a class="active" href="#">全部</a></li>
							<li><a href="#">满意(17490)</a></li>
							<li><a href="#">一般(549)</a></li>
							<li><a href="#">不满意(743)</a></li>
						</ul>
					</div>
					<div class="review_listBox">
						<div class="review_list clearfix">
							<div class="review_userHead fl">
								<div class="review_user">
									<img
										src="${pageContext.request.contextPath }/images/userHead.png"
										alt="">
									<p>61***42</p>
									<p>金色会员</p>
								</div>
							</div>
							<div class="review_cont">
								<div class="review_t clearfix">
									<div class="starsBox fl">
									<c:forEach begin="0" end="4">
										<span class="stars"></span> 
									</c:forEach>
										
										<!-- <span class="stars"></span> <span
											class="stars"></span> <span class="stars"></span> <span
											class="stars"></span> -->
									</div>
									<span class="stars_text fl">5分 满意</span>
								</div>
								<p>挺不错的，信赖慕课</p>

								<p>
									<a href="#" class="up">顶(0)</a><a href="down">踩</a>
								</p>
							</div>
						</div>
						<div class="review_list clearfix">
							<div class="review_userHead fl">
								<div class="review_user">
									<img
										src="${pageContext.request.contextPath }/images/userHead.png"
										alt="">
									<p>61***42</p>
									<p>金色会员</p>
								</div>
							</div>
							<div class="review_cont">
								<div class="review_t clearfix">
									<div class="starsBox fl">
										<span class="stars"></span> <span class="stars"></span> <span
											class="stars"></span> <span class="stars"></span> <span
											class="stars"></span>
									</div>
									<span class="stars_text fl">5分 满意</span>
								</div>
								<p>挺不错的，信赖慕课</p>

								<p>
									<a href="#" class="up">顶(0)</a><a href="down">踩</a>
								</p>
							</div>
						</div>
					</div>
					<div class="page">
						<a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a
							href="#">4</a><a href="#">5</a><a href="#">6</a><span class="hl">...</span><a
							href="#">200</a><a href="#">下一页</a><span class="morePages">共200页,到第</span><input
							class="pageNume" type="text"><span class="ye">页</span><input
							class="page_btn" type="button" value="确定">
					</div>
				</div>
			</div>
		</div>
		<div class="hr_25px" style="background-color: #F0F0F0"></div>
		<div class="footer">
			<p>
				<a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i>
				<a href="#">联系我们</a><i>|</i>客服热线：400-675-1234
			</p>

			<p>Copyright &copy; 2006 - 2014
				慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>

			<p class="web">
				<a href=""><img
					src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
					alt="logo"></a><a href=""><img
					src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
					alt="logo"></a><a href=""><img
					src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
					alt="logo"></a><a href=""><img
					src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
					alt="logo"></a>
			</p>
		</div>
	</div>
</body>
</html>
