<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
  </head>
  <body>
    <%
        request.setCharacterEncoding("utf-8");
    %>
    <%
        String name = request.getParameter("name");
        String studentNum = request.getParameter("studentNum");
    %>
    <h2>학생 정보 입력 결과</h2>
    성명 : <%= name%> <p></p>
    학번 : <%= studentNum%> <p></p>
  </body>
</html>
