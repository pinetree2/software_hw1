<%@ page import="dao.InfoDAO" %>
<%@ page import="dto.InfoDTO" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-06
  Time: 오전 2:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
    <title>Title</title>
</head>
<tbody>
<div class = "btn-group">
    <table border="1">
        <button type="button" id="btn_main" onclick="location.href='main.jsp' ">메인으로 돌아가기</button>

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
            InfoDAO dao = new InfoDAO();
            request.setCharacterEncoding("utf-8");
            String searchText = request.getParameter("searchText");
            ArrayList<InfoDTO> list = dao.getSearch(searchText);


            if(list.size() == 0){
                PrintWriter script = response.getWriter();
                script.println("<script>");
                script.println("alert('검색결과가 없습니다.')");
                script.println("history.back()");
                script.println("</script>");

            }
            for(int i=0; i<list.size(); i++){
        %>


        <tr>
            <td><%=list.get(i).getName()%></td>
            <td><%=list.get(i).getBirth()%></td>
            <td><%=list.get(i).getType()%></td>
            <td><%=list.get(i).getKind()%></td>
            <td><%=list.get(i).getOwner()%></td>
            <td><%=list.get(i).getPhone()%></td>

        </tr>
        <%
            }
        %>

    </table>
</div>
</tbody>

</html>