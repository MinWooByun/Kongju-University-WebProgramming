<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%
        request.setCharacterEncoding("UTF-8");
    %>
    <%!
        static int GCD(int a, int b){
            if (a%b == 0) {
                return b;
            }
            return GCD(b, a % b);
        }
    %> 
    
    <%
        String number1 = request.getParameter("number1");
        String number2 = request.getParameter("number2");
        int num1 = Integer.parseInt(number1);
        int num2 = Integer.parseInt(number2);
        int count = 0;
        out.print(GCD(num1, num2));
    %>
