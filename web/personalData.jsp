<%@ page import="com.vo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/1
  Time: 9:08
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<body>
<h1>个人资料</h1>
<table>
    <tr>
        <td>用户名</td>
        <td><input type="text" readonly="readonly" value="<%=user.getUsername()%>"></td>
    </tr>

    <tr>
        <td>权限</td>
        <%
            int type = Integer.valueOf(user.getType());
            String limit;
            if(type == 0){
                limit = "普通用户";
            } else {
                limit = "管理员";
            }
        %>
        <td><input type="text" readonly="readonly" value="<%=limit%>"></td>
    </tr>

    <tr>
        <td>性别</td>
        <%
            String sex = user.getSex();
            if (sex.equals("男")) {
        %>
        <td><input type="radio" disabled="disabled" value="男" checked>男
            <input type="radio" disabled="disabled" value="女">女</td>
        <%
            } else {
        %>
        <td><input type="radio" disabled="disabled" value="男">男
            <input type="radio" disabled="disabled" value="女" checked>女</td>
        <%
            }
        %>
    </tr>
    <tr>
        <td>职业</td>
        <td><input type="text" readonly="readonly" value="<%=user.getProfession()%>"></td>
    </tr>
    <tr>
    <%
        String favourite = user.getFavourite();
        String[] favourites = favourite.split(",");
        List<String> favouritesList = Arrays.asList(favourites);
        if(favouritesList.contains("电脑网络")){
    %>
        <td><input type="checkbox" disabled="disabled" checked>电脑网络</td>
    <%
        } else {
    %>
        <td><input type="checkbox" disabled="disabled">电脑网络</td>
    <%
        }
        if(favouritesList.contains("影视娱乐")){
    %>
        <td><input type="checkbox" disabled="disabled" checked>影视娱乐</td>
    <%
        } else {
    %>
        <td><input type="checkbox" disabled="disabled">影视娱乐</td>
    <%
        }
        if(favouritesList.contains("棋牌娱乐")){
    %>
        <td><input type="checkbox" disabled="disabled" checked>棋牌娱乐</td>
    <%
        } else {
    %>
        <td><input type="checkbox" disabled="disabled">棋牌娱乐</td>
    <%
        }
    %>
    </tr>

    <tr>
        <td>个人说明</td>
        <td><textarea disabled="disabled" rows="10" cols="30"><%=user.getNote()%></textarea></td>
    </tr>
    <tr></tr>

    <tr>
        <td><input type="button" value="修改" onclick=window.location.href="updatePersonalData.jsp"></td>
        <td><input type="button" value="返回" onclick=window.location.href="content.jsp"></td>
    </tr>
</table>

</body>
</html>
