<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>注册</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/main.css">
    <!--[if IE 6]>
    <script type="text/javascript" src="script/DD_belatedPNG_0.0.8a-min.script"></script>
    <script type="text/javascript" src="script/ie6Fixpng.script"></script>
    <![endif]-->
</head>
<body>
<div class="headerBar">
    <div class="logoBar reg_logo">
        <div class="comWidth">
            <div class="logo fl">
                <a href="#"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="慕课网"></a>
            </div>
            <h3 class="welcome_title">欢迎注册</h3>
        </div>
    </div>
</div>
<div class="regBox">
    <div class="login_cont">
        <ul class="login">
            <li><span class="reg_item"><i>*</i>账户名:</span><div class="input_item"><input class="login_input user_icon" type="text"></div></li>
            <li><span class="reg_item"><i>*</i>请设置密码:</span><div class="input_item"><input class="login_input user_icon" type="text"></div></li>
            <li><span class="reg_item"><i>*</i>请确认密码:</span><div class="input_item"><input class="login_input user_icon" type="text"></div></li>
            <li><span class="reg_item"><i>*</i>邮箱:</span><div class="input_item"><input class="login_input user_icon" type="text"></div></li>
            <li><span class="reg_item"><i>*</i>地址:</span><div class="input_item"><input class="login_input user_icon" type="text"></div></li>
            <li class="autoLogin"><span class="reg_item"><i></i></span><input type="checkbox" id="a1" class="checked"><label for="a1">我已经阅读并同意</label><a
                    href="#">《用户注册协议》</a></li>
            <li><span class="reg_item"><i></i></span><input type="button" class="reg_btn"></li>
        </ul>
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
