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
<html>
<head>
    <title>错误</title>
</head>
<body>
<div>
    <%
        List<String> errorList = (List<String>)request.getAttribute("errorList");
    %>
    <font color="red" >您的输入有以下错误，请重新输入：</font><br>
    <%
        for(String error: errorList){
    %>
    <font color="red" ><%= error%></font><br>
    <%
        }
    %>
    <div>
        <input type="button" value="返回" onclick=window.history.back()>
    </div>
</div>

</body>
</html>
