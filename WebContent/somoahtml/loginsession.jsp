<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>소모야-로그인</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Jua&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Gothic&family=Nanum+Gothic+Coding&display=swap');
        #login_page{
            padding: 30px;
            width: 600px;
            height: 500px;
            background-color: white;
            margin: 80px auto;
            border-radius: 20px;
        }
        #login_page div{
            margin: 50px 90px;
            text-align: center;
        }
        #login_page div ul{
            list-style: none;
            padding-left: 0;
        }
        input[type="text"]{
            margin-bottom: 20px;
        }
        input[type="text"],
        input[type="password"]{
            width: 250px;
            height: 40px;
            border: 0;
            border-bottom: 0.5px solid rgba(0, 0, 0, 0.5);;
        }
        #loginname{
            font-size: 35px;
            font-family: 'Jua', sans-serif;
            margin-bottom: 30px;
        }
        #loginset li{
            margin-bottom: 20px;
            font-family: 'Nanum Gothic Coding', monospace;
        }
        #loginset li:first-child,
        #loginset li:nth-child(3){
            margin-bottom: 5px;
        }
        .action_button{
            padding: 5px;
            width: 117px;
            height: 50px;
            margin-top: 10px;
            font-weight: bold;
            border: 0;
            border-radius: 20px;
        }
        .action_button:nth-child(2){
            margin-right: 10px;
        }
        .action_button a:link,
        .login_button a:link {
            text-decoration-line: none;
        }
        .action_button a:visited,
        .login_button a:visited {
            text-decoration: none;
            color: black;
        }
        .login_button{
            border-radius: 20px;
            border: 0;
            width: 250px;
            height: 40px;
            font-size: 17px;
            font-weight: bold;
        }

    </style>
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
                        <li><a href="loginsession.jsp" class="main_join">로그인</a></li><!--로그인하면 이게 내정보로 바뀜-->
                        <li><a href="joinagree.html" class="main_join">회원가입</a></li><!--로그인하면 이게 장바구니로 바뀜-->
                        <li><a href="recommend.somoa" class="main_join">추천합니다</a></li>
                        <li><a href="servicecenter.jsp" class="main_join">고객센터</a></li>
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
                            <input type="text" name="searching" id="search" placeholder="원하시는 책, 소설 등을 검색하세요.">
                        </form>
                    </article>
                </section>
                <section id="login_page">
                    <div>
                        <ul>
                            <li id="loginname"> SOMOA 로그인</li>
                            <!--테스트를 위해 사용가능한 계정: (ID:whgksrlf111 ,Password:123123123123)-->
                            <li>
                                <form action="login.jsp">
                                    <ul id="loginset">
                                        <li>아이디</li>
                                        <li><input type="text" name="id" placeholder="아이디를 입력해주세요"></li>
                                        <li>패스워드</li>
                                        <li><input type="password" name="password" placeholder="비밀번호를 입력해주세요"></li>
                                        <%
                                        	String lgrt = request.getParameter("lgrt");
                                        %>
                                        <input type="hidden" value="<%=lgrt %>" name="lgrt">
                                        <li>
                                            <input type="submit" value="로  그  인" class="login_button">
                                        </li>
                                    </ul>
                                </form>
                                <a href="joinagree.html"><button class="action_button">회원가입</button></a>
                                <a id="naverIdLogin_loginButton" href="javascript:void(0)"><button class="action_button">네이버 로그인</button></a>
                            </li>    
                        </ul>
                    </div>
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
	<script src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.2.js" charset="utf-8"></script>
    <script>
    	/* naver 로그인 */
    	var naverLogin = new naver.LoginWithNaverId(
				{
					clientId: "VQWaQb_yk3sHTxZhrOxo", 								//내 애플리케이션 정보에 cliendId를 입력해줍니다.
					callbackUrl: "http://localhost:8080/somoa/somoahtml/login.jsp", // 내 애플리케이션 API설정의 Callback URL 을 입력해줍니다.
					isPopup: false,
					callbackHandle: true
				}
			);	
		
		naverLogin.init();
		
		window.addEventListener('load', function () {
			naverLogin.getLoginStatus(function (status) {
				if (status) {
					var email = naverLogin.user.getEmail(); // 필수로 설정할것을 받아와 아래처럼 조건문을 줍니다.
		    		
					console.log(naverLogin.user); 
		    		alert("ee");
		            if( email == undefined || email == null) {
						alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
						naverLogin.reprompt();
						return;
					}
				} else {
					console.log("callback 처리에 실패하였습니다.");
				}
			});
		});
		
		
		var testPopUp;
		function openPopUp() {
		    testPopUp= window.open("https://nid.naver.com/nidlogin.logout", "_blank", "toolbar=yes,scrollbars=yes,resizable=yes,width=1,height=1");
		}
		function closePopUp(){
		    testPopUp.close();
		}
		
		function naverLogout() {
			openPopUp();
			setTimeout(function() {
				closePopUp();
				}, 1000);
			
			
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