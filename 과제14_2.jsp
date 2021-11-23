<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>과제14</title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <%
      String food = (String) session.getAttribute("food");
      String animal = request.getParameter("animal");
    %>
    <h1>성격 테스트</h1>
    당신은 <%= food %>와 <%= animal %>를(을) 좋아하는 성격입니다.
  </body>
</html>
