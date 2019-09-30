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
    <title>Title</title>
</head>
<body>
<h1>修改新闻</h1>
<%
    News news = (News)request.getAttribute("news");
%>
<div>
    <form action="UpdateNewsServlet" method="post">
        <table>
            <tr>
                <td>新闻编号</td>
                <td><input type="text" name="id" readonly="readonly" value="<%=news.getId()%>"></td>
            </tr>
            <tr>
                <td>新闻标题</td>
                <td><input type="text" name="title" value="<%=news.getTitle()%>"></td>
            </tr>
            <tr>
                <td>新闻正文</td>
                <td><textarea name="content" rows="10" cols="30"><%=news.getContent()%></textarea></td>
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
            <tr>
                <td><input type="submit" value="提交" name="submit"></td>
                <td><input type="reset" value="重置" name="submit"></td>
                <td><input type="button" value="返回" onclick=window.history.back()></td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
