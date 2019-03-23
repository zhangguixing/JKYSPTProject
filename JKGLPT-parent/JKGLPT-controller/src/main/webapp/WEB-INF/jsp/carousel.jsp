<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>

    <!--css 层叠样式表-->	
    <style type="text/css">
        *{
            margin: 0;
            padding: 0;
        }
        #banner{
            width: 730px;
            height: 454px;
            left: -286px;
  			top: -123px;
            background-color: #ffcccc;
            margin:100px auto 0;
            position: relative;
        }
        .pic{
            width: 730px;
            height: 454px;
            left: -159px;
  			top: 24px;
            position: relative;
        }
        .pic img{
            position: absolute;
            top:-99;left: -444;
            display:none;
        }
        .btn{
            width: 145px;
            height: 18px;
            left: 249px;
  			top: 318px;
            position: absolute;
            bottom: 10px;
            margin-left:-75px;
        }
        .btn ul li{
            list-style-type: none;
            float: left;
            width: 18px;
            height: 18px;
            background-color: #333;
            border-radius: 9px;
            color: #fff;
            font-size: 12px;
            font-family:'Microsoft yahei';
            text-align: center;
            line-height: 18px;
            cursor: pointer;
            margin: 0 3px;
        }
        .btn ul li.on{background-color: #B1191A;}
    </style>


</head>
<body>
   <div id="banner">
       <!--图片区-->
       <div class="pic">
           <img src="${pageContext.request.contextPath }/images/banner/1522390407685_0.jpg" style="display: block;"/>
           <img src="${pageContext.request.contextPath }/images/banner/1516689939741_44.jpg"/>
           <img src="${pageContext.request.contextPath }/images/banner/1520240354540_76.jpg"/>
           <img src="${pageContext.request.contextPath }/images/banner/1521089510258_17.jpg"/>
           <img src="${pageContext.request.contextPath }/images/banner/1521194959328_66.jpg"/>
           <img src="${pageContext.request.contextPath }/images/banner/1521708994513_17.jpg"/>
           
       </div>
       <!--按钮区-->
       <div class="btn">
           <ul>
               <li class="on">1</li>
               <li>2</li>
               <li>3</li>
               <li>4</li>
               <li>5</li>
               <li>6</li>
           </ul>
       </div>

   </div>

    <script type="text/javascript"src="${pageContext.request.contextPath }/script/jquery-1.8.0.min.js"></script>
    <script type="text/javascript">
        $(function () {

            var index=0;
            $('div.btn ul li').hover(function(){
                index=$(this).index();
               $(this).addClass('on').siblings().removeClass('on');
               $('div.pic img').eq(index).stop(true).fadeIn().siblings().stop(true).fadeOut();
               },function (){});
        var play =setInterval(auto,2000);
            $('#banner').hover(function () {
                  clearInterval(play);
            },function () {

            });
            function auto () {
                index++;
                index%=6;//index = index % 6;
                $('div.btn ul li').eq(index).addClass('on').siblings().removeClass('on');
                $('div.pic img').eq(index).stop(true).fadeIn().siblings().stop(true).fadeOut();
            }
        });
    </script>
</body>
</html>