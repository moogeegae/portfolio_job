<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>소모아-고객센터</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/servicecenter.css">
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
                    <%
                    	if(result==null){
                    %>
                    <ul class="right_site">
                        <li><a href="loginsession.jsp" class="main_join">로그인</a></li><!--로그인하면 이게 내정보로 바뀜-->
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
                <!-- 본 내용 -->
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
						         <%
						         	if(result==null){
						         %>
								    <li class="button"><a href="loginsession.jsp?lgrt=11qna" class="blue">1대1 상담</a></li>          	
						         <%	
						         	}else{
						         %>
						         	<li class="button"><a href="login11qna.somoa?result=<%=result %>" class="blue">1대1 상담</a></li>
						         <%		
						         	}
						         %>
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
                		<div id="sermain">
                			<div>자주 묻는 질문</div>
                			<div>고객님께서 가장 많이 궁금해 하시는 내역을 빠르게 해결하실 수 있습니다.</div>
                			<ul>
                				<li id="delivery"><button>주문/배송</button></li>
                				<li class="eventborder"></li>
                				<li id="bookgoods"><button>도서/상품</button></li>
                				<li class="eventborder"></li>
                				<li id="payback"><button>반품/교환/환불</button></li>
                			</ul>
                		</div>
                		<div id="faqmom">
	                		<div class="faqlist"  id="down1">
	                			<ul class="faqdown">
		                			<li onclick="openPopUp(1)"><i class="far fa-dot-circle"></i>주문한 상품 중 일부가 오지 않았습니다.</li>
		                			<li onclick="openPopUp(2)"><i class="far fa-dot-circle"></i>예약상품 배송에 대하여 설명드립니다.</li>
		                			<li onclick="openPopUp(3)"><i class="far fa-dot-circle"></i>국내에 보유하고 있지 않는 해외주문도서는 얼마만에 받아 볼 수 있나요?</li>
		                			<li onclick="openPopUp(4)"><i class="far fa-dot-circle"></i>해외배송을 하려 하는데 배송지를 어떻게 작성해야 하나요?</li>
		                			<li onclick="openPopUp(5)"><i class="far fa-dot-circle"></i>회사로 배송신청을 하면 퇴근 전에 바로배송이 가능한가요?</li>
		                			<li onclick="openPopUp(6)"><i class="far fa-dot-circle"></i>우리 지역이 택배 파업 지역인가요?</li>
		                		</ul>
		                	</div>
	                		<div class="faqlist" id="down2">
		                		<ul class="faqdown" >
		                			<li onclick="openPopUp(7)"><i class="far fa-dot-circle"></i>교과서를 구입하고 싶어요.</li>
		                			<li onclick="openPopUp(8)"><i class="far fa-dot-circle"></i>도서 및 상품 검색을 쉽게 하는 방법은 없나요?</li>
		                			<li onclick="openPopUp(9)"><i class="far fa-dot-circle"></i>아마존에 있는 책이 왜 소모아엔 없나요?</li>
		                			<li onclick="openPopUp(10)"><i class="far fa-dot-circle"></i>입고준비중인 도서는 어떤 상태인가요?</li>
		                			<li onclick="openPopUp(11)"><i class="far fa-dot-circle"></i>일시품절상품의 알림메일 받기는 무엇인가요?</li>
		                			<li onclick="openPopUp(12)"><i class="far fa-dot-circle"></i>도서/상품 캐시 및 마일리지 사용시 주의사항</li>
		                		</ul>
		                	</div>
	                		<div class="faqlist" id="down3">
		                		<ul class="faqdown">
		                			<li onclick="openPopUp(13)"><i class="far fa-dot-circle"></i>해외주문도서의 주문취소나 반품/교환이 가능한가요?</li>
		                			<li onclick="openPopUp(14)"><i class="far fa-dot-circle"></i>예치금을 환불받고 싶습니다.</li>
		                			<li onclick="openPopUp(15)"><i class="far fa-dot-circle"></i>인터넷 주문도서의 반품이 가능한가요?</li>
		                			<li onclick="openPopUp(16)"><i class="far fa-dot-circle"></i>환불계좌를 변경하고 싶어요.</li>
		                			<li onclick="openPopUp(17)"><i class="far fa-dot-circle"></i>휴대폰 소액결제는 어떻게 환불되나요?</li>
		                			<li onclick="openPopUp(18)"><i class="far fa-dot-circle"></i>예치금 환불시, 본인 명의의 계좌가 없으면 환불 받지 못하나요?</li>
		                		</ul>
	                		</div>
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
        <div class="popUpView" id="pop1"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>주문한 상품 중 일부가 오지 않았습니다.</div>
        			<textarea style="resize: none;">고객님께서 주문하신 상품이 한꺼번에 배송되지 않는 것은 고객님의 편의를 위해 준비된 것부터 보내드리기 때문입니다. 주문건의 도서가 예상 발송일 보다 경과돼 지연된 경우에는 먼저 준비돼 있는 도서를 발송해 드립니다. 나머지 상품은 별도로 배송 중이거나 상품을 준비하고 있는 단계이며, 거래처로 주문된 상품은 입고되는 즉시 배송해 드립니다. 선발송이 된 후 나머지 도서는 별도로 준비하여 보내드릴 예정이며 거래처에서 준비된 후 입고되는 즉시 신속하게 배송해 드립니다 그러나 안타깝게도 거래처로 주문이 되었더라도 품절/절판이 될 수가 있으며, 이 경우에는 별도로 고객님께 메일과 SMS를 통하여 알려 드립니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop2"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>예약상품 배송에 대하여 설명드립니다.</div>
        			<textarea style="resize: none;">*예약상품과 일반 상품을 같이 주문하시면 전체상품의(예약상품이아닌상품도) 배송일이 늦어집니다! 주문해주실 때 예약상품을 일반상품과 함께 주문하실 경우, 예약상품이 아닌 도서와 음반도 예약상품이 입고된 후 함께 발송됩니다. (발송일은 한 주문건의 전체 상품들 중 예상발송일이 가장 오래 소요 되는 도서를 기준으로 함께 발송됩니다.) 단, 예약상품의 발송기일이 일주일 이상인 경우, 먼저 준비가 된 다른 상품은, 주문 후 평일기준 4~5일 후에 발송요청이 들어가게 됩니다. 예약음반과 기타상품을 동시에 주문하셨을 경우, 예약음반이 출시된 이후에 통합 배송되는 것에 유의하여 주문해 주시기 바랍니다. 따라서 예약음반 이외의 상품(도서 및 음반, DVD 등)을 먼저 받고자 하시면 예약음반과 별도로 주문해주시기 바랍니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop3"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>국내에 보유하고 있지 않는 해외주문도서는 얼마만에 받아 볼 수 있나요?</div>
        			<textarea style="resize: none;">* 서양서 [해외주문도서]의 예상발송일은 10 ~ 12일 내외 소요 예정입니다. 서양서 [해외주문도서]중 'special order'는 해외거래처에서 출판사로 주문중인 도서로서 예상발송일은 4 ~ 6주 예상됩니다. 현지 출판사 사정에 의해 구입이 어려울 경우 2 ~ 3주안에 공지해 드립니다.
 * 일서 [해외주문도서]의 예상발송일은 3 ~ 4주 내외 소요예정입니다. - 일서해외주문도서의 경우 현지 출판사 사정에 의해 구입이 어려울 경우 2-4주 안에 연락 드립니다. - 해외주문도서는 고객님의 요청에 의해 수입된 도서이기 때문에 주문진행 중 취소가 불가능합니다 - 해외주문도서는 해외로 반품이 불가하기 때문에 파본 도서를 제외하고는 반품,교환등이 가능하지않습니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop4"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>해외배송을 하려 하는데 배송지를 어떻게 작성해야 하나요?</div>
        			<textarea style="resize: none;">해외배송을 이용하시려면 배송지선택에서 ◎해외배송을 선택하셔야 합니다. 그 후 나라를 선택하시면 FedEx와 UPS의 해외우송료를 확인하실 수 있습니다. 
 - Contact Person(받으시는 분) : 받는분 성함을 영문으로 작성하세요. 
 - Zip Code(우편번호) : 우편번호를 말합니다. 공백없이 작성하세요. 
 - Address(기본주소) : 도시명을 제외한 상세 주소를 작성합니다. 
 - City or State(지역,국가) : 도시명을 입력하세요. Canada/USA는 City와 State를 콤마(,)로 구분하여 입력하셔야 합니다. 
 - Mobile : 배송지에서 연락가능한 휴대폰번호를 남겨주세요. 
 - Phone (Home/Office) : 제 2 연락처로 부재 시 연락가능한 연락처로 입력해주세요. 
 ※ 해외배송시 확인하셔야 할 기본적인 것들은 [유의사항] [각 배송업체별 요금표]을 확인하시어 이용에 불편함이 없으시길 바랍니다. 
 ※ 면세 및 통관기준이 강화되었사오니 해외배송을 하시려는 국가별 [화물 도착지 국가의 수입 통관 정보 및 유의사항]을 잘 살피어 이용하여 주시기 바랍니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop5"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>회사로 배송신청을 하면 퇴근 전에 바로배송이 가능한가요?</div>
        			<textarea style="resize: none;">퇴근시간 전에 배송이 될수 있도록 최대한 노력하고 있습니다. 다만, 배송량이나 코스별 교통상황에 따라 배송이 지연될 우려가 있으니 바로배송의 경우는 가급적이면 댁으로 주문하셔서 편안하게 받아보시기 바랍니다. 회사 사무실에서 급하게 필요하실 경우, 온라인 주문 후 교보문고 각 영업점에서 1시간 내에 직접 찾아보실 수 있는 바로드림 서비스가 따로 운영 중이오니 참고하시기 바랍니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop6"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>우리 지역이 택배 파업 지역인가요?</div>
					<textarea style="resize: none;">상품 상세페이지와 주문페이지에서 지역 변경 시 배송 지연 및 중단 안내가 노출될 경우 파업 지역에 해당됩니다.
 해당 지역은 타 택배사를 통해 대체 발송하고 있으나 우체국 접수 중지 조치로 인하여 배송이 다소 지연되거나, 주문이 불가할 수 있습니다.</textarea>
					<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop7"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>교과서를 구입하고 싶어요.</div>
        			<textarea style="resize: none;"><2020년 교과서 판매 안내> 2019년 2학기 검정, 국정 교과서는 모두 판매 종료되었습니다. 2020년 1학기 교과서의 입고 일정은 아직 결정되지 않아 입고 시 안내드리겠습니다. 판매장소 1. 국정교과서 - 광화문점 학습코너 : 02-397-3441 - 강남점 어린이코너 : 02-530-0313(초등 국정교과서) - 강남점 중고학습코너 : 02-530-0311(중고등 국정교과서) - 잠실점 중고학습코너 : 02-2140-8822 - 영등포점 어린이코너 : 02-2678-3501(내선126) - 안양점 어린이코너 : 031-466-3501(내선1) - 부산점 소설/비소설코너 : 051-806-3501(내선1) 2. 검정교과서 - 광화문점 학습코너 : 02-397-3441 ※구입하지 못한 교과서는 “한국검정교과서” 인터넷 홈페이지 혹은 직매장을 이용하시기 바랍니다 한국검정교과서</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop8"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>도서 및 상품 검색을 쉽게 하는 방법은 없나요?</div>
        			<textarea style="resize: none;">많은 고객님들께서 책을 검색하는 데에 어려움을 갖고 계십니다. 도대체 왜 도서검색이 어려운 것일까요? 무엇보다도 도서명의 특수성 때문입니다. 냉장고나 세탁기, 디지털카메라 같은 품목은 단일 검색어를 갖고 찾을 수 있으며 여기에 여러 종류의 품목이 있습니다. 따라서 검색어에 대한 결과를 보고 상품을 비교해가면서 구입하시면 됩니다. 그러나 도서의 경우에는 검색어에 해당되는 도서 자체를 찾기가 어려워집니다. 어떻게 해야 책 검색을 쉽게 할 수 있을까요? 몇가지 TIP을 알려드립니다 1. 여러 단어가 연결되어 있는 도서명은 확실한 두 단어를 띄어쓰기 해서 검색해주세요 '그 많던 싱아는 누가 다 먹었을까?' 라던가 '수줍음도 지나치면 병', '모리와 함께 한 화요일' 같은 제목의 책들은 - 조사를 틀리게 기억할 수도 있고, 순서를 다르게 기억할 수도 있습니다. 예컨데 '누가 그 많던 싱아를 다 먹었는가?'라던가 '지나친 수줍음은 병', '화요일은 모리와 함께' - 이런 식으로 검색을 하면 도저히 검색을 할 수가 없습니다. 그러므로 다음과 같이 검색을 해보세요. (예) 그 많던 싱아는 누가 다 먹었을까? -> 싱아 누가       수줍음도 지나치면 병 -> 수줍음 병       모리와 함께 한 화요일 -> 모리 화요일 2. 한 글자 도서제목은 결과내재검색을 활용해보세요. 틱낫한 스님의 유명한 저서 '화'를 검색해보세요. '화'와 같은 한 단어 검색은 너무 많은 결과가 나오기 때문에 어려움이 발생합니다. 결과 페이지에서 다음 페이지로 다음페이지로 넘어가다 보면 언젠가는 나오겠지만 너무 불편합니다. 그럴 경우에는 결과내 재검색을 활용해보시기 바랍니다. '화'로 검색한 다음에 - 저자명을 '틱낫한'으로 넣으시고 검색하면 쉽게 찾으실 수 있습니다. 상세검색을 이용하시면 분야를 설정하고 검색을 하실 수 있는 등, 더욱 편리한 검색이 가능합니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop9"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>아마존에 있는 책이 왜 소모아엔 없나요?</div>
        			<textarea style="resize: none;">소모아는 아마존과 직접 거래를 하고 있지 않기 때문에 아마존과 도서 DB와 다를 수 있습니다. 또한 미국 현지 서점이기 때문에 출판사로 부터 공급받아 재고로 남아 있는 도서가 있을 수 있습니다. 아마존에만 재고를 보유하고 있는도서는 주문 대행이 어려우며 직접 주문 진행해주셔야 합니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop10"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>입고준비중인 도서는 어떤 상태인가요?</div>
        			<textarea style="resize: none;">'입고준비중' 인 도서는 수입절차상 지연되고 있는 도서를 의미합니다. 일서해외주문도서 중 일부 도서는 수입과정상 절차가 오래 소요되는 경우가 종종 있습니다. 일서 수입과정에서 기간이 오래 소요되는 것이오니 이점 양해 부탁드립니다. 입고준비중으로 표기된 도서는 배송기간이 예정 기간(일반해외주문:2주,스페셜오더:3-4주)보다 10일~14일 정도 더 소요됩니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop11"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>일시품절상품의 알림메일 받기는 무엇인가요?</div>
        			<textarea style="resize: none;">일시품절상품은 출판사나 상품제작사의 사정에 따라 재고부족 등의 사유로 한동안 판매중단이 된 상품을 뜻합니다. 소모아는 일시품절이었던 도서 및 상품이 재유통 되어 구매가 가능할 때 고객님께 알려드리는 서비스를 시행하고 있습니다. 고객님께서 구입을 원하시는 상품이 일시품절인 경우, 해당 상품의 상세페이지에서 알림메일받기 버튼을 눌러 신청해주시기 바랍니다. 더욱 편리한 쇼핑을 만끽하실 수 있습니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop12"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>도서/상품 캐시 및 마일리지 사용시 주의사항</div>
        			<textarea style="resize: none;">1. 제작상품이나 각인, 이니셜을 기재한 제품은 반품할 수 없습니다. 구매에 신중을 기해주세요. 2. 비닐 패킹이 되어 있는 제품의 패킹 개봉시 반품이나 교환이 불가합니다. 3. 식품.식물등은 제품 특성상 구매 이 후 반품이 불가합니다. 4. 옵션 상품 구매시 반드시 옵션을 선택하여 주세요.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop13"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>해외주문도서의 주문취소나 반품/교환이 가능한가요?</div>
        			<textarea style="resize: none;">주문하신 도서는 대금결재가 완료된 후 24시간 이내 해외로 자동 발주처리되기 때문에 발주 후에는 주문취소가 불가합니다. 또한, 해외주문도서는 이용자의 요청에 의한 개인주문상품이므로 이용자의 단순한 변심/착오로 인한 취소,반품,교환 발생 시 소모아는 해외주문 반품/취소 수수료를 공제한 대금으로 이용자에게 환급합니다. 이때, 해외주문 반품/취소 수수료는 판매정가의 20%를 적용합니다. 단, 배달된 도서가 파본인 경우에는 도서를 받은 날짜로부터 40일 이내까지 반품 또는 교환해 드립니다. ※ 파본으로 오인되는 정상상품도 있습니다. 1. 오디오북 오디오북이 재생이 안될 경우 소형 플레이어 외에 일반 플레이어에서 작동을 시도해보시기 바랍니다. 카세트 테잎의 경우 90분짜리 테잎으로 빡빡하게 감겨있는 경우가 많아 재생이 안될 수 있으며, 이러한 경우 테잎이 잘 풀리도록 손바닥에 한두번 툭툭쳐서 일반 데크에서 빨리감기, 되감기 등을 하시면 재생이 됩니다. 또한 CD의 표면에 이물질이 묻어 있는지 다시 확인해보시고, 컴퓨터 사양에 따라 작동이 안될 경우가 있으니 반드시 일반 플레이어서 재생해 보시기 바랍니다. 반품하신 상품에 이상이 없다고 판단되는 경우 환불이 되지 않으며, 반송/교환에 대한 제반 비용은 고객님께서 부담해 주셔야 합니다. 2. Classic 제본(Rough-Cut Edition) 클래식 제본이란 손이 베지 않도록 책장의 옆면을 울퉁불퉁하게 제작한 고급제본 방식입니다. 고전문학작품들을 주로 이런 방식으로 제본하기 때문에 클래식 제본이라고 합니다. 국내에는 이런 제본 방식이 없기 때문에 파손된 책인줄 알고 놀라시는 독자들이 많지만 오해가 없으시길 바랍니다. 옆면이 마구 찢어진 것처럼 보이신다면 정상적인 제품을 받으신 겁니다. 반품하신 상품에 이상이 없다고 판단되는 경우 환불이 되지 않으며, 반송/교환에 대한 제반 비용은 고객님께서 부담해 주셔야 합니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop14"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>예치금을 환불받고 싶습니다.</div>
        			<textarea style="resize: none;">예치금은 소모아에서의 상품 구매에 사용하실 수 있으며, 고객계좌로 환불 받으실 수 있습니다.
 신용카드로 결제하신 경우 해당 신용카드로 환불받으실 수 있으며 3~7일 후 취소됩니다.
 실시간 계좌이체로 결제하신 경우 본인 계좌로 환불받으실 수 있으며 1~2일 후 취소됩니다.
 무통장입금으로 결제하신 경우 본인 계좌로 환불받으실 수 있으며 1~2일 후 취소됩니다.
 휴대폰 소액 결제로 결제하신 경우 당월 취소와 익월 취소가 있습니다.
 당월 취소하실시 전체취소시 청구서에 미반영되며 부분취소시에는 예치금 혹은 고객계좌로 환불되며 청구서에 반영됩니다.
 익월 취소시에는 전체취소와 부분취소 상관없이 예치금 혹은 고객계좌로 환불되며 청구서에 반영됩니다.
 만약, 고객님께서 너무 잦은 환불신청을 하신다면 내역확인을 위해 처리가 늦어질 수 있을 뿐만 아니라 환불제한 혹은 사용한도가 축소될 수 있음을 알려드립니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop15"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>인터넷 주문도서의 반품이 가능한가요?</div>
        			<textarea style="resize: none;">1.고객님의 변심 또는 주문오류로 인한 반품신청일때,
 타도서로의 교환이 불가하며,인터넷소모아에서 주문하신 상품의 경우,
 반품 교환이 가능한 종류에 한해 상품을 수령하신 날로부터 7일이내로 반품신청이가능하며,
 반송료는 고객님께서 부담하시게 됩니다.
 
 단, 반품하실 도서는 사용하지않고, 상품 자체의 비닐래핑이 되어있는 책은 비닐래핑은 벗기지 않고,
 음반의 경우 비닐개봉을 하지 않은 상태로 재생하지 않는 상태일 때 가능합니다.
 
 2. 주문하신 상품의 결함 및 계약내용과 다를 경우, 문제점 발견 후 30일 이내 반품신청이 가능합니다.
 
 3. 반품보내기 전 다음과 같이 반품도서의 준비를 완료해주십시오.
 도서와 함께 받으신 '거래명세서' 뒷편의 반품신청서 양식을 모두 작성하여
 도서와 함께 택배밀봉포장을 준비하여 주십시오. 혹시 반품신청서가 없으시면 메모지에 아래의 내용을 기입하여 주십시오.
 
 (반품신청서 양식)
 주문번호 :
 고객명 :
 환불요청방법 :
 (※ 카드 및 핸드폰결제(당월결제), 실시간계좌이체는 반품 시 승인취소로 환불되며,
 온라인무통장송금은 예치금으로 1차 환원 또는 환불계좌를 적어주시면 환불계좌로 환불됩니다.)
 반품보내실 상품과 청약철회서가 준비되셨으면 인터넷소모아에서 반품신청을 해주시면 됩니다.
 
 4. 인터넷소모아 마이룸 > 주문배송내역 > 주문조회 > 반품/교환신청 홈페이지에서 직접 접수하실 수 있으며,
 당사와 제휴된 CJ대한통운 택배로 회수접수가 됩니다.
 회수기사 방문전에 미리 도서와 청약철회서를 함께 동봉하여 택배밀봉포장을 준비하여 주시기 바랍니다.
 주문 시 배송방법 중 편의점택배 및 우체국을 이용하셨던 경우, 해당 배송사는 회수가 불가함으로
 일반 주소지로 변경하여 접수하셔야 CJ대한통운 택배로의 반품신청이 정상적으로 접수됩니다.
 ※ 우송료및 쿠폰,마일리지 금액을 제외한 나머지 도서의 실결제금액이 환불될때 택배반송료 2천원이
 고객부담으로 자동차감되며, 나머지 금액만 환불됩니다.
 택배기사님께는 회수반송료를 현금으로 드리거나 혹은 상품 포장 시 동봉하여 보내주시면 안됩니다.
 
 5. 개인택배 반품 방법 (선불택배)
 저희 고객센터 또는 홈페이지를 통한 반품을 이용하시기가 어려워
 개별 택배로 반품하고자 하실때는, 고객님께서 원하시는 택배사를 자유롭게 선택하셔서
 개별택배우송료를 부담하시고 보내주셔야합니다. 보내실 반품처 주소는 아래와 같습니다.
 
 반품처: (우 10881) 경기 파주시 문발로 249, 소모아 A동 2층 인터넷반품담당자 앞
 
 위의 방법 중 편하신 방법을 이용하시되,
 당사 물류센터로 반품이 되면 반품신청서에 적어주신 환불계좌 또는 그외 환불방법으로 환불되며,
 구체적인 환불요청 내역이 기재되어 있지 않은 경우,
 주문하신 회원님의 예치금으로 1차 자동 환원됩니다.
 해당 예치금은 다음 주문시 사용하시거나
 추후 마이룸 > 나의 통장 > 예치금 > 환불신청탭 클릭하시고 직접 환불접수도 가능합니다.
 
 6. 전 매장 안내데스크
 전 매장 안내데스크에서 교환/환불이 가능합니다.
 (단 교환은 파본일 경우에만 매장 재고가 있는 같은 도서로 교환 가능하며 다른 도서로 교환은 되지 않습니다.)
 
 ※ 반품주의사항을 함께 기재해 드리오니 미리 숙지하여 주시기 바랍니다.
 1) 해외주문도서(서양서, 일서)는 파본/훼손/오배송 도서를 제외하고는 반품/교환이 되지 않습니다.
 해외로 반품이 불가하기 때문에 이 점 양지하여 주십시오.
 2) 음반, 비디오, DVD, CD-ROM 및 S/W의 포장을 개봉했을 때는 반품/교환이 되지 않습니다.
 구입 전에 시스템 사양 등을 꼭 확인하시고 구입해 주십시오.
 3) 기타 반품불가품목
 잡지, 테이프, 대학입시자료, 사진집, 방통대 교재, 교과서, 만화, 미디어전품목, 악보집, 정부간행물, 지도,
 각종 수험서, 적성검사자료, 성경, 사전, 법령집, 지류, 필기구류, 시즌상품,
 개봉한 상품 등
 4) 중고장터나 기프트상품 주문은 판매자(업체)에게 개별반품처리가 되므로
 반품문의시 당사 고객센터로 연락주시어 문의하시기 바랍니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop16"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>환불계좌를 변경하고 싶어요.</div>
        			<textarea style="resize: none;">주문 취소/반품 시 기재한 환불계좌 변경은 환불계좌 오류 등 환불이 완료되지 않은 상태에서만 변경이 가능하며
