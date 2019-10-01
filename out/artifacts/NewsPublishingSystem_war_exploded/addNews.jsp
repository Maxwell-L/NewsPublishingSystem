<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 18:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>发布新闻</title>
</head>
<body>
<div>
    <h1>发布新闻</h1>
    <form action="AddNewsServlet" method="post">
        <table>
            <tr>
                <td>新闻标题</td>
                <td><input type="text" name="title"></td>
            </tr>
            <tr>
                <td>新闻正文</td>
                <td><textarea name="content" rows="10" cols="40"></textarea></td>
            </tr>
            <tr>
                <td><input type="submit" value="提交" name="submit"></td>
                <td><input type="reset" value="重置" name="reset"></td>
                <td><input type="button" value="返回" onclick=window.location.href="content.jsp"></td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>
