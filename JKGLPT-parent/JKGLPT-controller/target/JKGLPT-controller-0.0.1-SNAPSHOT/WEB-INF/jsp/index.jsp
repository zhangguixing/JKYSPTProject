<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>首页</title>
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
                欢迎来到慕课网<a href="#">[登录]</a><a href="#">[免费注册]</a>
            </div>
        </div>
    </div>
    <div class="logoBar">
        <div class="comWidth">
            <div class="logo fl">
                <a href="#"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="慕课网"></a>
            </div>
            <div class="search_box fl">
                <input type="text" class="search_text fl">
                <a href="select.jsp"><input type="button" value="搜 索" class="search_btn fr"></a>
            </div>
            <a href="${pageContext.request.contextPath }/page/clearing">
            	<div class="shopCar fr">
                	<span class="shopText fl">购物车</span>
                	<span class="shopNum fl">0</span>
            	</div>
            </a>
        </div>
    </div>
    <div class="navBox">
        <div class="comWidth">
            <div class="shopClass fl">
                <h3>全部商品分类<i></i></h3>

                <div class="shopClass_show">
                    <dl class="shopClass_item">
                        <dt><a href="${pageContext.request.contextPath }/page/categories" class="b">手机</a><a href="${pageContext.request.contextPath }/page/categories" class="b">数码</a> <a href="${pageContext.request.contextPath }/WEB-INF/jsp/categories.jsp" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                    <dl class="shopClass_item">
                        <dt><a href="#" class="b">手机</a><a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                    <dl class="shopClass_item">
                        <dt><a href="#" class="b">手机</a><a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                    <dl class="shopClass_item">
                        <dt><a href="#" class="b">手机</a><a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                    <dl class="shopClass_item">
                        <dt><a href="#" class="b">手机</a><a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                </div>
            </div>
           <ul class="nav fl">
                <li><a href="${pageContext.request.contextPath }/page/index" class="active">首页</a></li>
                <li><a href="${pageContext.request.contextPath }/page/categories">新特药</a></li>
                <li><a href="${pageContext.request.contextPath }/page/categories">家庭常备药</a></li>
                <li><a href="${pageContext.request.contextPath }/page/categories">乙肝</a></li>
                <li><a href="${pageContext.request.contextPath }/page/scategories">减肥瘦身</a></li>
                <li><a href="${pageContext.request.contextPath }/page/categories">中药抓药</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="banner comWidth clearfix">
    <div class="banner_bar banner_big">
        <ul class="imgBox">
            <li><a href="introduction.jsp"><img src="${pageContext.request.contextPath }/images/banner/focus01.png" alt="banner"></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/focus02.png" alt="banner"></a></li>
        </ul>
        <div class="imgNum">
            <a href="#" class="active"></a>
            <a href="#"></a>
        </div>
    </div>
</div>
<div class="shopTit comWidth">
    <span class="icon"></span>

    <h3>家用电脑</h3>
    <a href="#" class="more">更多&gt;&gt;</a>
</div>
<div class="shopList comWidth clearfix">
    <div class="leftArea">
        <div class="banner_bar banner_sm">
            <ul class="imgBox">
                <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/banner_sm_01.png" alt="banner"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/banner_sm_02.png" alt="banner"></a></li>
            </ul>
            <div class="imgNum">
                <a href="#" class="active"></a>
                <a href="#"></a>
            </div>
        </div>
    </div>
    <div class="rightArea">
        <div class="shopList_top clearfix">
            <div class="shop_item">
                <div class="shop_img">
                    <a href="${pageContext.request.contextPath }/page/introduction"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
        </div>
        <div class="shopList_sm clearfix">
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="shopTit comWidth">
    <span class="icon"></span>

    <h3>家用电脑</h3>
    <a href="#" class="more">更多&gt;&gt;</a>
</div>
<div class="shopList comWidth clearfix">
    <div class="leftArea">
        <div class="banner_bar banner_sm">
            <ul class="imgBox">
                <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/banner_sm_01.png" alt="banner"></a></li>
                <li><a href="#"><img src="${pageContext.request.contextPath }/images/banner/banner_sm_02.png" alt="banner"></a></li>
            </ul>
            <div class="imgNum">
                <a href="#" class="active"></a>
                <a href="#"></a>
            </div>
        </div>
    </div>
    <div class="rightArea">
        <div class="shopList_top clearfix">
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
            <div class="shop_item">
                <div class="shop_img">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png" alt=""></a>
                </div>
                <h3>HTC新渴望8系列</h3>

                <p>1899元</p>
            </div>
        </div>
        <div class="shopList_sm clearfix">
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
                </div>
            </div>
            <div class="shopItem_sm">
                <div class="shopItem_smImg">
                    <a href="#"><img src="${pageContext.request.contextPath }/images/shopImg.png " alt="shopImg"></a>
                </div>
                <div class="shopItem_text">
                    <p>NFC技术一碰轻松配对!接触屏幕</p>

                    <h3>$149.00</h3>
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

    <p class="web"><a href=""><img src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a><a href=""><img src="${pageContext.request.contextPath }/images/logo/logoBottom.png"
                                                                                       alt="logo"></a><a href=""><img
            src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a><a href=""><img src="${pageContext.request.contextPath }/images/logo/logoBottom.png" alt="logo"></a>
    </p>
</div>
</body>
</html>
