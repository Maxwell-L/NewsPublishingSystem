<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/2
  Time: 9:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>修改密码</h1>
<form action="ChangePasswordServlet" method="post">
    <table>
        <tr>
            <td>原密码</td>
            <td><input type="password" name="password"></td>
        </tr>
        <tr>
            <td>新密码</td>
            <td><input type="password" name="newPassword"></td>
        </tr>
        <tr>
            <td>确认新密码</td>
            <td><input type="password" name="reNewPassword"></td>
        </tr>
        <tr></tr>

        <tr>
            <td><input type="submit" value="提交" name="submit"></td>
            <td><input type="button" value="返回" onclick=window.location.href="content.jsp"></td>
        </tr>

    </table>
</form>
</body>
</html>
