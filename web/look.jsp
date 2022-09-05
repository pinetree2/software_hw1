<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-02
  Time: 오전 12:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import ="dao.InfoDAO" %>
<%@ page import ="dto.InfoDTO" %>
<%@ page import ="java.util.List" %>
<jsp:useBean id="InfoDAO" class = "dao.InfoDAO" />



<html>
<style>
    .btn-group{
        text-align: center;
        margin:auto;
        width:50%;
        display :inline-block;
    }
</style>
<head>
    <meta charset = "UTF-8">
    <title>조회 화면입니다.</title>


</head>

<%
    InfoDAO dao = new InfoDAO();
    List<InfoDTO> list = dao.selectAll();
%>

<body>

<div class = "btn-group">

    <h1>조회</h1>
    <button type="button" id="btn_main" onclick="location.href='main.jsp' ">메인으로 돌아가기</button>
    <table border = "1">
        <col width = "100px">
        <col width = "100px">
        <col width = "100px">
        <col width = "100px">
        <col width = "100px">
        <col width = "100px">

        <tr>
            <th>이름</th>
            <th>생일</th>
            <th>종류</th>
            <th>품종</th>
            <th>주인이름</th>
            <th>휴대폰번호</th>
        </tr>
<%
    for(int i=0; i<list.size(); i++){

%>
    <tr>
        <td><%= list.get(i).getName() %></td>
        <td><%= list.get(i).getBirth() %></td>
        <td><%= list.get(i).getType() %></td>
        <td><%= list.get(i).getKind() %></td>
        <td><%= list.get(i).getOwner() %></td>
        <td><%= list.get(i).getPhone() %></td>


    </tr>

<%
    }
%>
    </table>


</div>
</body>
</html>
