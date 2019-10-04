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
    <link rel="stylesheet" type="text/css" href="css/changePassword.css">
    <title>Title</title>
</head>
<body>
<script src="js/changePassword.js"></script>
<div class="block">
<p>修 改 密 码</p>
<form action="ChangePasswordServlet" method="post" name="changePassword">
    <table id="tableStyle">
        <tr>
            <td class="positionAndColor">原密码</td>
            <td><input type="password" placeholder="请输入原密码" name="password" onfocus="prePasswordfocus(this)" onblur="prePasswordblur(this)"></td>
        </tr>
        <tr>
            <td class="positionAndColor">新密码</td>
            <td><input type="password" placeholder="请输入新密码" name="newPassword" onfocus="passwordfocus(this)" onblur="passwordblur(this)"></td>
        </tr>
        <tr>
            <td class="positionAndColor">确认新密码</td>
            <td><input type="password" placeholder="请再一次输入新密码" name="reNewPassword" onfocus="repasswordfocus(this)" onblur="repasswordblur(this)"></td>
        </tr>
    </table>
    <table id="tableStyleBottom">
        <tr>
            <td class="halfWidth"></td>
            <td><input type="submit" value="提 交" name="submit"></td>
            <td class="halfWidth"></td>
            <td><input type="button" value="返 回" onclick=window.location.href="content.jsp"></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
