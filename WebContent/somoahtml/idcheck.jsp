<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <%
        String id = request.getParameter("join_id");
        Connection conn = null;
        Statement stmt = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false","root","qw6487");
            if(conn == null){
                throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
            }
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("select * from custom_info where custom_id ='" + id + "';");
            while(rs.next()){
                String custom_id = rs.getString("custom_id");
            }
        }finally{
            try{
                stmt.close();
            }catch(Exception ignored){
            }try{
                conn.close();
            }catch(Exception ignored){
            }
        }
    %>
    <body>
    </body>
</html>