<%--
  Created by IntelliJ IDEA.
  User: zjq
  Date: 18-4-22
  Time: 下午6:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>欢迎来到ZJQ的主界面</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.bootcss.com/bootstrap/4.1.0/css/bootstrap.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.bootcss.com/popper.js/1.12.5/umd/popper.min.js"></script>
    <script src="https://cdn.bootcss.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
    <style type="text/css">
        h1 {
            text-align: center;
            text-shadow: 2px 2px 2px #FF0000;
            color: coral;
            font-family: sans-serif;

        }

        h2 {
            text-align: right;
            text-shadow: 2px 2px 2px #FF0000;
            color: coral;
            font-family: sans-serif;
        }

        .message {
            background: aquamarine;
            font-family: "YaHei Consolas Hybrid";
            text-align: left;

        }

        a:link, a:visited {
            display: block;
            font-weight: bold;
            color: #FFFFFF;
            background-color: #98bf21;
            width: 120px;
            text-align: center;
            padding: 4px;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>杂七杂八主界面</h1>
    <h2>爱你恨你怨你念你深情永不变
        <small>别忘了寂寞的山谷的角落野百合也有春天</small>
    </h2>
    <div class="row">
        <div class="col-md-4">
            <div class="message">
                <h3 align="center">个人信息简介</h3>
                <p>你好，这是赵佳强</p>
                <p>邮箱地址：this@iszjq.cc</p>
                <p>毕业院校：安徽科技学院</p>
                <p>专业：计算机科学与技术</p>
                <p>学号：2701150237</p>
                <p>帅照：<img src="" alt="还没有呢"></p>
            </div>

        </div>

        <div class="col-md-4" align="center">
            </br>
            <p>已有账号？</p>
            <a href="login.jsp">点击进入网站的登录页面</a>
            </br>
            </br>
            <p>你还没有账号吗？</p>
            <a href="register.html">点击进入网站的注册界面</a>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-md-4">
            <h3>第一列</h3>
            <p>学的不仅是技术，更是梦想！</p>
            <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
        </div>
        <div class="col-md-4">
            <h3>第二列</h3>
            <p>学的不仅是技术，更是梦想！</p>
            <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
        </div>
        <div class="col-md-4">
            <h3>第三列</h3>
            <p>学的不仅是技术，更是梦想！</p>
            <p>再牛逼的梦想,也抵不住你傻逼似的坚持！</p>
        </div>
    </div>
</div>

</body>
</html>
