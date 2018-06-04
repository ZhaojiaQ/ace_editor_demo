<%--
  Created by IntelliJ IDEA.
  User: zjq
  Date: 18-4-28
  Time: 上午1:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="JavaScript/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="JavaScript/login.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<%
    //接收login界面的表单信息
    String userName = request.getParameter("userName");
    String password = request.getParameter("password");
%>
<%!
    boolean flag = false;
    public static final String DBURL = "jdbc:mysql://localhost:3306/study";
    public static final String DBUSER = "root";
    public static final String PASSWORD = "zjqzjq";
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(DBURL, DBUSER, PASSWORD);
    String sql = "select count(*) from userlist where userName=? and password =?";
    PreparedStatement psmt = conn.prepareStatement(sql);
    psmt.setString(1, userName);
    psmt.setString(2, password);
    ResultSet rs = psmt.executeQuery();
    if (rs.next()) {
        if (rs.getInt(1) > 0) {
            flag = true;
        }
    }
    rs.close();
    psmt.close();
    conn.close();
%>

<%
    if (flag) {
%>
<h1>用户登录成功，欢迎光临</h1>
<%
} else {
%>
<h1>用户登录失败，请重新 <a href="login.jsp">登录</a></h1>
<%
    }

%>
</body>
</html>
