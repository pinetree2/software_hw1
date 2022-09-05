<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-02
  Time: 오전 12:21
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
</style>
<head>
    <title>추가 화면입니다.</title>
</head>
<body>

<div class = "btn-group">
    <h1> 추가 </h1>
    <button type="button" id="btn_main" onclick="location.href='main.jsp' ">메인으로 돌아가기</button>
    <form action = "add_alert.jsp" method="get">
    <table border="1">
        <tr>
            <th>이름 : </th>
            <td><input type = "text" name ="am_name"></td>
        </tr>
        <tr>
            <th>생일 : </th>
            <td><input type = "date" name ="am_birth"></td>
        </tr>
        <tr>
            <th>종류 : </th>
            <td><input type = "text" name ="am_type"></td>
        </tr>
        <tr>
            <th>품종 : </th>
            <td><input type = "text" name ="am_kind"></td>
        </tr>
        <tr>
            <th>주인이름 : </th>
            <td><input type = "text" name ="am_owner"></td>
        </tr>
        <tr>
            <th>휴대폰 번호 : </th>
            <td><textarea rows="11" cols ="60" name ="am_phone"></textarea>
        </tr>
        <tr>
            <td colspan="2" align="right">
                <input type="submit" value="입력">
                <input type="button" value="취소" onclick="location.href = 'index.jsp'">
            </td>
        </tr>
        </table>
    </form>
</div>
</body>
</html>
