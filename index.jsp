<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>JSP 예제 mebervar.jsp</title>
	</head>
	<body>
        <% int i = 0; %>
        [지역변수] i = <%= ++i %>
        <p>
        [소속변수] memi = <%= ++memi %>
        <%! int memi = 0; %>
 	</body>
</html>