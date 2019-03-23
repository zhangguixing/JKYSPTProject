<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <title>Busy - 电商</title>
    <style>
        /*
        任务
            1 .banner_imgs的宽度应该等于多少？
            2 如果让.number 里面a 居中？

         */

        body, ul {
            margin: 0;
            padding: 0;
        }

        li {
            list-style: none;
        }

        .banner {
            width: 800px;
            height: 450px;
            margin: 100px auto;
            position: relative;
            overflow: hidden;
        }

        #banner_imgs {
            width: 4000px;
            position: absolute;
            left: 0;
            top: 0;
        }

        #banner_imgs li {
            float: left;
        }

        #banner_imgs img {
            width: 800px;
            height: 100%;
            display: block;
        }

        .number {
            width: 100%;
            text-align: center;
            position: absolute;
            left: 0;
            bottom: 20px;
        }

        .number a {
            display: inline-block;
            width: 20px;
            background-color: #fff;
            height: 6px;
            overflow: hidden;
        }

        .number a.on {
            background-color: #F60;
        }
    </style>
    <script>
        window.onload = function () {
            var lis = document.getElementById('banner_imgs');
            var as = document.getElementsByClassName("number")[0].getElementsByTagName('a');
            for (var i = 0; i < as.length; i++) {
                as[i].id = i;
                as[i].onmouseover = function () {
                    for (var j = 0; j < as.length; j++) {
                        as[j].className = "";
                    }
                    as[this.id].className = "on";
                    lis.style.left =- this.id * 800 + "px";
                }
            }
        }
    </script>
</head>

<body>
<div class="banner">
    <ul id="banner_imgs">
        <li><a href="javascript:;"><img src="http://img.mukewang.com/53ad2498000174af13660768.jpg" alt=""></a></li>
        <li><a href="javascript:;"><img src="http://img.mukewang.com/53ad25df0001300613660768.jpg" alt=""></a></li>
        <li><a href="javascript:;"><img src="http://img.mukewang.com/53ad26010001ac1113660768.jpg" alt=""></a></li>
        <li><a href="javascript:;"><img src="http://img.mukewang.com/53ad26170001a86013660768.jpg" alt=""></a></li>
        <li><a href="javascript:;"><img src="http://img.mukewang.com/53ad26320001289e13660768.jpg" alt=""></a></li>
    </ul>
    <div class="number">
        <a class="on" href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
        <a href="javascript:;"></a>
    </div>
</div>
</body>
</html>
