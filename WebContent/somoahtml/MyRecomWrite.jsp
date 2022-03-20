<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>추천합니다!</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/recommend.css">
    <link rel="stylesheet" href="../somoacss/recomwrite.css">
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
                        <form action="" id="formsearching">
                            <input type="text" name="searching" id="search" placeholder="원하시는 책, 소설 등 을 검색하세요.">
                        </form>
                    </article>
                </section>
                <section class="recommend">
                	<article><div>추천하기 게시판</div></article>
                    <article><!-- 책 목록 -->
                    	<div>추천 도서 작성하기</div>
                			<form id="forminsert" enctype="multipart/form-data" method="post">
	                			<table border="1">
	                				<tr>
	                					<td>장르</td>
	                					<td>
											<select name="genre">
				                				<option>장르선택</option>
				                				<option>국내도서</option>
				                				<option>해외도서</option>
				                				<option>ebook</option>
				                				<option>무협</option>
				                				<option>판타지</option>
				                				<option>퓨전</option>
				                				<option>게임</option>
				                				<option>스포츠</option>
				                				<option>로맨스</option>
				                				<option>라이트노벨</option>
				                				<option>현대판타지</option>
				                				<option>대체역사</option>
				                				<option>교육</option>
				                				<option>사전</option>
				                				<option>전쟁</option>
				                				<option>SF</option>
				                				<option>추리</option>
				                				<option>공포,미스테리</option>
				                				<option>일반소설</option>
				                				<option>시,수필</option>
				                				<option>중,단편</option>
				                				<option>아동,소설,동화</option>
				                				<option>드라마</option>
				                				<option>연극,시나리오</option>
				                				<option>팬픽,패러디</option>
				                			</select>
										</td>
	                				</tr>
									<tr>
										<td>커버 파일 첨부</td>
										<td><input name="cover" type="file" /></td>
									</tr>
	                				<tr>
	                					<td>제목</td>
										<td><input type="text" name="title" required="required" /></td>
									</tr>
	                				<tr>
	                					<td>추천인</td>
										<td><input type="text" name="recommend" value="<%=result %>"/></td>
									</tr>
									<tr>
										<td>추천하는 이유</td>
										<td><textarea name="contents" cols="60" rows="15" required="required"></textarea></td>
									</tr>
	                			</table>
	                			<section id="commandCell">
									<input type="button" onclick="writ()" value="추천글 등록">&nbsp;&nbsp;
                					<input type="button" onclick="cancel()" value="취소">
								</section>
                			</form>
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
    <script type="text/javascript" src="jquery-1.3.2.min.js"></script>
    <script type="text/javascript" src="../somoajs/webwidget_menu_vertical_menu1.js"></script>

    <script>
    	/*장르별 검색*/
    	
    	function writ(){
    		$('#forminsert').attr('action','MyRecommendWrite.somoa').submit();
    	};
    	
    
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