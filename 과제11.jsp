<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>과제11</title>
    <style>
      main {
        display: flex;
        flex-direction: column;
        align-items: center;
      }
      span {
        font-size: 25px;
        font-weight: 600;
      }
      .date {
          color: tomato;
      }
      .count {
          color: tomato;
      }
    </style>
  </head>
  <body>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <%@ page import = "java.util.Date"%>
    <%!
        static int GCD(int a, int b){
            if (a%b == 0) {
                return b;
            }
            return GCD(b, a % b);
        }
    %> 
    
    <%
        String number1 = request.getParameter("num1");
        String number2 = request.getParameter("num2");
        int num1 = Integer.parseInt(number1);
        int num2 = Integer.parseInt(number2);
    %>

    <main>
        <h1>GCD 프로그램</h1>
        <br />
        <span>Num1 : <%= number1%></span>
        <p></p>
        <span>Num2 : <%= number2%></span>
        <p></p>
        <span>GCD(<%= num1%>, <%= num2%>) : <%= GCD(num1, num2)%></span>
        <p></p>
        <%! int count = 0;%>
        <span>
            <span class="date"><%= new Date().toLocaleString()%></span> 현재 <span class="count"><%= ++count%>번</span> 실행되었습니다.
        </span>
      </main>
  </body>
</html>
