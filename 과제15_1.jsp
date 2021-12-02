<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, javax.sql.*, javax.naming.*" %>
<% request.setCharacterEncoding("UTF-8"); %>
<%  
    try {
        //String driverName = "org.gjt.mm.mysql.Driver";
        //Class.forName(driverName);
        InitialContext ctx = new InitialContext();
        DataSource ds = (DataSource) ctx.lookup("java:comp/env/jdbc/mysql");

        //String dbURL = "jdbc:mysql://localhost:3306/student?characterEncoding=UTF-8";
        //Connection con = DriverManager.getConnection(dbURL, "root", "1234");
        Connection con = ds.getConnection();

        Statement stmt = con.createStatement();
        ResultSet result = stmt.executeQuery("SELECT * FROM student;");

        String id = request.getParameter("id");
        String pass = request.getParameter("pass");
        String dbId = "";
        String dbPass = "";
        String dbAddress = "";

        while(result.next()) {
            dbId = result.getString("id");
            dbPass = result.getString("pass");
            dbAddress = result.getString("address");
        }

        if(dbId.equals(id) & dbPass.equals(pass)) {
            out.print(dbAddress);
        }

        stmt.close();
        con.close();

    } catch (Exception e) {
        out.println("MySql 데이터베이스 univdb 접속에 문제가 있습니다.");
        out.println(e.getMessage());
        e.printStackTrace();
    }
%>