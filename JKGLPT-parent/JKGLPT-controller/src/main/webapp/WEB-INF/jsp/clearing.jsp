<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>健康养生平台-结算</title>
    <link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.8.0.min.js"></script>
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
                        <li class="s02 active">填写核对订单</li>
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
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/focus01.png" alt="banner"></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/focus02.png" alt="banner"></a></li>
        </ul>
        <div class="imgNum">
            <a href="#" class="active"></a>
            <a href="#"></a>
        </div>
    </div>
</div>
<div class="shoppingCart comWidth">
    <div class="shopping_item">
        <h3 class="shopping_tit">收货信息</h3>
        <form action="${pageContext.request.contextPath }/orders/receiver" method="post">
	        <div class="shopping_cont padding_shop">
	            <ul class="shopping_list">
	                <li><span class="shopping_list_text"><em>*</em>详细地址：</span><input class="input input_b" type="text" name="address" placeholder="最多输入26个汉字"></li>
	                <li><span class="shopping_list_text"><em>*</em>收 货 人：</span><input class="input" type="text" name="name" placeholder="最多输入10个汉字"></li>
	                <li><span class="shopping_list_text"><em>*</em>手	机：</span><input class="input" type="text" name="phone" placeholder="如12345678">
	            </ul>
	        </div>
        </form>
    </div>
    <script type="text/javascript">
    	//提交订单
    	function submitForm(){
    		if($("input[name='address']").val().length<1){
    			alert('收货地址不可为空！');
    			return;
    		}
    		if($("input[name='name']").val().length<1){
    			alert('收货人不可为空！');
    			return;
    		}
    		if($("input[name='phone']").val().length<1){
    			alert('电话不可为空！');
    			return;
    		}
    		$("form").submit();
    	}
    	
    </script>
    <div class="hr_25px"></div>
    <div class="shopping_item">
        <h3 class="shopping_tit">送货清单</h3>
        <div class="shopping_cont">
            <div class="cart_inner">
                <div class="cart_head clearfix">
                    <div class="cart_item t_name">商品名称</div>
                    <div class="cart_item t_price">单价</div>
                    <div class="cart_item t_num">数量</div>
                    <div class="cart_item t_subtotal">小计</div>
                    <div class="cart_item t_return">操作</div>
                </div>
               
               
               <c:forEach items="${requestScope.ordersVOs}" var="ordersVO">
	                <div class="cart_cont clearfix" id="${ordersVO.id }">
	                    <div class="cart_item t_name">
	                        <div class="cart_shopInfo clearfix">
	                            <img src="${ordersVO.drugsPic}" alt="${drugs.drugsName }">
	                            <div class="cart_shopInfo_cont">
	                                <p class="cart_link"><a href="#">${ordersVO.drugsName}</a></p>
	
	                                <p class="cart_info"><font color="blue">支持七天无理由退货</font></p>
	                            </div>
	                        </div>
	                    </div>
	                    <div class="cart_item t_price">￥<span>${ordersVO.drugsPrice}</span></div>
	                     <input type="hidden" name="price" value="${ordersVO.drugsPrice}"/>
	                    <div class="cart_item t_num" >${ordersVO.num}</div>
	                    <input type="hidden" name="num" value="${ordersVO.num}"/>
	                    <div class="cart_item t_subtotal t_red">￥${ordersVO.drugsPrice*ordersVO.num}</div>
	                    <div class="cart_item t_return">
	                    	<a href="javascript:void(0)" onclick="del(${ordersVO.id})">移除</a>
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <script type="text/javascript">
    	$(function(){
    		getTotleMoney();
    	});
    	//计算总钱
    	function getTotleMoney(){
	    	var totleMoney=0.00;
    		var prices = $("input[name='price']");
    		var nums = $("input[name='num']");
	   		for(var i=0;i<prices.length;i++){
	   			var price = prices[i].value;
	   			var num = nums[i].value;
	   			totleMoney += price*num;
	   		}
    		$("#totle").html(totleMoney.toFixed(2));
    	}
    	//删除订单
    	function del(id){
    		var b = window.confirm("确定要移除吗？");
			if(b){
				$("#"+id).remove();
				$.ajax({
					url:"${pageContext.request.contextPath }/orders",
					type:"POST",
					data:{"id":id,"_method":"DELETE"},
				});
				getTotleMoney();
			} 
    	}
    </script>
    <div class="hr_25px"></div>
    <div class="shopping_item">
        <h3 class="shopping_tit">订单结算</h3>

        <div class="shopping_cont padding_shop clearfix">
            <div class="cart_count fr">
                <div class="cart_rmb">
                    <p>总计:</p>￥<span id="totle">0.00</span>
                </div>
                <div class="cart_btnBox">
                    <input class="cart_btn" type="button" onclick="submitForm()" value="提交订单">
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
