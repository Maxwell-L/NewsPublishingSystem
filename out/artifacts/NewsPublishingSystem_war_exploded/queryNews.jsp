<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>查看新闻</h1>
<form action="QueryNewsServlet" method="post">
    <table>
        <tr>
            <td>新闻标题</td>
            <td><input type="text" name="title"></td>
            <td>发布人</td>
            <td><input type="text" name="username"></td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="查询" name="submit">
            </td>
        </tr>
    </table>
</form>
</body>
</html>
