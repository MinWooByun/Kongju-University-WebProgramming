<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>JSP</title>
  </head>
  <body>
    <% int i = 24; %> <% out.println("하루는 " + i + "시간이며, <br />");
    out.println("하루는 " + i * 60 + "분 입니다."); %>
  </body>
</html>
