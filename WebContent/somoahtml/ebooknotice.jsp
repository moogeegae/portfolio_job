<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.PageInfo"%>
<%@ page import="dto.Book" %>
<%@ page import="dto.Review" %>
<%@ page import="java.util.List" %>
<%
    String result = (String) session.getAttribute("success");
   	Book list = (Book) request.getAttribute("article");
	String nowPage = (String) request.getAttribute("page");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>도서정보-<%=list.getBook_name() %></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/booknotice.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../somoacss/tags.css">
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
                     <%
                    	if(result==null){
                    %>
                    	<ul class="right_site">
                        	<li><a href="loginsession.jsp?lgrt=booknotice?code=<%=list.getPiece_code() %>&page=<%=nowPage%>" class="main_join">로그인</a></li><!--로그인하면 이게 내정보로 바뀜-->
                        	<li><a href="joinagree.html" class="main_join">회원가입</a></li><!--로그인하면 이게 장바구니로 바뀜-->
                        	<li><a href="recommend.somoa" class="main_join">추천합니다</a></li>
                        	<li><a href="servicecenter.jsp" class="main_join">고객센터</a></li>
                    	</ul>
                    <%		
                    	}else{
                    %>
                    	<ul class="right_site">
                        	<li><%= result %> 님</li><!--로그인하면 이게 내정보로 바뀜-->
                        	<li><a href="mypage.somoa" class="main_join">마이페이지</a></li><!--로그인하면 이게 장바구니로 바뀜-->
                        	<li><a href="recommend.somoa" class="main_join">추천합니다</a></li>
                        	<li><a href="servicecenter.jsp" class="main_join">고객센터</a></li>
                        	<li><a href="logout.jsp" class="main_join">로그아웃</a></li>  
                    	</ul>	
                    <%	
                    	}
                    %>
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
                <section id="book">
                    <article id="cover">
                    	<div><img src="../somoaimage/book/<%=list.getBook_cover() %>" /></div><!-- 표지1 -->
                    	<div>크게보기&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;미리보기</div>
                    	<div>매장 재고 / 위치&nbsp;&nbsp;&nbsp;&nbsp;<i class="fas fa-chevron-right"></i></div>
                    </article>
                    <article>
                    	<div id="booktitle">
                    		<div style="margin-bottom: 30px;">
                    			<span style="font-size: 40px;"><%=list.getBook_name() %></span>
                    			<%
                    				if(list.getBook_length().equals("")){
                    				}else{
                    			%>		
	                    			<span><%=list.getBook_author() %>&nbsp;<%=list.getBook_length() %></span>
                    			<%		
                    				}
                    			%>
                    		</div>
                    		<div style="font-size: 20px;color:rgba(0,0,0,0.4);">
                    			<span><%=list.getBook_author() %> 지음</span>
                    			<%
                    				if(list.getBook_trans().equals("")){
                    				}else{
                    			%>
                    				<span><%=list.getBook_trans() %> 옮김</span>	
                    			<%	
                    				}
                    			%>
                    			<span>|</span>
                    			<span><%=list.getBook_pub() %></span>
                    			<span>|</span>
                    			<span><%=list.getBook_birth() %> 출간</span>
                    		</div><!-- 출판사5, 출간날짜6 -->
                    	</div>
                    	<div id="ebooktable">
                    		<table border="1" style="border-collapse : collapse;">
                    			<tr>
                    				<td></td>
                    				<td>&nbsp;&nbsp;&nbsp;&nbsp;구매 금액</td>
                    			</tr>
                    			<tr>
                    				<td>종이책 정가</td>
                    				<td><%=list.getBook_price() %>원</td>
                    			</tr>
                    			<tr>
                    				<td>ebook 정가</td>
                    				<td><%=list.getBook_price() %>원</td>
                    			</tr>
                    			<tr style="background-color: #eee;">
                    				<td>ebook 정가</td>
                    				<td style=""><%=list.getBook_price()*7/10 %>원</td>
                    			</tr>
                    		</table>
                    	</div>
	                    <div id="bookpay">
	                    	<button class="buy" id="bookbuy">바로구매</button>
	                    </div>
                    </article>
                </section>
                <section>
                	<article id="booknoti">
                		<div>책 소개</div>
                		<div><%=list.getBook_summary() %></div>
                	</article>
                </section>
                <section>
                	<article>
                		<textarea rows="50" cols="106" style="resize: none;margin-bottom:20px;padding:21px;font-size:16px;">책내용</textarea>
                	</article>
                </section>
                <section id="review"><!-- 리뷰게시판 -->
                	<%
                		List<Review> review = (List<Review>) request.getAttribute("review");
                	%>
                	<article>
                		<div>
                			<span>리뷰 게시판</span>
                			<span>(<%=review.size() %>)</span>
                		</div>
                	</article>
	                <article id="reviewinput">
	                 <form action="">
	                 	<div id="reviewid">아이디&nbsp;&nbsp;
	                 		<%
	                 			if(result==null){
	                 		%>
	                			<input type="text" name="reviewid" value="로그인해주세요">
	                 		<%		
	                 			}else{
	                 		%>		
	                			<input type="text" name="reviewid" value="<%=result %>">
	                 		<%	
	                 			}
	                 		%>
                		</div>
	                 	<div class="review_rating">
					        <div class="warning_msg">별점</div>
					        <div class="rating">
					            <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
					            <img src="../somoaimage/button/starrate.png" id="star1" onmouseover="show(1)" onclick="star(1)" onmouseout="noshow(1)" />
					            <img src="../somoaimage/button/starrate.png" id="star2" onmouseover="show(2)" onclick="star(2)" onmouseout="noshow(2)" />
					            <img src="../somoaimage/button/starrate.png" id="star3" onmouseover="show(3)" onclick="star(3)" onmouseout="noshow(3)" />
					            <img src="../somoaimage/button/starrate.png" id="star4" onmouseover="show(4)" onclick="star(4)" onmouseout="noshow(4)" />
					            <img src="../somoaimage/button/starrate.png" id="star5" onmouseover="show(5)" onclick="star(5)" onmouseout="noshow(5)" />
					        </div>
					    </div>
                		<div class="recontent">
                			<input type="hidden" name="code" value="<%=list.getPiece_code()%>">
                			<input type="hidden" name="page" value="<%=nowPage%>">
                			<textarea rows="5" cols="100" name="reviewcontent" style="resize: none;"></textarea>
                			<input type="button" id="rego" onclick="regogo()" value="리뷰 쓰기" >
                		</div>
	                 </form>
	                </article>
                	<article class="review_detail">
						<%
							if(review.size()==0){
						%>
						<div id="noview">
							<span>등록된 리뷰가 없습니다.</span>
						</div>
						<%		
							}else{
								for(int i = 0;i<review.size();i++){
									String id = review.get(i).getCustom_ID();
									int star = review.get(i).getReview_star();
						%>
                		<div class="retitle">
                			<div>
                				<span><%=id %></span>
                				<span><%=review.get(i).getReview_time() %></span>
                				<span>
                				<%
                					for(int j=0;j<star;j++){
                				%>
                					<img src="../somoaimage/button/starrate.png" style="background-color:yellow;">
                				<%
                					}
                					for(int k=0;k<5-star;k++){
                				%>
                					<img src="../somoaimage/button/starrate.png" style="background-color:#eeeeee;">
                				<%
                					}
                				%>
                				</span>
                			</div>
                			<div>
                				<i class="fas fa-heart"></i>
                				<span>추천수</span>
                			</div>
                		</div>
                		<div class="recontent"><%=review.get(i).getReview_content() %></div>
						<%
								}
							}
						%>
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
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../somoajs/webwidget_menu_vertical_menu1.js"></script>

    <script>
    	var starcheck=1;
    	var manystar=0;
 		function show(star){
 			for(var i = 1;i<=star;i++){
 				$('#star'+i).css({"background-color":"yellow"});
 			}
 		}
 		function noshow(star){
 			if(starcheck){
	 			for(var i = 1;i<=star;i++){
	 				$('#star'+i).css({"background-color":"#eeeeee"});
	 			}
 			}
 			starcheck=1;
 		}
 		function star(star){
 			show(star);
 			starcheck=0;
 			manystar=star;
 		}
 		function regogo(){
 			$('#rego').attr('action','review.somoa?star='+manystar).submit();
 		}
    
    
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