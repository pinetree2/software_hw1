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
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<tbody>
    <table border="1">

        <%
            InfoDAO dao = new InfoDAO();
            String searchField = request.getParameter("searchField");
            String searchText = request.getParameter("searchText");
            ArrayList<InfoDTO> list = dao.FindAll(searchField,searchText);


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
</tbody>
</html>