<%@ page import="com.vo.News" %>
<%@ page import="java.util.List" %>
<%@ page import="com.vo.User" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/28
  Time: 19:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/queryNews.css">
    <title>Title</title>
</head>
<body>

<div class="block">
<p>查 看 新 闻</p>
<form action="QueryNewsServlet" method="post" name="queryNews">
    <table id="tableStyle">
        <tr>
            <td class="positionAndColor">新闻标题</td>
            <td><input type="text" name="title"></td>
            <td class="positionAndColor">发布人</td>
            <td><input type="text" name="username"></td>
        </tr>
    </table>
    <table id="tableSubmit">
        <tr>
            <td></td>
            <td></td>
            <td>
                <input type="submit" value="查 询" name="submit">
            </td>
            <td></td>
            <td></td>
            <td></td>
            <td>
                <input type="button" value="返 回" onclick=window.location.href="content.jsp">
            </td>
        </tr>
    </table>
    <div class="subBlock">
    <div class="subSubBlock">
    <table id="tableNewsStyle">
        <%
            String title = request.getParameter("title");
            String username = request.getParameter("username");
            List<News> newsList = (List<News>)request.getAttribute("newsList");
            if(newsList != null){
        %>
        <tr>
            <td class="color" width="100px">新闻编号</td>
            <td class="color" width="300px">新闻标题</td>
            <td class="color" width="150px">发布人</td>
            <td class="color" width="200px">发布时间</td>
            <td class="color" width="150px">操作</td>
        </tr>
        <div>
        <%
                for(int i = 0; i < newsList.size(); i++){
                    News news = newsList.get(i);
        %>
        <tr>
            <td><%=news.getId()%></td>
            <td class="title"><%=news.getTitle()%></td>
            <td class="person"><%=news.getUsername()%></td>
            <td class="time"><%=news.getPubtime()%></td>
            <td class="person" colspan="3">
            <%
                User user = (User)session.getAttribute("user");
                if(user.getId() == news.getUserid() || user.getType().equals("1")){
            %>
                <a href="GetNewsByIdServlet?opration=view&id=<%=news.getId()%>">查看</a>
                <a href="GetNewsByIdServlet?opration=update&id=<%=news.getId()%>">修改</a>
                <a href="DeleteNewsServlet?title=<%=title%>&username=<%=username%>&id=<%=news.getId()%>">删除</a>
                <%
                    } else {
                %>
                <a href="GetNewsByIdServlet?opration=view&id=<%=news.getId()%>">查看</a>
                <%
                    }
                %>
            </td>
        </tr>
        <%
                }
            }
        %>
    </table>
    </div>
    </div>
</form>
</div>
</body>
</html>
