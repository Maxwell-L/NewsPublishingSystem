<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 14:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/register.css">
    <title>新闻发布系统</title>
</head>
<body>
<script src="js/register.js"></script>
    <div class="block">
        <p>创 建 账 号</p>
    <div class="innerBlock">
        <form action="RegisterServlet" method="post" name="register">
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
                    <td class="positionAndColor">确认密码</td>
                    <td><input type="password" name="repassword" placeholder="请再一次输入密码" onfocus="passwordfocus(this)" onblur="repasswordblur(this)"></td>
                </tr>
                <tr>
                    <td class="positionAndColor">性 别</td>
                    <td class="select"><input type="radio" name="sex" value="男" checked>男
                    <input type="radio" name="sex" value="女">女</td>
                </tr>
                <tr>
                    <td class="positionAndColor">职 业</td>
                    <td><input type="text" name="profession"></td>
                </tr>
                <tr>
                    <td class="positionAndColor">个人爱好</td>
                    <td>
                        <%--嵌套表格--%>
                        <table>
                            <tr>
                                <td class="select"><input type="checkbox" name="favourite" value="电脑网络">电脑网络</td>
                                <td class="select"><input type="checkbox" name="favourite" value="影视娱乐">影视娱乐</td>
                            </tr>
                            <tr>
                                <td class="select"><input type="checkbox" name="favourite" value="棋牌娱乐">棋牌娱乐</td>
                            </tr>
                        </table>
                    </td>

                </tr>
                <tr>
                    <td class="positionAndColor">个人说明</td>
                    <td><textarea name="note"></textarea></td>
                </tr>
                <tr>
                    <td class="blankRow"></td>
                </tr>
            </table>
            <div class="submitCenter">
                <input type="submit" value="注 册" name="submit">
            </div>
            <div class="buttonCenter">
                <input type="button" value="已有账号？去登录" onclick=window.location.href="login.jsp">
            </div>
        </form>
    </div>
    </div>
</body>
</html>
