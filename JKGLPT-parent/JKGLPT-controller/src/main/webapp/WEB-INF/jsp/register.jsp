<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>健康养生平台-注册</title>
    <link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/reset.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/style/main.css">
    <script type="text/javascript" src="${pageContext.request.contextPath }/script/jquery-1.8.0.min.js"></script>
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
                <a href="${pageContext.request.contextPath }/fontPageDisplay"><img src="${pageContext.request.contextPath }/images/logo/logo.png" alt="健康养生平台"></a>
            </div>
            <h3 class="welcome_title">欢迎注册</h3>
        </div>
    </div>
</div>
<script type="text/javascript">
	function check(form){
		alert(form.nickname.value);
		if($.trim(form.nickname.value) == "")
		{
			alert("昵称不能为空！");
			return false;
		}
		if($.trim(form.username.value) == "")
		{
			alert("用户名不能为空！");
			return false;
		}
		if($.trim(form.password.value) == "")
		{
			alert("密码不能为空！");
			return false;
		}
		if(form.repassword.value != form.password.value)
		{
			alert("密码不一致！");
			return false;
		}
		if($.trim(form.email.value) == "")
		{
			alert("邮箱不能为空！");
			return false;
		}
		var emailRegex = /^[A-Za-z0-9\u4e00-\u9fa5]+@[a-zA-Z0-9_-]+(\.[a-zA-Z0-9_-]+)+$/;
		if(!emailRegex.test($.trim(form.email.value))){
			alert("邮箱格式不正确!");
			return false;
		}
		if($.trim(form.phone.value) == "")
		{
			alert("手机不能为空！");
			return false;
		}
		var phoneRegex = /^1[3|4|5|7|8][0-9]{9}$/;
		if(!phoneRegex.test($.trim(form.phone.value))){
			alert("手机号格式不正确");
			return false;
		}
		return true;
	}
</script>
<div class="regBox">
    <div class="login_cont">
    	<form action="${pageContext.request.contextPath }/user/register" method="POST">
	        <ul class="login">
	            <li><span class="reg_item"><i>*</i>昵称:</span><div class="input_item"><input class="login_input user_icon" name="nickname" type="text"></div></li>
	            <li><span class="reg_item"><i>*</i>账户名:</span><div class="input_item"><input class="login_input user_icon" name="username" type="text"></div></li>
	            <li><span class="reg_item"><i>*</i>请设置密码:</span><div class="input_item"><input class="login_input user_icon" name="password" type="password"></div></li>
	            <li><span class="reg_item"><i>*</i>请确认密码:</span><div class="input_item"><input class="login_input user_icon" name="repassword" type="password"></div></li>
	            <li><span class="reg_item"><i>*</i>邮箱:</span><div class="input_item"><input class="login_input user_icon" name="email" type="email"></div></li>
	            <li><span class="reg_item"><i>*</i>手机:</span><div class="input_item"><input class="login_input user_icon" name="phone" type="text"></div></li>
	            <li class="autoLogin"><span class="reg_item"><i></i></span><input type="checkbox" id="a1" class="checked"><label for="a1">我已经阅读并同意</label><a
	                    href="#">《用户注册协议》</a></li>
	            <li><span class="reg_item"><i></i></span><input type="submit" onclick="return check(this.form)" class="reg_btn"></li>
	        </ul>
        </form>
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
<jsp:include page="bottom.jsp"></jsp:include>
</body>
</html>
