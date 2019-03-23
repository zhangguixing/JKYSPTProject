<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>用户登录</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/main.css">
    <!--[if IE 6]>
    <script type="text/javascript" src="script/DD_belatedPNG_0.0.8a-min.script"></script>
    <script type="text/javascript" src="script/ie6Fixpng.script"></script>
    <![endif]-->
</head>
<body>
<div class="headerBar">
    <div class="logoBar login_logo"> 
        <div class="comWidth">
            <div class="logo fl">
                <a href="#"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="慕课网"></a>
            </div>
            <h3 class="welcome_title">欢迎登录</h3>
        </div>
    </div>
</div>
<div class="loginBox">
    <div class="login_cont">
    	<form action="${pageContext.request.contextPath }/user" method="get">
	        <ul class="login">
	        	<li><font color="red">${requestScope.error }</font></li>
	            <li class="l_tit">邮箱/用户名/手机号</li>
	            <li class="mb_10"><input class="login_input user_icon" name="username" type="text"></li>
	            <li class="l_tit">密码</li>
	            <li class="mb_10"><input class="login_input user_icon" name="password" type="text"></li>
	            <li class="autoLogin"><input type="checkbox" id="a1" class="checked"><label for="a1">自动登录</label></li>
	            <li><input type="submit" value="登录" class="login_btn"></li>
	        </ul>
        </form>
    </div>
    <a href="${pageContext.request.contextPath }/page/register" class="reg_link"></a>
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
