<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/9/27
  Time: 23:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%@ page import="java.lang.*" %>
<%@ page import="com.vo.User" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="css/error.css">
    <title>错误</title>
</head>
<body>
<div class="block">
    <%
        List<String> errorList = (List<String>)request.getAttribute("errorList");
    %>
    <p><font color="red" >操 作 失 败</font></p>
    <%
        for(String error: errorList){
    %>
    <div class="errorMessage"><font color="red" ><%= error%></font></div>
    <%
        }
    %>
    <div>
        <input type="button" value="返 回" onclick=window.history.go(-1)>
    </div>
</div>

</body>
</html>
