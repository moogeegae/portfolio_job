<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<html>
    <head>
        <meta charset="utf-8">
        <title>회원가입 성공</title>
    </head>
    
    <style>
        @import url("https://fonts.googleapis.com/css2?family=Mochiy+Pop+P+One&display=swap");
        body {
            background-image: linear-gradient(rgba(0, 0, 0, 0.2), rgba(0, 0, 0, 0.6)),url("../somoaimage/bg_book.jpg");
            background-attachment: fixed;
        }
        ul{
            width:600px;
            padding-left:0;
            padding-bottom:15px;
            background-color:white;
            text-align:center;
            margin:100px auto;
        }
        li{
            margin-bottom:10px;
        }
        #title {
            font-size: 40px;
            font-weight: bold;
            font-family: "Mochiy Pop P One", sans-serif;
            color: mediumturquoise;
        }
        button{
            padding: 5px;
            width: 160px;
            height: 50px;
            font-weight: bold;
            border:0;
            border-radius: 20px;
        }
        button:first-child{
            margin-right:20px;
        }
        button a:link {
            text-decoration: none;
        }
        button a:visited {
            text-decoration: none;
            color: black;
        }
    </style>
    <body>
        <ul>
            <li id="title">SoMoa</li>
            <li>회원가입을 완료하였습니다.</li>
            <li>회원님의 정보는 다음과 같습니다.</li>
        <%
            String id = request.getParameter("join_id");
            String password = request.getParameter("join_password");
            String name = request.getParameter("join_name");
            String year = request.getParameter("join_year");
            String month = request.getParameter("join_month");
            String day = request.getParameter("join_day");
            String sex = request.getParameter("join_sex");
            String nickname = request.getParameter("nickname");
            String address = request.getParameter("address");
            String address_detail = request.getParameter("address_detail");
            String phone1 = request.getParameter("phone1");
            String phone2 = request.getParameter("phone2");
            String phone3 = request.getParameter("phone3");
            String email = request.getParameter("join_email");
            String email_select = request.getParameter("email_select");
            String[] interest = request.getParameterValues("interest");
            String smsok = request.getParameter("smsok");
            String emailok = request.getParameter("emailok");
            String openok = request.getParameter("openok");
        %>
            <li>아이디: <%= id %></li>
            <li>비밀번호: <%= password %></li>
            <li>이름: <%= name %></li>
            <li>생년월일: <%= year %>년 <%= month %>월 <%= day %>일</li>
            <li>성별: <%= sex %></li>
            <li>닉네임: <%= nickname %></li>
            <li>주소: <%= address %> <%= address_detail %></li>
            <li>연락처: <%= phone1 %>-<%= phone2 %>-<%= phone3 %></li>
            <li>이메일: <%= email %>@<%= email_select %></li>
            <li>관심분야: <%
                            if(interest!=null){
                                for(String eachdata : interest)
                                    out.println(eachdata + " ");
                            }
                        %></li>
            <li>이벤트 수신 동의(SMS): <%= smsok %></li>
            <li>이벤트 수신 동의(email): <%= emailok %></li>
            <li>작품 데이터 수집 동의: <%= openok %></li>
            <li><button><a href=index.jsp>메인으로 돌아가기</a></button><button><a href=loginsession.html>로그인 하러가기</a></button></li>
        </ul>
        <%
            if(month.length()==1){
                month = "0" + month;
            }
            if(day.length()==1){
                day = "0" + day;
            }
            String birth = year + month + day;
            String addr = address + " " + address_detail;
            String phonenum = phone1 + phone2 + phone3;
            String mail = email + "@" + email_select;
            String all_interest;
            if(interest!=null){
                for(String eachdata : interest)
                    all_interest = all_interest + eachdata +"|";
            }
            Connection conn = null;
            Statement stmt = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false","root","qw6487");
                if(conn == null){
                    throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
                }
                stmt = conn.createStatement();
                String command = String.format("insert into custom_info values ('%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s','%s');",id,password,name,birth,sex,nickname,addr,phonenum,mail,all_interest,smsok,emailok,"0");
                int rowNum = stmt.executeUpdate(command);
                if(rowNum < 1)
                    throw new Exception("데이터를 DB에 입력할 수 없습니다.");
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
    </body>
</html>