<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>
<%@ page import="dto.Book" %>
<%@ page import="dto.Novel" %>
<%@ page import="dto.Search" %>
<%@ page import="dao.BookDAO"%>
<%@ page import="dao.NovelDAO" %> 
<%@ page import="dao.CustomDAO" %> 
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>소모아에 오신 것을 환영합니다.</title>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    </head>
    <link rel="stylesheet" href="../somoacss/main.css">
    <link rel="stylesheet" href="../somoacss/index-menu.css">
    <link rel="stylesheet" href="../somoacss/screendefault.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../somoacss/nivo-slider.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../somoacss/screenstyle.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="../somoacss/tags.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <%
    	String result = (String) session.getAttribute("success");
    	//session.setAttribute("success",result);	
    %>
    <!-- 로그인시 보이는 페이지 -->
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
                        <form action="search.somoa">
                            <input type="text" name="searching" id="search" placeholder="원하시는 책, 소설 등 을 검색하세요.">
                        </form>
                    </article>
                </section>
                <section class="promotion">
                    <!--홍보창1(오늘의e북)-->
                    <article>
                    	<div>
                    		<span>주간 이벤트!!</span>
                    		<i class="far fa-plus-square"></i>
                    	</div>
                    	<img src="../somoaimage/promo_ebook.PNG" alt="">
                    </article>
                    <!--홍보창2(오늘의웹소설)-->
                    <article>
                    	<div>
                    		<span>오늘의 도서</span>
                    		<i class="far fa-plus-square"></i>
                    	</div>
                    	<img src="../somoaimage/promo_webnovel.PNG" alt="">
                    </article>
                    <article>
                    <%
                    	CustomDAO cdao = CustomDAO.instance();
                    	List<Search> search = cdao.selectTrend();
                    %>
                        <div id="content-name">실시간 급상승 검색어</div>
                        <div id="content-rank">
                            <dl id="rank-list">
                                <dd>
                                    <ol>
                                    <%
                                    	for(int i=0;i<10;i++){
                                    %>
                                        <li><%=i+1 %> 순위<a href="search.somoa?searching=<%=search.get(i).getSearching() %>"> <%=search.get(i).getSearching() %></a></li>
                                    <%		
                                    	}
                                    %>
                                    </ol>
                                </dd>
                            </dl>
                        </div>
                    </article>
                </section>
                <div class="slider-wrapper theme-default big_screen">
                    <div id="slider" class="nivoSlider">
                        <img src="../somoaimage/slider1.jpg" data-thumb="../somoaimage/slider1.jpg" alt="" />
                        <img src="../somoaimage/slider2.jpg" data-thumb="../somoaimage/slider2.jpg" alt="" data-transition="slideInLeft" />
                        <img src="../somoaimage/slider3.jpg" data-thumb="../somoaimage/slider3.jpg" alt="" title="#htmlcaption" />
                    </div>
                </div>
                <section class="ranking_bbb">
                <jsp:useBean id="bookrank" class="dao.BookDAO" />
                
                <%
                	BookDAO dao = BookDAO.instance();
                	List<Book> bookbest = dao.selectIndexBest();
                %>
                    <article>
                        <h3>베스트셀러</h3>
                        <div class="best_list">
                            <ul class="li_style_author">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><%=bookbest.get(i).getBook_author() %></li>
                                <%		
                                	}
                                %>
                            </ul>
                            <ul class="li_style_name firstbest">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><a href="booknotice.somoa?code=<%=bookbest.get(i).getPiece_code() %>"><%=bookbest.get(i).getBook_name() %></a></li>
                                <%		
                                	}
                                %>
                            
                            </ul>
                        </div>
                    </article>
                    <%
                    	NovelDAO ndao = NovelDAO.instance();
                    	List<Novel> novelbest = ndao.selectpaybestNovel();
                    	
                    	Date today = new Date();
                	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
                	    String toDay = date.format(today);
                	    Calendar mon = Calendar.getInstance();
                	    mon.add(Calendar.MONTH , -3);
                	    String due = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
                	    
                    	List<Novel> novelrecentbest = ndao.selectpayrecentbestNovel(due);
                    	
                    	List<Novel> novelfreebest = ndao.selectfreebestNovel();
                    	
                    %>
                    <article>
                        <h3>웹소설Best</h3>
                        <div class="best_list">
                            <ul class="li_style_author">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><%=novelbest.get(i).getNovel_author() %></li>
                                <%		
                                	}
                                %>
                            </ul>
                            <ul class="li_style_name">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><a href="noveldetail.somoa?code=<%=novelbest.get(i).getPiece_code()%>&pay=yes"><%=novelbest.get(i).getNovel_name() %></a></li>
                                <%		
                                	}
                                %>
                            </ul>
                        </div>
                    </article>
                    <article>
                        <h3>웹소설 신작Best</h3>
                        <div class="best_list">
                            <ul class="li_style_author">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><%=novelrecentbest.get(i).getNovel_author() %></li>
                                <%		
                                	}
                                %>
                            </ul>
                            <ul class="li_style_name">
                                <%
                                	for(int i=0;i<10;i++){
                                %>
                                <li><a href="noveldetail.somoa?code=<%=novelrecentbest.get(i).getPiece_code()%>&pay=yes"><%=novelrecentbest.get(i).getNovel_name() %></a></li>
                                <%		
                                	}
                                %>
                            </ul>
                        </div>
                    </article>
                </section>    
                <section class="free_new_event">
                    <article>
                        <h3>무료Best</h3>
                        <div class="best_list">
                            <ul class="li_style_author" id="free_best1">
                                <%
                                	for(int i=0;i<novelfreebest.size();i++){
                                %>
                                <li><%=novelfreebest.get(i).getNovel_author() %></li>
                                <%		
                                	}
                                %>
                            </ul>
                            <ul class="li_style_name" id="free_best2">
                                <%
                                	for(int i=0;i<novelfreebest.size();i++){
                                %>
                                <li><a href="noveldetail.somoa?code=<%=novelfreebest.get(i).getPiece_code()%>&pay=no"><%=novelfreebest.get(i).getNovel_name() %></a></li>
                                <%		
                                	}
                                %>
                            </ul>
                        </div>
                    </article>
                    <div>
                        <article><div>잘 나가는 베스트 신작!!</div></article>
                        <div id="new_book">
                        <%
                        	List<Book> booknewbest = dao.selectIndexNewBest();
                        
                        	for(int i=0;i<3;i++){
                        %>		
                            <article>
                            	<a href="booknotice.somoa?code=<%=booknewbest.get(i).getPiece_code() %>"><img src="../somoaimage/book/<%=booknewbest.get(i).getBook_cover() %>" alt=""></a>
                            	<div><a href="booknotice.somoa?code=<%=booknewbest.get(i).getPiece_code() %>"><%=booknewbest.get(i).getBook_name() %></a></div>
                            	<div><%=booknewbest.get(i).getBook_author() %></div>
                            </article>
                        <%		
                        	}
                        %>
                        </div>
                    </div>
                    <article>
                        <div class="event_title">추천 이벤트</div>
                        <div class="event_body">
                            <img src="../somoaimage/event_page1.PNG" alt="">
                        </div>
                    </article>
                </section>
                <section class="webnovel_genre">
                    <article>
                        <div class="webnovel_title">
                        	웹소설 장르별 Best
                        </div>
                        <ul id="tabs">
                            <li><a href="#" title="tab1">무협</a></li>
                            <li><a href="#" title="tab2">판타지</a></li>
                            <li><a href="#" title="tab3">퓨전</a></li>
                            <li><a href="#" title="tab4">게임</a></li>
                            <li><a href="#" title="tab5">스포츠</a></li>
                            <li><a href="#" title="tab6">로맨스</a></li>
                            <li><a href="#" title="tab7">현대판타지</a></li>
                            <li><a href="#" title="tab8">대체역사</a></li>
                            <li><a href="#" title="tab9">드라마</a></li>
                            <li><a href="#" title="tab10">기타 등등</a></li>
                        </ul>
                        <%
                        	List<Novel> paybestmuhyup = ndao.selectpaygenreNovel("무협");
                        	List<Novel> paybestfantasy = ndao.selectpaygenreNovel("판타지");
                        	List<Novel> paybestfusion = ndao.selectpaygenreNovel("퓨전");
                        	List<Novel> paybestgame = ndao.selectpaygenreNovel("게임");
                        	List<Novel> paybestsport = ndao.selectpaygenreNovel("스포츠");
                        	List<Novel> paybestromance = ndao.selectpaygenreNovel("로맨스");
                        	List<Novel> paybestmodernfantasy = ndao.selectpaygenreNovel("현대판타지");
                        	List<Novel> paybestalternativehistory = ndao.selectpaygenreNovel("대체역사");
                        	List<Novel> paybestdrama = ndao.selectpaygenreNovel("드라마");
                        	List<Novel> paybestetc = ndao.selectpaygenreetcNovel();
                        %>
                        <div id="content"> 
                            <div id="tab1"><!--무협-->
                                <ul>
                                	<%
                                		for(int i=0;i<paybestmuhyup.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestmuhyup.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestmuhyup.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestmuhyup.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestmuhyup.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestmuhyup.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestmuhyup.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab2"><!--판타지-->
                                <ul>
                                    <%
                                		for(int i=0;i<paybestfantasy.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestfantasy.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestfantasy.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestfantasy.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestfantasy.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestfantasy.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestfantasy.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>   
                            </div>
                            <div id="tab3">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestfusion.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestfusion.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestfusion.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestfusion.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestfusion.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestfusion.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestfusion.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab4">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestgame.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestgame.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestgame.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestgame.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestgame.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestgame.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestgame.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab5">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestsport.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestsport.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestsport.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestsport.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestsport.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestsport.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestsport.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab6">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestromance.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestromance.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestromance.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestromance.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestromance.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestromance.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestromance.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab7">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestmodernfantasy.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestmodernfantasy.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestmodernfantasy.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestmodernfantasy.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestmodernfantasy.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestmodernfantasy.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestmodernfantasy.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab8">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestalternativehistory.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestalternativehistory.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestalternativehistory.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestalternativehistory.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestalternativehistory.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestalternativehistory.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestalternativehistory.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab9">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestdrama.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestdrama.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestdrama.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestdrama.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestdrama.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestdrama.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestdrama.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
                                </ul>
                            </div>
                            <div id="tab10">
                                <ul>
                                    <%
                                		for(int i=0;i<paybestetc.size();i++){
                                	%>
                                    <li>
                                        <p title="<%=paybestetc.get(i).getNovel_name() %>"><a href="noveldetail.somoa?code=<%=paybestetc.get(i).getPiece_code()%>&pay=yes" class="detaillink"><%=paybestetc.get(i).getNovel_name() %></a></p>
                                        <p><%=paybestetc.get(i).getNovel_author() %></p>
                                        <p><a href="noveldetail.somoa?code=<%=paybestetc.get(i).getPiece_code()%>&pay=yes" class="detaillink"><img src="../somoaimage/novel/<%=paybestetc.get(i).getNovel_cover() %>"></a></p>
                                    </li>
                                	<%		
                                		}
                                	%>
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
    </body>
    <script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script type="text/javascript" src="../somoajs/webwidget_menu_vertical_menu1.js"></script>
    <script type="text/javascript" src="../somoajs/jquery.nivo.slider.js"></script>
    <script src="../somoajs/jquery.nivo.slider.pack.js" type="text/javascript"></script>

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
            $('#menuopen6').mouseenter(function(){
                $('#menuhide6').stop().show();
            });
            $('#menuopen6').mouseleave(function(){
                $('#menuhide6').stop().hide();
            });
        });

        
        $(function() {
            /*screen*/
            $('#slider').nivoSlider();
        });

        /*tags*/
        $(document).ready(function() {
        	$("#content div").hide(); // Initially hide all content
        	$("#tabs li:first").attr("id","current"); // Activate first tab
        	$("#tab1").fadeIn(); // Show first tab content

            $('#tabs a').click(function(e) {
                e.preventDefault();        
                $("#content div").hide(); //Hide all content
                $("#tabs li").attr("id",""); //Reset id's
                $(this).parent().attr("id","current"); // Activate this
                $('#' + $(this).attr('title')).fadeIn(); // Show content for current tab
            });
        });
        
        /*real-timw searching*/
        $(function() {
            var count = $('#rank-list li').length-2;
            var height = $('#rank-list li').height();

            function step(index) {
                $('#rank-list ol').delay(2000).animate({
                    top: -height * index,
                }, 500, function() {
                    step((index + 1) % count);
                });
            }
            step(1);
        });
    </script>
</html>