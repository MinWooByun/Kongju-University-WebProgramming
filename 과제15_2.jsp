<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>과제15</title>
  </head>
  <body>
    <%
      String id = request.getParameter("id");
      String certification = request.getParameter("certification");
      String address = request.getParameter("address");
    %>
    <h1>
      <%=id%>님 <%=certification%>를 <%=address%> 주소로 발급했습니다.
    </h1>
  </body>
</html>
