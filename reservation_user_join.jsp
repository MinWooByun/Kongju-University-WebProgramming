<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>레스토랑측 회원가입</title>
  </head>
  <body>
    <%
        String id = request.getParameter("id");
        String password = request.getParameter("password");

        //InitialContext ctx = new InitialContext();
        //DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");

        //Connection con = ds.getConnection();

        //Statement stmt = con.createStatement();
        //ResultSet result = stmt.executeQuery("INSERT INTO restaurantInfo (id, password) VALUES(?, ?)");
        
        Connection con = null;
        PreparedStatement pstmt = null;
        String url = "jdbc:mysql://localhost:3306/restaurant?characterEncoding=UTF-8";
        String user = "root", pw = "1234";

        Class.forName("org.gjt.mm.mysql.Driver");

        con = DriverManager.getConnection(url, user, pw);

        String sql = "INSERT INTO userinfo (id, password) VALUES(?, ?)";

        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id);
        pstmt.setString(2, password);

        pstmt.executeUpdate();

        pstmt.close();
        con.close();
    %>
    <h1></h1>
  </body>
</html>
