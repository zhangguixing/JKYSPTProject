<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>健康养生平台-购物车</title>
<link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/reset.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/main.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/style/my.css">
<script type="text/javascript"
	src="${pageContext.request.contextPath  }/script/jquery-1.8.0.min.js"></script>
</head>
<body>
	<div class="headerBar">
		<div class="topBar">
			<div class="comWidth">
				<div class="leftArea">
					<a href="${pageContext.request.contextPath }/fontPageDisplay" class="collection">健康首页</a>
				</div>
				<div class="rightArea">
					为健康而养生&nbsp;&nbsp;<a href="${pageContext.request.contextPath }/page/login">[登录]</a><a href="${pageContext.request.contextPath }/page/register">[免费注册]</a>
				</div>
			</div>
		</div>
		<div class="logoBar">
			<div class="comWidth">
				<div class="logo fl">
					<a href="${pageContext.request.contextPath }/fontPageDisplay"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="健康养生平台"></a>
				</div>
				<div class="stepBox fr">
					<div class="step">
						<ul class="stepBox">
							<li class="s01 active">我的购物车</li>
							<li class="s02">填写核对订单</li>
							<li class="s03">订单提交成功</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="banner comWidth clearfix hide">
		<div class="banner_bar banner_big">
			<ul class="imgBox">
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/images/banner/focus01.png"
						alt="banner"></a></li>
				<li><a href="#"><img
						src="${pageContext.request.contextPath }/images/banner/focus02.png"
						alt="banner"></a></li>
			</ul>
			<div class="imgNum">
				<a href="#" class="active"></a> <a href="#"></a>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		//选中时更改底色
		function changeColor(id){
			var b = $("#chk"+id).is(":checked");
			if(b){
				$("#"+id).css("background-color","#fff4e8");
			}else{
				$("#"+id).css("background-color","#ffffff");
			}
			cumputeMoney();
		}
	</script>
	<div class="shoppingCart comWidth">
		<div class="hr_25px"></div>
		<div class="shopping_item">
			<h3 class="shopping_tit">
				商品<a href="${pageContext.request.contextPath }/fontPageDisplay/">返回首页继续购买</a>
			</h3>
			<div class="shopping_cont">
				<div class="cart_inner">
					<div class="cart_head clearfix">
						<div class="cart_item t_name">商品名称</div>
						<div class="cart_item t_price">单价</div>
						<div class="cart_item t_num">数量</div>
						<div class="cart_item t_subtotal">小计</div>
						<div class="cart_item t_return">操作</div>
					</div>
					<form action="${pageContext.request.contextPath }/orders" method="POST">
						<c:forEach items="${requestScope.drugsList }" var="drugs" varStatus="st">
							<div class="cart_cont clearfix" id="${drugs.drugsId }">
								<div class="cart_item t_name">
									<div class="cart_shopInfo clearfix" >
										<input type="checkbox" class="cartchk" name="drugsId" value="${drugs.drugsId }" id="chk${drugs.drugsId }" onclick="changeColor(${drugs.drugsId })"/> 
										<img src="${drugs.drugsPic }" alt="${drugs.drugsName }">
										<div class="cart_shopInfo_cont">
											<p class="cart_link">
												<a href="#">${drugs.drugsName}</a>
											</p>
											<p class="cart_info"><font color="blue">支持七天无理由退货</font></p>
										</div>
									</div>
								</div>
								<div class="cart_item t_price">￥${drugs.drugsPrice }</div>
								<div class="cart_item t_num">
								<div class="dd clearfix">
		                           	 <div class="des_number">
		                                <div class="redction" onclick="dec(${drugs.drugsId },${drugs.drugsPrice },${cartList[st.index].id})">-</div>
		                                <div class="des_input">
		                                    <input type="text" name="num" value="${cartList[st.index].num}" onblur="updateNum(this.value,${drugs.drugsId },${drugs.drugsPrice })" id="num${drugs.drugsId }">
		                                </div>
		                                <div class="plus" onclick="add(${drugs.drugsId },${drugs.drugsPrice },${cartList[st.index].id})">+</div>
		                            </div>
		                        </div>
								</div>
								<div class="cart_item t_subtotal t_red">￥<span id="price${drugs.drugsId }">${drugs.drugsPrice }</span></div>
								<div class="cart_item t_return">
									<a href="javascript:void(0)" onclick="delDrugs(${drugs.drugsId})">删除</a>
								</div>
							</div>
							<br/>
						</c:forEach>
					</form>
				</div>
			</div>
		</div>
		<script type="text/javascript">
		//输入数量时更改价格
		function updateNum(num,id,price){
			var money = num*price;
			money = money.toFixed(2);
			$("#price"+id).html(money);
			cumputeMoney();
		}
		//减少商品数量
		function dec(id,price,cartId){
			var num = parseInt($("#num"+id).val());
			if(num-1 >= 1){
				$("#num"+id).val(num-1);
				updateNum(num-1,id,price)
				$.ajax({
					url:"${pageContext.request.contextPath }/cart/"+cartId,
					method:"PUT",
					data:{"num":num-1},
				});
			}else{
				alert('数量不可以小于一个哦0.0');
			}
		}
		
		//增加商品数量
		function add(id,price,cartId){
			var num = parseInt($("#num"+id).val());
			$("#num"+id).val(num+1);
			updateNum(num+1,id,price)
			$.ajax({
				url:"${pageContext.request.contextPath }/cart/"+cartId,
				method:"PUT",
				data:{"num":num+1}
			});
		}
		//删除购物车商品
		function delDrugs(drugsId){
			var b = window.confirm("确定要删除吗？");
			if(b){
				$("#"+drugsId).remove();
				cumputeMoney();
				$.ajax({
					url:"${pageContext.request.contextPath }/cart",
					type:"POST",
					data:{"id":drugsId,"_method":"DELETE"},
				});
			} 
		}
		//去结算
		function goClear() {
			if($("input[name='drugsId']:checked").length>0){
				var idArray = new Array();
				var numArray = new Array();
				$("input[name='drugsId']:checked").each(function(){
					var id = $(this).val();
					var num = $("#num"+id).val();
					idArray.push(id);
					numArray.push(num);
				})
				$.ajax({
					url:'${pageContext.request.contextPath }/orders',
					type:'POST',
					data:{'drugsId':idArray,'num':numArray},
				});
				window.open('${pageContext.request.contextPath }/orders','_blank');
			}else{
				alert('请选择要购买的商品！');
			}
		}

		//计算总价
		 function cumputeMoney(){
			var totle = 0.0;//总价
			$("input[name='drugsId']:checked").each(function(){
				var id = $(this).val();
				totle += parseFloat($("#price"+id).html());
			});
			totle = totle.toFixed(2);
			$("#totleMoney").html(totle);
		}
	</script>
		<div class="hr_25px"></div>
		<div class="shopping_item">
			<h3 class="shopping_tit">订单结算</h3>

			<div class="shopping_cont padding_shop clearfix">
				<div class="cart_count fr">
					<div class="cart_rmb">
						<p>总计:</p>
						￥<span id="totleMoney">0.0</span>
					</div>
					<div class="cart_btnBox">
						<input class="cart_btn" type="button" onclick="goClear()"
							value="去结算">
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
