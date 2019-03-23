<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>健康养生平台-筛选页</title>
    <link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
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
            <div class="search_box fl">
					<input type="text" class="search_text fl"> 
					<a href="${pageContext.request.contextPath }/page/select">
						<input type="button" value="搜 索" class="search_btn fr">
					</a>
			</div>
				<div class="shopCar fr" onclick="window.open('${pageContext.request.contextPath }/cart')">
				 	<span class="shopText fl">购物车</span> <span class="shopNum fl">0</span>
				</div>
        </div>
    </div>
    <div class="navBox">
        <div class="comWidth">
            <div class="shopClass fl">
                <h3>全部商品分类<i></i></h3>

                <div class="shopClass_show hide">
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
                    <dl class="shopClass_item">
                        <dt><a href="#" class="b">手机</a><a href="#" class="b">数码</a> <a href="#" class="aLink">合约机</a>
                        </dt>
                        <dd><a href="#">荣耀3X</a> <a href="#">单反</a> <a href="#">智能设备</a></dd>
                    </dl>
                </div>
            </div>
            <ul class="nav fl">
                <li><a href="#" class="active">数码城</a></li>
                <li><a href="#">天黑黑</a></li>
                <li><a href="#">团购</a></li>
                <li><a href="#">发现</a></li>
                <li><a href="#">二手特卖</a></li>
                <li><a href="#">名品会</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="hr_15px"></div>
<div class="comWidth clearfix proucts">
    <div class="leftArea">
        <div class="leftNav vertical">
            <h3 class="nav_title">手机、相机、数码</h3>

            <div class="nav_cont">
                <h3>手机通讯</h3>
                <ul class="navCont_list clearfix">
                    <li><a href="#">手机</a></li>
                    <li><a href="#">对讲机</a></li>
                </ul>
            </div>
            <div class="nav_cont">
                <h3>运营商</h3>
                <ul class="navCont_list clearfix">
                    <li><a href="#">购机送费</a></li>
                    <li><a href="#">“0”元购机</a></li>
                    <li><a href="#">选号入网</a></li>
                </ul>
            </div>
            <div class="nav_cont">
                <h3>手机配件</h3>
                <ul class="navCont_list clearfix">
                    <li><a href="#">手机电池</a></li>
                    <li><a href="#">蓝牙耳机</a></li>
                    <li><a href="#">充电器/数据线</a></li>
                    <li><a href="#">手机耳机</a></li>
                    <li><a href="#">手机贴膜</a></li>
                    <li><a href="#">手机保护套</a></li>
                    <li><a href="#">全部手机</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="rightArea">
        <div class="screening_box">
            <dl class="screening clearfix">
                <dt>手机</dt>
                <dd class="screening_list">
                    <ul class="clearfix">
                        <li><a href="#">裸机(<span>773</span>)</a></li>
                        <li><a href="#">合约机(<span>7173</span>)</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="screening clearfix">
                <dt>品牌</dt>
                <dd class="limit"><a class="active" href="#">不限</a></dd>
                <dd class="screening_list">
                    <ul class="clearfix">
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="screening clearfix">
                <dt>屏幕尺寸</dt>
                <dd class="limit"><a class="active" href="#">不限</a></dd>
                <dd class="screening_list">
                    <ul class="clearfix">
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="screening clearfix">
                <dt>操作系统</dt>
                <dd class="limit"><a class="active" href="#">不限</a></dd>
                <dd class="screening_list">
                    <ul class="clearfix">
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="screening clearfix">
                <dt>适用网络制式</dt>
                <dd class="limit"><a class="active" href="#">不限</a></dd>
                <dd class="screening_list">
                    <ul class="clearfix">
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                        <li><a href="#">Samsung/三星</a></li>
                        <li><a href="#">Apple/苹果</a></li>
                        <li><a href="#">Huawei/华为</a></li>
                        <li><a href="#">Xiaomi/小米</a></li>
                        <li><a href="#">Lenovo/联想</a></li>
                    </ul>
                </dd>
            </dl>
            <dl class="screening clearfix">
                <dt>更多选项</dt>
                <dd class="screening_list">
                    <div class="screen_more">
                        <a href="#">Samsung/三星</a>
                    </div>
                    <div class="screen_more">
                        <a href="#">Samsung/三星</a>
                    </div>
                </dd>
            </dl>
        </div>
        <div class="hr_15px"></div>
        <div class="addInfo">
            <div class="address">
                <span class="add_text">送至</span>

                <div class="select">
                    <h3>海淀区五环内</h3><span></span>
                    <ul class="show_select">
                        <li>上帝</li>
                        <li>五道口</li>
                    </ul>
                </div>
            </div>
            <div class="fr screen_text">
                <span class="check">
                <input id="check" type="checkbox"><label for="check">仅显示有货</label>
                </span>
                <span class="shop_number">共<em>1111</em>件</span>
            </div>
        </div>
        <div class="products_list screening_list_more clearfix">
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
                <div class="hot"></div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
            <div class="item">
                <div class="item_cont">
                    <div class="img_item">
                        <a href="#"><img src="${pageContext.request.contextPath }/images/phone.png" alt="shopImg"></a>
                    </div>
                    <p><a>文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>

                    <p class="money">$888</p>

                    <p><a href="#" class="addCar">加入购物车</a></p>
                </div>
            </div>
        </div>
        <div class="hr_25"></div>
        <div class="page">
            <a href="#">上一页</a><a href="#">1</a><a href="#">2</a><a href="#">3</a><a href="#">4</a><a href="#">5</a><a href="#">6</a><span class="hl">...</span><a href="#">200</a><a href="#">下一页</a><span class="morePages">共200页,到第</span><input class="pageNume" type="text"><span class="ye">页</span><input class="page_btn" type="button" value="确定">
        </div>
    </div>
</div>
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
