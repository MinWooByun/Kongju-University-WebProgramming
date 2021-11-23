<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>과제13</title>
  </head>
  <body>
    <% request.setCharacterEncoding("UTF-8"); %>
    <jsp:useBean id="student" class="javabean.StudentBean" scope="page" />
    <jsp:setProperty name="student" property="*" />
    <h1>저장된 정보를 조회 출력</h1>
    학생 ID : <jsp:getProperty name="student" property="id" /><br>
    학생 이름 : <jsp:getProperty name="student" property="name" /><br>
    학생 번호 : <jsp:getProperty name="student" property="snum" /><br>
    <%
        int getage = student.getAge();
        String age = Integer.toString(getage);
    %>
    나이(생년) : <%= age %>(<jsp:getProperty name="student" property="year" />)<br>
    암호 : <jsp:getProperty name="student" property="pass" /><br>
    전자메일 : <jsp:getProperty name="student" property="email" /><br>
  </body>
</html>
