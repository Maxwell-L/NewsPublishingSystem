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
    <title>Title</title>
</head>
<body>
<h1>查看新闻</h1>
<%
    News news = (News)request.getAttribute("news");
%>
<div>
    <table>
        <tr>
            <td>新闻标题</td>
            <td><input type="text" name="title" readonly="readonly" value="<%=news.getTitle()%>"></td>
        </tr>
        <tr>
            <td>新闻正文</td>
            <td><textarea name="content" readonly="readonly" rows="10" cols="30"><%=news.getContent()%></textarea></td>
        </tr>
        <tr>
            <td>发布人</td>
            <td><input type="text" name="username" readonly="readonly" value="<%=news.getUsername()%>"></td>
        </tr>
        <tr>
            <td>发布时间</td>
            <td><input type="text" name="pubtime" readonly="readonly" value="<%=news.getPubtime()%>"></td>
        </tr>
        <tr>

        </tr>
    </table>
    <input type="button" value="返回" onclick=window.history.back()>
</div>

</body>
</html>
