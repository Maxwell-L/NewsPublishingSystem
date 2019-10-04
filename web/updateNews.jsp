<%@ page import="com.vo.News" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/30
  Time: 11:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/updateNews.css">
    <title>Title</title>
</head>
<body>
<script src="js/updateNews.js"></script>
<%
    News news = (News)request.getAttribute("news");
%>
<div class="block">
    <p>修 改 新 闻</p>
    <form action="UpdateNewsServlet?id=<%=news.getId()%>" method="post" name="updateNews">
        <table id="tableStyle">
            <tr>
                <td class="positionAndColor">新闻标题</td>
                <td><input type="text" name="title" value="<%=news.getTitle()%>" onfocus="titleFocus(this)" onblur="titleBlur(this)"></td>
            </tr>
            <tr>
                <td class="blankRow"></td>
            </tr>
            <tr>
                <td class="positionAndColor">新闻正文</td>
                <td><textarea name="content" rows="10" cols="30"><%=news.getContent()%></textarea></td>
            </tr>
        </table>
        <table id="tableStyleBottom">
            <tr>
                <td class="halfWidth"></td>
                <td><input type="submit" value="提 交" name="submit"></td>
                <td class="halfWidth"></td>
                <td><input type="reset" value="重 置" name="submit"></td>
                <td class="halfWidth"></td>
                <td><input type="button" value="返 回" onclick=window.history.back()></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
