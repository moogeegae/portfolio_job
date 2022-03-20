<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="dto.PageInfo"%>
<%@ page import="dto.Book" %>
<%@ page import="dao.BookDAO"%>
<%
	List<Book> list = (List<Book>) request.getAttribute("articleList");
    String printoutBookGenre = (String) request.getAttribute("printoutBookGenre");
    String bookgenre = (String) request.getAttribute("bookgenre");
	int total = (int) request.getAttribute("total");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>도서-<%=printoutBookGenre %></title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/bookboard.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="../somoacss/tags.css">
    <%
    	String result = (String) session.getAttribute("success");
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
                    <%
                    	if(result==null){
                    %>
                    	<ul class="right_site">
                        	<li><a href="loginsession.jsp?lgrt=bookboard" class="main_join">로그인</a></li><!--로그인하면 이게 내정보로 바뀜-->
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
                                    <li><a href="bookboard.somoa?genre=korean">전체보기</a></li>
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
                <section id="printoutBookGenre">
                	<article>
                		<%=printoutBookGenre %> (<%=total %>개)
                	</article>
                </section>	
                <section id="boardupline"></section>
                	<%
                	//piece_code랑 review_star
                	BookDAO bookdao = BookDAO.instance();
            		PageInfo pageInfo = (PageInfo)request.getAttribute("pageInfo");
            		int listCount=pageInfo.getListCount();
            		int nowPage=pageInfo.getPage();
            		int maxPage=pageInfo.getMaxPage();
            		int startPage=pageInfo.getStartPage();
            		int endPage=pageInfo.getEndPage();
                	%>
                    <%
                    	for(int i=0;i<list.size();i++){
                    		String code = list.get(i).getPiece_code();
                    		String cover = list.get(i).getBook_cover();
                    		String title = list.get(i).getBook_name();
                    		String author = list.get(i).getBook_author();
                    		String publisher = list.get(i).getBook_pub();
                    		String date = list.get(i).getBook_birth();
                    		int price = list.get(i).getBook_price();
                    		String summary = list.get(i).getBook_summary();
                    		int total_review = bookdao.selectBoardReview(code);
                    		int star_avg = bookdao.selectBoardStar(code);
                    		
                   	%> 		
                <section id="bookboard" style="display:flex;justify-content: flex-start;"><!-- 게시판 -->
                    <article id="bookcover"><img src="../somoaimage/book/<%=cover %>" /></article>
                    <article id="bookall">
                    	<div><a href="booknotice.somoa?code=<%=code%>&page=<%=nowPage %>"><%=title %></a></div>
                    	<div>
                    		<span><%=author %></span>
                    		<span><%=publisher %></span>
                    		<span><%=date %></span>
                    	</div>
                    	<div>
                    		<span><%=price*9/10 %>원</span>
                    		<span>[10% 할인]</span>
                    		<span><%=price*5/100 %>Point [5% 적립]</span>
                    	</div>
                    	<div><%=summary %></div>
                    	<div>
                    		<span>평점: <%=star_avg %>점</span>	
                    		<span>리뷰 개수: <%=total_review %>개</span>
                    	</div>
                    </article>
                    <article>
                    	<form id="basket">
                    		<input type="hidden" name="code" value="<%=code %>">
                    		<input type="hidden" name="cusid" value="<%=result %>" >
                    		<input type="hidden" name="num" value="1" >
                    	</form>
                    	<%
                    		if(result==null){
                    	%>
                    	<button id="bacolor" onclick="logingo()">장바구니</button>
                    	<button id="pacolor" onclick="logingo()">바로결제</button>
                    	<%		
                    		}else{
                    	%>
                    	<button id="bacolor" onclick="basket()">장바구니</button>
                    	<button id="pacolor" onclick="paygo()">바로결제</button>
                    	<%		
                    		}
                    	%>
                    </article>
                </section>
                    <%		
                    	}
                    %>
               	<section id="pageList">
                	<%if(nowPage<=1){ %>
					[이전]&nbsp;
					<%}else{ %>
					<a href="bookboard.somoa?page=<%=nowPage-1 %>&genre=<%=bookgenre%>">[이전]</a>&nbsp;
					<%} %>
					
					<%for(int a=startPage;a<=endPage;a++){
							if(a==nowPage){%>
					[<%=a %>]
					<%}else{ %>
					<a href="bookboard.somoa?page=<%=a %>&genre=<%=bookgenre%>">[<%=a %>]
					</a>
					<%} %>
					<%} %>
					
					<%if(nowPage>=maxPage){ %>
					&nbsp;[다음]
					<%}else{ %>
					<a href="bookboard.somoa?page=<%=nowPage+1 %>&genre=<%=bookgenre%>">&nbsp;[다음]</a>
					<%} %>
                </section>
                <section id="boarddownline"></section>	
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
    /* 결제 진행 */
    function paygo(){
    	$('#basket').attr('action','pay.somoa').submit();
    	
    }
    /* 결제 로그인 */
    function logingo(){
    	alert("로그인을 해주세요.");
    }
    
    /* 장바구니 */
    function basket(){
			$.ajax({
				url:"basket.somoa",
				type:"POST",
				cache:"false",
				dataType:"json",
				data:$('#basket').serialize(),
				success:
					function(data){
				    	alert(data.cusid+"님의 장바구니에 도서 "+data.num+"권이 추가되었습니다.");
				},
				error:
					function(request,status,error){
						alert(error);
				}
			});
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