<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-02
  Time: 오전 12:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    .btn-group{
        text-align: center;
        margin:auto;
        width:50%;
        display :inline-block;
    }
    #btn_add{
       margin-top: 10%;
        width: 250px;
    }
    #btn_find{
        margin-top: 10%;
        width: 250px;
    }
    #btn_look{
        margin-top: 10%;
        width: 250px;
    }
</style>
<head>
    <title>
        반려 동물 관리
        웹 어플리케이션
    </title>
</head>
<body>

<div class = "btn-group">
    <h1>반려 동물 관리 웹 어플리케이션</h1>
    <button type="button" id="btn_add" onclick="location.href='add.jsp' ">추가</button>
    <br>
    <button type="button" id="btn_look" onclick="location.href='look.jsp' ">조회</button>
    <br>
    <button type="button" id="btn_find" onclick="location.href='find.jsp' ">찾기</button>
</div>

</body>
</html>
