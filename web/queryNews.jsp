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

        <%
            String title = request.getParameter("title");
            String username = request.getParameter("username");
            List<News> newsList = (List<News>)request.getAttribute("newsList");
            if(newsList != null){
        %>
        <tr>
            <td>新闻编号</td><td>新闻标题</td><td>发布人</td><td>发布时间</td><td>操作</td>
        </tr>
        <%
                for(int i = 0; i < newsList.size(); i++){
                    News news = newsList.get(i);
        %>
        <tr>
            <td><%=news.getId()%></td>
            <td><%=news.getTitle()%></td>
            <td><%=news.getUsername()%></td>
            <td><%=news.getPubtime()%></td>
            <td colspan="3">
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
        <tr>
            <td><input type="button" value="返回" onclick=window.location.href="content.jsp"></td>
        </tr>
    </table>
</form>
</body>
</html>
