<%@ page import="com.vo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 21:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/menu.css">
    <title>Title</title>
</head>
<body>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<table id="tableStyle">
    <tr>
        <td><a href="addNews.jsp" target="content">发布新闻</a></td>
    </tr>
    <tr>
        <td><a href="queryNews.jsp" target="content">查看新闻</a></td>
    </tr>
    <tr>
        <td><a href="personalData.jsp" target="content">个人资料</a></td>
    </tr>
    <%
        if(Integer.valueOf(user.getType()) == 1){
    %>
    <tr>
        <td><a href=#>用户管理</a></td>
    </tr>
    <%
        }
    %>
    <tr>
        <td><a href="changePassword.jsp" target="content">修改密码</a></td>
    </tr>
</table>
</body>
</html>
