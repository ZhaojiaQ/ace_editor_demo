<%--
  Created by IntelliJ IDEA.
  User: zjq
  Date: 18-4-30
  Time: 下午3:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@page import="java.sql.*" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="JavaScript/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="bootstrap-3.3.7/js/bootstrap.min.js"></script>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" type="text/css" rel="stylesheet">
</head>
<body>
<%
    //接收login界面的表单信息
    String userName = request.getParameter("userName");
    String password = request.getParameter("password2");
%>
<%!
    boolean flag = false;
    public static final String DBURL = "jdbc:mysql://localhost:3306/study";
    public static final String DBUSER = "debian-sys-maint";
    public static final String PASSWORD = "XTCw1Z1fmTFIGqVT";
%>
<%
    Class.forName("com.mysql.jdbc.Driver");
    Connection conn = DriverManager.getConnection(DBURL, DBUSER, PASSWORD);
    String sql = "insert into userlist (userName, password) value (?,?)";
    PreparedStatement psmt = conn.prepareStatement(sql);
    psmt.setString(1, userName);
    psmt.setString(2, password);
    int rs = psmt.executeUpdate();
    if(rs==1)
        flag=true;
    psmt.close();
    conn.close();
%>

<%
    if (flag) {
%>
<h1>用户注册成功，欢迎<a href="login.jsp">登录</a></h1>
<%
} else {
%>
<h1>用户注册失败，请重新 <a href="register.jsp">注册</a></h1>
<%
    }
%>
</body>
</html>
