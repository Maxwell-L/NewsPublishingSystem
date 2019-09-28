<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
</head>
<body>
<div>
    <h1>登录</h1>
    <form action="LoginServlet" method="post" name="login">
        <table>
            <tr>
                <td>用户名</td>
                <td><input type="text" name="username"></td>
            </tr>

            <tr>
                <td>密码</td>
                <td><input type="password" name="password"></td>
            </tr>
        </table>
        <div>
            <input type="submit" value="登录">
        </div>
        <input type="button" name="register" value="注册" onclick=window.location.href="register.jsp">
    </form>
</div>

</body>
</html>
