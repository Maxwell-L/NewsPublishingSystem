<%@ page import="com.vo.User" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Arrays" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/10/1
  Time: 20:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/updatePersonalData.css">
    <title>Title</title>
</head>
<%
    User user = (User)request.getSession().getAttribute("user");
%>
<body>
<div class="block">
<p>个 人 资 料</p>
<form action="UpdatePersonalDataServlet" method="post">
    <table id="tableStyleTop">
        <tr>
            <td class="positionAndColor">用户名</td>
            <td><input type="text" name="username" value="<%=user.getUsername()%>"></td>

            <td class="positionAndColor">权 限</td>
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
            <td class="positionAndColor">性 别</td>
            <%
                String sex = user.getSex();
                if (sex.equals("男")) {
            %>
            <td><input type="radio" name="sex" value="男" checked>男
                <input type="radio" name="sex" value="女">女</td>
            <%
            } else {
            %>
            <td><input type="radio" name="sex" value="男">男
                <input type="radio" name="sex" value="女" checked>女</td>
            <%
                }
            %>

            <td class="positionAndColor">职 业</td>
            <td><input type="text" name="profession" value="<%=user.getProfession()%>"></td>
        </tr>
    </table>
    <table id="tableStyleMedium">
        <tr>
            <td class="positionAndColor">个人爱好</td>
            <%
                String favourite = user.getFavourite();
                String[] favourites = favourite.split(",");
                List<String> favouritesList = Arrays.asList(favourites);
                if(favouritesList.contains("电脑网络")){
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="电脑网络" checked>电脑网络</td>
            <%
            } else {
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="电脑网络">电脑网络</td>
            <%
                }
                if(favouritesList.contains("影视娱乐")){
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="影视娱乐" checked>影视娱乐</td>
            <%
            } else {
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="影视娱乐">影视娱乐</td>
            <%
                }
                if(favouritesList.contains("棋牌娱乐")){
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="棋牌娱乐" checked>棋牌娱乐</td>
            <%
            } else {
            %>
            <td class="checkbox"><input type="checkbox" name="favourite" value="棋牌娱乐">棋牌娱乐</td>
            <%
                }
            %>
        </tr>
    </table>
    <table id="tableStyleBottom">
        <tr>
            <td class="positionAndColor">个人说明</td>
            <td><textarea rows="10" cols="30" name="note"><%=user.getNote()%></textarea></td>
        </tr>
    </table>
    <table id="tableLink">
        <tr>
            <td></td>
            <td></td>
            <td><input type="submit" value="保 存" name="submit"></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input type="button" value="返 回" onclick=window.history.back()></td>
        </tr>
    </table>
</form>
</div>
</body>
</html>
