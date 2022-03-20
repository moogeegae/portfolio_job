<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <% 
            session.invalidate();  //로그아웃하면 세션 초기화
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>