<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>健康养生平台-用户登录</title>
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
    <div class="logoBar login_logo"> 
        <div class="comWidth">
            <div class="logo fl">
                <a href="${pageContext.request.contextPath }/fontPageDisplay"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="健康养生平台"></a>
            </div>
            <h3 class="welcome_title">欢迎登录</h3>
        </div>
    </div>
</div>
<div class="loginBox">
    <div class="login_cont">
    	<form action="${pageContext.request.contextPath }/user/login" method="post">
	        <ul class="login">
	        	<li><font color="red" size="2">${requestScope.error }</font></li>
	            <li class="l_tit">用户名</li>
	            <li class="mb_10"><input class="login_input user_icon" name="username" type="text"></li>
	            <li class="l_tit">密码</li>
	            <li class="mb_10"><input class="login_input user_icon" name="password" type="password"></li>
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
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
