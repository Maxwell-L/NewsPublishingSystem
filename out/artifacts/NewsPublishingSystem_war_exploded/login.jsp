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
    <link rel="stylesheet" type="text/css" href="css/login.css">
    <title>新闻发布系统</title>
</head>
<body>
<script src="js/login.js"></script>
<div class="block">
    <p>用 户 登 录</p>
    <form action="LoginServlet" method="post" name="login">
        <table id="tableStyle">
            <tr>
                <td class="positionAndColor">用户名</td>
                <td><input type="text" name="username" placeholder="请输入用户名" onfocus="usernamefocus(this)" onblur="usernameblur(this)"></td>
            </tr>

            <tr>
                <td class="positionAndColor">密 码</td>
                <td><input type="password" name="password" placeholder="请输入密码" onfocus="passwordfocus(this)" onblur="passwordblur(this)"></td>
            </tr>
            <tr>
                <td class="blankRow"></td>
            </tr>
        </table>
        <div>
            <input type="submit" value="登 录">
        </div>
        <input type="button" name="register" value="没有账号？去注册一个" onclick=window.location.href="register.jsp">
    </form>
</div>

</body>
</html>
