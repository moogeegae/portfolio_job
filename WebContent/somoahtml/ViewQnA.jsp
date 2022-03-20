<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.Qna" %>
<%@ page import="dto.PageInfo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>소모아-1:1상담</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/servicecenter.css">
    <link rel="stylesheet" href="../somoacss/qna.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%
    	String result = (String) session.getAttribute("success");
    	//session.setAttribute("success",result);	
    %>
    
    <body>
        <div id="wrap">
            <header>
                <nav>
                    <!--왼쪽 작은 이벤트로고랑 사이트 이름-->
                    <ul class="title">
                        <li><a href="index.jsp">SOMOA</a></li>
                    </ul>
                    <ul>
                        <li>3월이벤트</li>
                    </ul>
                    <!--오른쪽 위 구석에 적을 것들-->
                    <ul class="right_site">
                        <li><%= result %> 님</li><!--로그인하면 이게 내정보로 바뀜-->
                        <li><a href="mypage.somoa" class="main_join">마이페이지</a></li><!--로그인하면 이게 장바구니로 바뀜-->
                        <li><a href="recommend.somoa" class="main_join">추천합니다</a></li>
                        <li><a href="servicecenter.jsp" class="main_join">고객센터</a></li>
                        <li><a href="logout.jsp" class="main_join">로그아웃</a></li>  
                    </ul>
                </nav>
            </header>
            <div class="main_site">
                <section class="menu">
                    <nav>
                        <ul class="menusize">
                            <li id="menuopen1">국내도서
                            	<div>
                            	<ul class="korean hide_go" id="menuhide1">
                                    <li class="top_border"></li>
                                    <li class="arrow_border"></li>
                                    <li><a href="bookboard.somoa?genre=A">소설</a></li>
                                    <li><a href="bookboard.somoa?genre=B">시,에세이</a></li>
                                    <li><a href="bookboard.somoa?genre=C">자기계발</a></li>
                                    <li><a href="bookboard.somoa?genre=D">어린이</a></li>
                                    <li><a href="bookboard.somoa?genre=E">과학</a></li>
                                    <li><a href="bookboard.somoa?genre=F">수험서</a></li>
                                    <li><a href="bookboard.somoa?genre=G">전공교재</a></li>
                                    <li><a href="bookboard.somoa?genre=H">잡지</a></li>
                                    <li><a href="bookboard.somoa?genre=I">사전</a></li>
                                    <li><a href="bookboard.somoa?genre=korean">전체보기</a></li>
                                  	<li class="bottom_border"></li>
                                </ul>
                                </div>
                            </li>
                            <li id="menuopen2">해외도서
                            	<div>
                                <ul class="foreign hide_go" id="menuhide2">
                                    <li class="top_border"></li>
                                    <li class="arrow_border"></li>
                                    <li><a href="bookboard.somoa?genre=a">문학</a></li>
                                    <li><a href="bookboard.somoa?genre=b">언어</a></li>
                                    <li><a href="bookboard.somoa?genre=c">사전</a></li>
                                    <li><a href="bookboard.somoa?genre=d">대학서적원서</a></li>
                                    <li><a href="bookboard.somoa?genre=e">어린이</a></li>
                                    <li><a href="bookboard.somoa?genre=f">학습교구/게임</a></li>
                                    <li><a href="bookboard.somoa?genre=foreign">전체보기</a></li>
                                    <li class="bottom_border"></li>
                                </ul>
                                </div>
                            </li>
                            <li id="menuopen3">ebook
                            	<div>
                                <ul class="ebook hide_go" id="menuhide3">
                                    <li class="top_border"></li>
                                    <li class="arrow_border"></li>
                                    <li><a href="ebookboard.somoa?genre=A">소설</a></li>
                                    <li><a href="ebookboard.somoa?genre=B">시,에세이</a></li>
                                    <li><a href="ebookboard.somoa?genre=C">자기계발</a></li>
                                    <li><a href="ebookboard.somoa?genre=D">어린이</a></li>
                                    <li><a href="ebookboard.somoa?genre=E">과학</a></li>
                                    <li><a href="ebookboard.somoa?genre=F">수험서</a></li>
                                    <li><a href="ebookboard.somoa?genre=G">전공교재</a></li>
                                    <li><a href="ebookboard.somoa?genre=H">잡지</a></li>
                                    <li><a href="ebookboard.somoa?genre=I">사전</a></li>
                                    <li><a href="ebookboard.somoa?genre=korean">전체보기</a></li>
                                    <li class="bottom_border"></li>
                                </ul>
                                </div>
                            </li>
                            <li class="menunovel"><a href="novelboard.somoa?pay=yes">유료웹소설</a></li>
                            <li class="menunovel"><a href="novelboard.somoa?pay=no">무료웹소설</a></li>
                            <li id="menuopen6">이벤트
                            	<div>
                            	<ul class="event hide_go" id="menuhide6">
                                    <li class="top_border"></li>
                                    <li class="arrow_border"></li>
                                    <li><a href="#">진행중인 이벤트</a></li>
                                    <li><a href="#">카테고리별 이벤트</a></li>
                                    <li><a href="#">매일출석</a></li>
                                    <li><a href="#">쿠폰/마일리지</a></li>
                                    <li><a href="#">경품</a></li>
                                    <li class="bottom_border"></li>
                                </ul>
                                </div>
                            </li>
                        </ul>
                    </nav>
                    <article>
                        <form action="">
                            <input type="text" name="searching" id="search" placeholder="원하시는 책, 소설 등 을 검색하세요.">
                        </form>
                    </article>
                </section>
                <!-- qna게시판 -->
                <section id="service">
                	<article>
                		<div>고객센터</div>
                		<ul class="container">
						     <li class="menu">
						         <ul>
								    <li class="button"><a href="#" class="blue clickbutton">FAQ(더보기) <span></span></a></li>
						           	<li class="dropdown">
						               <ul>
						                   <li><a href="notice.somoa?genre=1">반품/교환/환불</a></li>
						                   <li><a href="notice.somoa?genre=2">주문/결제</a></li>
						                   <li><a href="notice.somoa?genre=3">ebook</a></li>
						                   <li><a href="notice.somoa?genre=4">회원</a></li>
						                   <li><a href="notice.somoa?genre=5">배송/수령일 안내</a></li>
						                   <li><a href="notice.somoa?genre=6">중고장터</a></li>
						                   <li><a href="notice.somoa?genre=7">모바일소모야</a></li>
						                   <li><a href="notice.somoa?genre=8">도서/상품정보교과서</a></li>
						               </ul>
									</li>
						         </ul>
						     </li> 
						     <li class="menu">
						         <ul>
								    <li class="button"><a href="login11qna.somoa?result=<%=result %>" class="blue">1대1 상담</a></li>          	
						         </ul>
						     </li>
						     <li class="menu">
						         <ul>
								    <li class="button"><a href="#" class="blue clickbutton">공지사항 <span></span></a></li>
						           	<li class="dropdown">
						               <ul>
						                   <li><a href="notice.somoa?genre=9">전체공지</a></li>
						                   <li><a href="notice.somoa?genre=10">이벤트공지</a></li>
						               </ul>
									</li>
						         </ul>
						     </li>
						</ul>
                	</article>
                	<article>
                		<div>
                		</div>
                		<div id="qna">
                			<%
                				Qna list = (Qna) request.getAttribute("article");
                				String nowPage = (String) request.getAttribute("page");
                			%>
                			<div id="qnatitle">1:1문의게시판</div>
                			<table>
                				<tr>
                					<td class="viewqna">글번호</td>
                					<td><%=list.getQna_num() %></td>
                					<td></td>
                					<td></td>
                				</tr>
                				<tr>
                					<td class="viewqna">문의제목</td>
                					<td><%=list.getQna_title() %></td>
                					<td class="viewqna">작성자</td>
                					<td><%=list.getQna_id() %></td>
                				</tr>
                				<tr>
                					<td class="viewqna">문의날짜</td>
                					<td><%=list.getQna_date() %></td>
                					<td class="viewqna">답변 결과</td>
                					<td><%=list.getQna_complete() %></td>
                				</tr>
                				<tr>
                					<td class="viewqna">문의내용</td>
                					<td colspan="3"><%=list.getQna_content() %></td>
                				</tr>
                				<tr>
                					<td class="viewqna">첨부파일</td>
                					<td colspan="3">
                						<%
                							if(list.getQna_file()==null){
                						%>
                							첨부파일없음
                						<%		
                							}else{
                						%>
                							<%=list.getQna_file() %>
                						<%		
                							}
                						%>
                					</td>
                				</tr>
                			</table>
	                		<section id="pageList" class="commandlist">
								<a href="qnaReplyGo.somoa?qna_num=<%=list.getQna_num() %>&page=<%=nowPage%>"> [답변] </a> 
								<a href="login11qna.somoa?page=<%=nowPage%>&result=<%=result%>">[목록]</a>&nbsp;&nbsp;
							</section>
                		</div>
                	</article>
                </section>
                <section class="announce">
                    <article class="site_guide">
                        <li>사이트안내</li>
                        <div>
                            <ul>
                                <li>
                                    <div><i class="fas fa-bullhorn fa-3x"></i></div>
                                    <div>사이트설명</div>
                                </li>
                                <li>
                                    <div><i class="fab fa-android fa-3x"></i></div>
                                    <div>안드로이드</div>
                                </li>
                                <li>
                                    <div><i class="fab fa-apple fa-3x"></i></div>
                                    <div>아이폰</div>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="site_guide">
                        <li>공지사항SNS</li>
                        <div>
                            <ul>
                                <li>
                                    <div><i class="fab fa-facebook fa-3x"></i></div>
                                    <div>페이스북</div>
                                </li>
                                <li>
                                    <div><i class="fab fa-instagram-square fa-3x"></i></div>
                                    <div>인스타그램</div>
                                </li>
                                <li>
                                    <div><i class="fas fa-blog fa-3x"></i></div>
                                    <div>블로그</div>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="site_guide">
                        <li>FAQ</li>
                        <div>
                            <ul>
                                <li>
                                    <div><i class="fas fa-shopping-cart fa-3x"></i></div>
                                    <div>주문 결제</div>
                                </li>
                                <li>
                                    <div><i class="fas fa-book-open fa-3x"></i></div>
                                    <div>도서 정보</div>
                                </li>
                                <li>
                                    <div><i class="fas fa-file-alt fa-3x"></i></div>
                                    <div>ebook</div>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="site_guide">
                        <li>빠른 서비스</li>
                        <div>
                            <ul>
                                <li>
                                    <div><i class="fas fa-wallet fa-3x"></i></div>
                                    <div>캐시 조회 충전</div>
                                </li>
                                <li>
                                    <div><i class="fas fa-star fa-3x"></i></div>
                                    <div>도서 즐겨찾기</div>
                                </li>
                            </ul>
                        </div>
                    </article>
                    <article class="site_guide">
                        <li>앱 다운</li>
                        <div>
                            <ul>
                                <li>
                                    <div><i class="fab fa-android fa-3x"></i></div>
                                    <div>안드로이드</div>
                                </li>
                                <li>
                                    <div><i class="fab fa-apple fa-3x"></i></div>
                                    <div>아이폰</div>
                                </li>
                            </ul>
                        </div>
                    </article>
                </section>
                <footer>
                    <nav>
                        <ul>
                            <li>회사소개 | </li>
                            <li>개인정보처리방침 | </li>
                            <li>이용약관 | </li>
                            <li>멤버십 이용약관 | </li>
                            <li>고객센터 | </li>
                            <li>청소년보호정책 | </li>
                            <li>공지사항 | </li>
                            <li>채용정보</li>
                        </ul>
                    </nav>
                    <p>법인명: (주) 소모아 대표자: 나 사업자등록번호 000-00-00000 통신판매업: 제2021-어디선가-0000호<br>
                        주소 : 여기 대표전화 : 02-0000-0000 (가맹문의 : 02-0000-0000)<br>
                        COPYRIGHT (C) SOMOA. All Rights Reserved.
                        <!--이미지도 좀 넣고-->
                    </p>
                </footer>
            </div>
        </div>
    </body>
    <script type="text/javascript" src="../somoajs/webwidget_menu_vertical_menu1.js"></script>
    <script type="text/javascript" src="../somoajs/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../somoajs/script.js"></script>

    <script>
    /*menu hide and show*/
    $(document).ready(function(){
        $('#menuopen1').mouseenter(function(){
            $('#menuhide1').stop().show();
        });
        $('#menuopen1').mouseleave(function(){
            $('#menuhide1').stop().hide();
        });
        $('#menuopen2').mouseenter(function(){
            $('#menuhide2').stop().show();
        });
        $('#menuopen2').mouseleave(function(){
            $('#menuhide2').stop().hide();
        });
        $('#menuopen3').mouseenter(function(){
            $('#menuhide3').stop().show();
        });
        $('#menuopen3').mouseleave(function(){
            $('#menuhide3').stop().hide();
        });
        $('#menuopen4').mouseenter(function(){
            $('#menuhide4').stop().show();
        });
        $('#menuopen4').mouseleave(function(){
            $('#menuhide4').stop().hide();
        });
        $('#menuopen5').mouseenter(function(){
            $('#menuhide5').stop().show();
        });
        $('#menuopen5').mouseleave(function(){
            $('#menuhide5').stop().hide();
        });
        $('#menuopen6').mouseenter(function(){
            $('#menuhide6').stop().show();
        });
        $('#menuopen6').mouseleave(function(){
            $('#menuhide6').stop().hide();
        });
    });

    </script>
</html>