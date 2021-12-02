<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html><head>
    <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <title>데이터베이스 예제 : dbconnect.jsp</title></head><body>
    <%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
    <h2>데이터베이스 드라이버와 DB univdb 연결 점검 프로그램 </h2>
    <%
    try {
    String driverName = "org.gjt.mm.mysql.Driver";
    Class.forName(driverName);
    String dbURL = "jdbc:mysql://localhost:3306/student?characterEncoding=UTF-8";
    Connection con = DriverManager.getConnection(dbURL, "root", "1234");
    //InitialContext ctx = new InitialContext();
    //DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");
    //Connection con = ds.getConnection();
    out.println("MySql 데이터베이스 univdb에 성공적으로 접속했습니다");
    Statement stmt = con.createStatement();
    ResultSet result = stmt.executeQuery("SELECT * FROM student;");
    %>
        
    <%while(result.next()) {%>
        <p>id : <%= result.getString(1)%></p>
        <p>pass : <%= result.getString(2)%></p>
        <p>address : <%= result.getString(3)%></p>
    <%
    }
    } catch (Exception e) {
    out.println("MySql 데이터베이스 univdb 접속에 문제가 있습니다. <hr>");
    out.println(e.getMessage());
    e.printStackTrace();
    }
    %>
    </body>
    </html>