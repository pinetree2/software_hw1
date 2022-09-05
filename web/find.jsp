<%@ page import="dao.InfoDAO" %>
<%@ page import="dto.InfoDTO" %>

<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
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
    <title>찾기 화면입니다.</title>
</head>
<body>
<div class = "btn-group">
    <h1>찾기</h1>
    <button type="button" id="btn_main" onclick="location.href='main.jsp' ">메인으로 돌아가기</button>
    <form method="post" name = "Find" action ="find_act.jsp">
        <table class="pull-right">
            <tr>
                <td><select class = "form-control" name = "searchField">
                    <option value="name">이름</option>

                </select>
                </td>
                <td><input type="text" class="form-control"
                           placeholder="검색어 입력" name="searchText" maxlength="50"></td>
                <td><button type="submit" class="btn-success">검색</button>
                </td>
            </tr>
        </table>
    </form>
</div>

</body>
</html>
