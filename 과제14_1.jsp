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
      String food = request.getParameter("food");
      session.setAttribute("food", food);
    %>
    <h1>좋아하는 동물은?</h1>
    <form action="과제14_2.jsp">
      <span><input type="text"  name="animal" /> <input type="submit" value="확인" /></span>
    </form>
  </body>
</html>
