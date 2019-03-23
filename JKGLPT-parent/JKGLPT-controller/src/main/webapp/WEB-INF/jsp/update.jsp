<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="shortcut icon" 
           href="${pageContext.request.contextPath }/images/logo/favicon.png" type="image/x-icon" />
</head>
<body>
	<form action="updateDrugs" method="post" enctype="multipart/form-data">
		药品名称：<input name="drugsName"><br/>
		药品图片：<input name="drugsPic" type="file" ><br/>
		药品价格：<input name="drugsPrice"><br/>
		上传者id：<input name="sellerId"><br/>
		药品描述：<input name="drugsInfo"><br/>
		上传特色名称：<br/>新特药<input name="drugsCharacteristicName" type="radio" value="新特药" checked="checked"><br/>
				   家庭常被药<input name="drugsCharacteristicName" type="radio" value="家庭常备药"><br/>
				   乙肝<input name="drugsCharacteristicName" type="radio" value="乙肝"><br/>
				   减肥瘦身<input name="drugsCharacteristicName" type="radio" value="减肥瘦身"><br/>
				   中药抓药<input name="drugsCharacteristicName" type="radio" value="中药抓药"><br/>
				   特效药<input name="drugsCharacteristicName" type="radio" value="特效药"><br/>
				   外伤肿痛<input name="drugsCharacteristicName" type="radio" value="外伤肿痛"><br/>
				   
		上传类别名称：<br/>专科用药<input name="drugsClassificationName" type="radio" value="专科用药" checked="checked"><br/>
				   家庭常备<input name="drugsClassificationName" type="radio" value="家庭常备"><br/>
				   男科中心<input name="drugsClassificationName" type="radio" value="男科中心"><br/>
				   母婴乐园<input name="drugsClassificationName" type="radio" value="母婴乐园"><br/>
				   美肤中心<input name="drugsClassificationName" type="radio" value="美肤中心"><br/>
				   滋补保健<input name="drugsClassificationName" type="radio" value="滋补保健"><br/>
				   器械商城<input name="drugsClassificationName" type="radio" value="器械商城"><br/>
		<input type="submit" value="提交">
	</form>
</body>
</html>