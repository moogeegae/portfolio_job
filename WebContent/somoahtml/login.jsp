<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<html>
    <head>
        <meta charset="utf-8">
        <title></title>
    </head>
    <body>
        <%
        	//아이디 비밀번호 확인
            String id = request.getParameter("id");                 //일단 불러오고 이거 두개는 세션에 넣을 필요 없는 듯
            String password = request.getParameter("password");     //로그인 성공시에만 하면 될 듯?

            //로그인 후 어디로 보낼지 경로 지정
        	String lgrt = request.getParameter("lgrt"); //lgrt = loginroot (login경로가 어디냐는 뜻)
        	
        	String loginlink="index.jsp";
        	//추천게시판 로그인
        	if(lgrt.equals("recommend")){
        		loginlink="recommend.somoa";
        	}
        	//고객센터 1대1상담
        	if(lgrt.equals("11qna")){
        		loginlink="login11qna.somoa?result="+id;
        	}
        	//고객센터 로그인
        	if(lgrt.equals("servicecenter")){
        		loginlink="servicecenter.jsp";
        	}
        	//책 게시판 로그인
        	if(lgrt.equals("bookboard")){
        		loginlink="bookboard.somoa";
        	}
        	if(lgrt.equals("booknotice")){
        		String code = request.getParameter("code");
        		String pag = request.getParameter("page");
        		loginlink="booknotice.somoa?code="+code+"&page="+pag;
        	}
        	
        	
        	//로그인 과정
            PrintWriter writer = null;
            Connection conn = null;
            Statement stmt = null;
            try{
                writer = response.getWriter();
                Class.forName("com.mysql.jdbc.Driver");
                conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/portfolio?characterEncoding=UTF-8&serverTimezone=UTC&useSSL=false","root","qw6487");
                if(conn == null){
                    throw new Exception("데이터베이스에 연결할 수 없습니다.<br>");
                }
                stmt = conn.createStatement();
                ResultSet rs = stmt.executeQuery("select * from custom_info where custom_id ='" + id + "';");
                if(rs.next()){
                    String custom_id = rs.getString("custom_id");
                    String custom_password = rs.getString("custom_password");
                    if(custom_password.equals(password)){
                        session.setAttribute("success",id);   //로그인 성공 -- 결과 세션에 저장
                        response.sendRedirect(loginlink);     //로그인 성공화면으로 보내기
                    }
                    writer.println("<script>alert('로그인 실패'); location.href='loginsession.jsp';</script>");
                }else{
                    writer.println("<script>alert('로그인 실패'); location.href='loginsession.jsp';</script>");
                }   //실패시 안내문구 띄우고 보내기
                
            }catch(IOException ioe){
                writer.println("<script>alert('오류발생');</script>");
            }finally{
                try{
                    stmt.close();
                }catch(Exception ignored){
                }try{
                    conn.close();
                }catch(Exception ignored){
                }try{
                    writer.close();
                }catch(Exception ignored){
                }
            }
        %>
    </body>
</html>