변경요청 시 1:1상담 또는 고객센터(1544-1900)으로 연락 바랍니다.

▣ 환불계좌 변경 신청방법
① 환불이 가능한 계좌 : 주문자 또는 입금자 또는 수령자의 계좌
② 제3자의 계좌로 환불을 원할 경우 직계가족 등 관계증빙서류 (주민등록등본, 의료보험증 등)
FAX로 보낸 후 고객센터(1544-1900) 또는 1:1상담 메일문의를 통해 연락 주시면 확인 후
처리해 드립니다.

▣ FAX 번호 안내
- 소모아 고객센터 0502-987-5711</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop17"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>휴대폰 소액결제는 어떻게 환불되나요?</div>
        			<textarea style="resize: none;">휴대폰 소액결제로 주문 후 취소/환불 방법은 아래와 같습니다.
 
 1.당월 결제 후 당월 환불
 1) 전체 취소 : 휴대폰 결제 취소 (청구서 미반영)
 2) 부분 취소 : 예치금 또는 고객계좌 환불 (청구서 반영)
 
 2.당월 결제 후 익월 환불
 1) 전체 취소 : 예치금 또는 고객계좌 환불 (청구서 반영)
 2) 부분 취소 : 예치금 또는 고객계좌 환불 (청구서 반영)</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
        <div class="popUpView" id="pop18"><!-- 팝업창 fixed -->
        	<div class="popup_back" onclick="ClosePopup()"></div>
        	<div class="popup_wrap"><!-- 팝업창 absolute -->
        		<div><span>빠른고객서비스</span><button onclick="ClosePopup()">X</button></div>
        		<div class="popup_content">
        			<div>예치금 환불시, 본인 명의의 계좌가 없으면 환불 받지 못하나요?</div>
        			<textarea style="resize: none;">고객님의 예치금을 안전하게 은행계좌로 환불해 드리기 위해 주문자, 입금자, 수령자 명의의 계좌로 환불이 가능하며,
 환불받을 본인의 계좌가 없을 경우 관계 증빙서류를 제출하면 가족 계좌로 환불이 가능합니다.
 ( 가족관계 증빙서류 : 가족임을 증명할 수 있는 주민등록등본, 의료보험증 사본 등 )
 
 ▣ 가족계좌 환불신청 방법
 ① 1:1 상담 또는 고객센터(1544-1900)으로 가족계좌 환불 요청
 ② 고객센터 팩스(0502-987-5711)로 관계 증빙서류 전송
 - 관계 증빙서류를 보낸 후 고객센터로 연락을 주시거나 1:1상담 메일로 한번 더 글을
 남겨 주시면 확인 후 환불신청 여부를 안내 받으실 수 있습니다.</textarea>
        			<div><button onclick="ClosePopup()">닫기</button></div>
        		</div>
        	</div>
        </div>
    </body>
    <script type="text/javascript" src="../somoajs/webwidget_menu_vertical_menu1.js"></script>
	<script type="text/javascript" src="../somoajs/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="../somoajs/script.js"></script>
    <script>
  //자주 묻는 질문 팝업
 	$('.popUpView').stop().hide();
 	
 	//팝업 닫기
 	function ClosePopup(){
	 	$('.popUpView').hide();
 	}
 	
 	//팝업 열기
 	function openPopUp(pop){
 		$("#pop"+pop).show();
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
    //고객센터 자주 묻는 질문
    $("div#faqmom > div").hide();
 	$("div#faqmom > div:first-child").show();
 	$("#delivery button").css('background-color','#0E76E4');
 	$("#delivery button").css('color','white');
 	//#0E76E4
    $(document).ready(function(){
    	$('#delivery').click(function(){
    		$('#down1').show();
    		$('#down2').hide();
    		$('#down3').hide();
    		$('#delivery button').css('background-color','#0E76E4');
    		$('#delivery button').css('color','white');
    		$('#bookgoods button').css('background-color','white');
    		$('#bookgoods button').css('color','black');
    		$('#payback button').css('background-color','white');
    		$('#payback button').css('color','black');
    	});
    	$('#bookgoods').click(function(){
    		$('#down1').hide();
    		$('#down2').show();
    		$('#down3').hide();
    		$('#delivery button').css('background-color','white');
    		$('#delivery button').css('color','black');
    		$('#bookgoods button').css('background-color','#0E76E4');
    		$('#bookgoods button').css('color','white');
    		$('#payback button').css('background-color','white');
    		$('#payback button').css('color','black');
    	});
    	$('#payback').click(function(){
    		$('#down1').hide();
    		$('#down2').hide();
    		$('#down3').show();
    		$('#delivery button').css('background-color','white');
    		$('#delivery button').css('color','black');
    		$('#bookgoods button').css('background-color','white');
    		$('#bookgoods button').css('color','black');
    		$('#payback button').css('background-color','#0E76E4');
    		$('#payback button').css('color','white');
    	});
    });
	
 	
 	
 	
 	
 	
 	
 	
 	
    </script>
</html>