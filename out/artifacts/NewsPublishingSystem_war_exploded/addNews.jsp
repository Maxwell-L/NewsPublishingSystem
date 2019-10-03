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
    <link rel="stylesheet" type="text/css" href="css/addNews.css">
    <title>发布新闻</title>
</head>
<body>
<script src="js/addNews.js"></script>
<div class="block">
    <p>发 布 新 闻</p>
    <form action="AddNewsServlet" method="post" name="addNews">
        <table id="tableStyle">
            <tr>
                <td class="positionAndColor">新闻标题</td>
                <td><input type="text" name="title" placeholder="请输入标题" onfocus="titleFocus(this)" onblur="titleBlur(this)"></td>
            </tr>
            <tr>
                <td class="blankRow"></td>
            </tr>
            <tr>
                <td class="positionAndColor">新闻正文</td>
                <td><textarea name="content" rows="10" cols="40"></textarea></td>
            </tr>
        </table>
        <table id="tableStyleBottom">
            <tr>
                <td></td>
                <td class="halfWidth"></td>
                <td><input type="submit" value="发 布" name="submit"></td>
                <td></td>
                <td class="halfWidth"></td>
                <td><input type="reset" value="重 置" name="reset"></td>
                <td></td>
                <td class="halfWidth"></td>
                <td><input type="button" value="返 回" onclick=window.location.href="content.jsp"></td>
            </tr>
        </table>
    </form>

</div>
</body>
</html>
