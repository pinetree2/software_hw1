<%@ page import="dto.InfoDTO" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-06
  Time: 오전 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String DB_URL = "jdbc:mysql://localhost:3306/animal?useSSL=false&serverTimezone=UTC";
    String DB_USER = "root";
    String DB_PASSWORD= "1234";
    Connection conn;
    Statement stmt;

    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
        stmt = conn.createStatement();
        conn.close();
    }
    catch(Exception e){

    }
%>
시발 모르겠어,,
</body>
</html>
