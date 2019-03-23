<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>结算</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/main.css">
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
                <a href="#" class="collection">收藏慕课</a>
            </div>
            <div class="rightArea">
                欢迎来到慕课网<a href="${pageContext.request.contextPath }/jsp/login.jsp">[登录]</a><a href="${pageContext.request.contextPath }/jsp/register.jsp"">[免费注册]</a>
            </div>
        </div>
    </div>
    <div class="logoBar">
        <div class="comWidth">
            <div class="logo fl">
                <a href="#"><img src="${pageContext.request.contextPath }/${pageContext.request.contextPath }/images/logo/logo.png" alt="慕课网"></a>
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

        <div class="shopping_cont padding_shop">
            <ul class="shopping_list">
                <li><span class="shopping_list_text"><em>*</em>选择地区：</span>

                    <div class="select">
                        <h3>海淀区五环内</h3><span></span>
                        <ul class="show_select">
                            <li>上帝</li>
                            <li>五道口</li>
                        </ul>
                    </div>
                </li>
                <li><span class="shopping_list_text"><em>*</em>详细地址：</span><input class="input input_b" type="text"
                                                                                  value="最多输入26个汉字"></li>
                <li><span class="shopping_list_text"><em>*</em>收 货 人：</span><input class="input" type="text"
                                                                                   value="最多输入10个汉字"></li>
                <li><span class="shopping_list_text"><em>*</em>手	机：</span><input class="input" type="text"
                                                                                    value="如12345678">&nbsp;或固定电话:<input
                        class="input input_s" type="text" value="区号"><span class="reduce">-</span><input
                        class="input input_s2" type="text" value="电话号码"><span class="reduce">-</span><input
                        class="input input_s2" type="text" value="分机号(可选)"></li>
                <li><input type="button" class="affirm" value="确认收货地址"></li>
            </ul>
        </div>
    </div>
    <div class="hr_25px"></div>
    <div class="shopping_item">
        <h3 class="shopping_tit">支付方式</h3>


        <div class="shopping_cont padding_shop">
            <ul class="shopping_list">
                <li><input class="radio" type="radio" id="r1"><label for="r1">微信支付</label><i
                        class="shopping_list_i"></i>

                    <p>用微信扫一扫就能支付!</p></li>
                <li><input class="radio" type="radio" id="r2"><label for="r2">货到付款</label>

                    <p class="shopping_list_p02">送货上门后再付款,使用现金或刷银行卡.</p></li>
            </ul>
        </div>
    </div>
    <div class="hr_25px"></div>
    <div class="shopping_item">
        <h3 class="shopping_tit">送货清单<a href="#">返回购物车修改</a></h3>

        <div class="shopping_cont">
            <div class="cart_inner">
                <div class="cart_head clearfix">
                    <div class="cart_item t_name">商品名称</div>
                    <div class="cart_item t_price">单价</div>
                    <div class="cart_item t_return">返现</div>
                    <div class="cart_item t_num">数量</div>
                    <div class="cart_item t_subtotal">小计</div>
                </div>
                <div class="cart_cont clearfix">
                    <div class="cart_item t_name">
                        <div class="cart_shopInfo clearfix">
                            <img src="${pageContext.request.contextPath }/images/iPad.png" alt="iPad">

                            <div class="cart_shopInfo_cont">
                                <p class="cart_link"><a href="#">微信支付微信支付微信支付</a></p>

                                <p class="cart_info">微信支付微信支付微信支付</p>
                            </div>
                        </div>
                    </div>
                    <div class="cart_item t_price">单价</div>
                    <div class="cart_item t_return">返现</div>
                    <div class="cart_item t_num">数量</div>
                    <div class="cart_item t_subtotal t_red">小计</div>
                </div>
                <div class="cart_message">
                    <p>若有问题请留言</p>
                </div>
                <div class="cart_prompt">
                    <i class="cart_prompt_icon"></i>

                    <p>抱歉,以下商品无法购买.</p>
                </div>
                <div class="cart_cont clearfix">
                    <div class="cart_item t_name">
                        <div class="cart_shopInfo clearfix">
                            <img src="${pageContext.request.contextPath }/images/iPad.png" alt="iPad">

                            <div class="cart_shopInfo_cont">
                                <p class="cart_link"><a href="#">微信支付微信支付微信支付</a></p>

                                <p class="cart_info">微信支付微信支付微信支付</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="hr_25px"></div>
    <div class="shopping_item">
        <h3 class="shopping_tit">订单结算</h3>

        <div class="shopping_cont padding_shop clearfix">
            <div class="cart_count fr">
                <div class="cart_rmb">
                    <p>总计:</p><span>$1459 .00</span>
                </div>
                <div class="cart_btnBox">
                    <input class="cart_btn" type="button" value="提交订单">
                </div>
            </div>
        </div>
    </div>
</div>
<div class="hr_25px"></div>
<div class="footer">
    <p><a href="#">慕课简介</a><i>|</i><a href="#">慕课公告</a><i>|</i> <a href="#">招纳贤士</a><i>|</i> <a
            href="#">联系我们</a><i>|</i>客服热线：400-675-1234</p>

    <p>Copyright &copy; 2006 - 2014 慕课版权所有&nbsp;&nbsp;&nbsp;京ICP备09037834号&nbsp;&nbsp;&nbsp;京ICP证B1034-8373号&nbsp;&nbsp;&nbsp;某市公安局XX分局备案编号：123456789123</p>

    <p class="web"><a href=""><img src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a><a href=""><img
            src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
            alt="logo"></a><a href=""><img
            src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a><a href=""><img src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a>
    </p>
</div>
</body>
</html>
