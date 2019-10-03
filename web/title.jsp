<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.String"%>
<%@ page import="java.lang.Object"%>
<%@ page import="com.vo.User" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/title.css">
    <title>Title</title>
</head>
<body>
<%
    User user = (User)session.getAttribute("user");
%>
<table id="tableStyle">
    <tr>
        <td class="user">欢迎 <%=user.getUsername() %></td>
        <td><a target="_top" href="LoginOutServlet">退出登录</a></td>
    </tr>
</table>

</body>
</html>
