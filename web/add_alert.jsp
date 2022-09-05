<%--
  Created by IntelliJ IDEA.
  User: dlgot
  Date: 2022-09-06
  Time: 오전 1:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.lang.*" %>
<%@ page import="dao.InfoDAO" %>
<%@ page import="dto.InfoDTO" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.time.LocalDateTime" %>
<%@ page import="javax.swing.text.DateFormatter" %>
<%@ page import="java.time.DateTimeException" %>
<%@ page import="java.text.SimpleDateFormat" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String am_name = request.getParameter("am_name");
    String am_birth = request.getParameter("am_birth");
    String am_type= request.getParameter("am_type");
    String am_kind = request.getParameter("am_kind");
    String am_owner = request.getParameter("am_owner");
    String am_phone = request.getParameter("am_phone");

    SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
    Date date = sdf.parse(am_birth);
    java.sql.Date date1 = java.sql.Date.valueOf(String.valueOf(am_birth));
    InfoDTO dto = new InfoDTO(am_name,date1,am_type,am_kind,am_owner,am_phone);

    InfoDAO dao = new InfoDAO();
    int res = dao.insert(dto);

    if(res >0){
%>
    <script type="text/javascript">
        alert("추가 성공")
        location.href = "main.jsp"
    </script>
<%
    }else{
%>
    <script type="text/javascript">
        alert("추가 실패..")
        location.href = "add.jsp";
    </script>
<%
    }
%>
</body>
</html>
