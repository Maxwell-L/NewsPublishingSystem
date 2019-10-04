<%@ page import="com.vo.News" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/29
  Time: 22:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/viewNews.css">
    <title>Title</title>
</head>
<body>

<%
    News news = (News)request.getAttribute("news");
%>
<div class="block">
    <p>查 看 新 闻</p>
    <table id="tableStyle">
        <tr>
            <td class="positionAndColor">新闻标题</td>
            <td><input type="text" name="title" readonly="readonly" value="<%=news.getTitle()%>"></td>
        </tr>
        <tr>
            <td class="blankRow"></td>
        </tr>
        <tr>
            <td class="positionAndColor">新闻正文</td>
            <td><textarea name="content" readonly="readonly" rows="10" cols="30"><%=news.getContent()%></textarea></td>
        </tr>
    </table>
    <table id="tableStyleBottom">
        <tr>
            <td>发布人</td>
            <td><input type="text" name="username" readonly="readonly" value="<%=news.getUsername()%>"></td>
            <td class="halfWidth"></td>
            <td>发布时间</td>
            <td><input type="text" name="pubtime" readonly="readonly" value="<%=news.getPubtime()%>"></td>
            <td class="halfWidth"></td>
            <td><input type="button" value="返 回" onclick=window.history.back()></td>
        </tr>
    </table>
</div>

</body>
</html>
