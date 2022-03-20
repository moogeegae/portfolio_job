package controller;

import java.io.IOException;

import javax.annotation.PostConstruct;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import command.BasketInsert;
import command.BookBoardShow;
import command.BookNoticeShow;
import command.CustomShow;
import command.EbookBoardShow;
import command.Idcheck;
import command.LikeShow;
import command.MyRecomInsert;
import command.MypayShow;
import command.NoticeListShow;
import command.NovelBoardShow;
import command.NovelDetailRead;
import command.NovelDetailShow;
import command.PayGo;
import command.PayShow;
import command.QnaDetailShow;
import command.QnaListInsert;
import command.QnaReplyGo;
import command.QnaReplyInsert;
import command.QnaShow;
import command.RecomDetailShow;
import command.RecomLikeShow;
import command.RecomSelShow;
import command.RecomShow;
import command.ReviewInsert;
import command.SearchShow;


public class Controller extends HttpServlet{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");
		String requestURI = request.getRequestURI();
		int urlindex = requestURI.lastIndexOf("/")+1;
        String url = requestURI.substring(urlindex);
        String result = null;
        
        //id 중복확인
        if (url.equals("idcheck.somoa")) {
        	Idcheck ic = Idcheck.instance();
        	System.out.println("22");
        	try {
				ic.showData(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
        }
		//마이페이지 정보 불러오기
        if (url.equals("mypage.somoa")) {
			CustomShow cs = CustomShow.instance();
			try {
				result = cs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
        //결제
        if (url.equals("mypaybo.somoa")) {
        	MypayShow pg = MypayShow.instance();
        	try {
        		result = pg.showData(request, response);
        		request.getRequestDispatcher(result).forward(request,response);
        	} catch (Exception e) {												
        		e.printStackTrace();
        	}
        }
        
        //추천게시판 불러오기
		if (url.equals("recommend.somoa")) {
			RecomShow rs = RecomShow.instance();
			try {
				result = rs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//추천게시판 세부정보 불러오기
		if (url.equals("RecomDetail.somoa")) {
			RecomDetailShow rds = RecomDetailShow.instance();
			try {
				result = rds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		
		//추천게시판 장르별 보기
		if (url.equals("RecommendGenreSearch.somoa")) {
			RecomSelShow rs = RecomSelShow.instance();
			try {
				result = rs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//추천게시판 장르별 보기
		if (url.equals("RecomLike.somoa")) {
			RecomLikeShow rs = RecomLikeShow.instance();
			try {
				result = rs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//추천 게시판 내 글 쓰기
		if (url.equals("MyRecommendWrite.somoa")) {
			MyRecomInsert mri = MyRecomInsert.instance();
			try {
				result = mri.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//추천 게시판 좋아요 ajax
		if (url.equals("likerecom.somoa")) {
			LikeShow ls = LikeShow.instance();
			try {
				ls.showData(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//문의 게시판 보기
		if (url.equals("login11qna.somoa")) {
			QnaShow qs = QnaShow.instance();
			try {
				result = qs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//문의 게시판 상세내용
		if (url.equals("login11qnaDetail.somoa")) {
			QnaDetailShow qds = QnaDetailShow.instance();
			try {
				result = qds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//답변 달기 이동 관리자 전용
		if (url.equals("qnaReplyGo.somoa")) {
			QnaReplyGo qds = QnaReplyGo.instance();
			try {
				result = qds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//답변 달기 실행 관리자 전용
		if (url.equals("qnaReplyForm.somoa")) {
			QnaReplyInsert qds = QnaReplyInsert.instance();
			try {
				result = qds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//문의 입력
		if (url.equals("QnaInsert.somoa")) {
			QnaListInsert qli = QnaListInsert.instance();
			try {
				result = qli.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		
		//faq와 notice 불러오기
		if (url.equals("notice.somoa")) {
			NoticeListShow nls = NoticeListShow.instance();
			try {
				result = nls.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//책 게시판 열기
		if (url.equals("bookboard.somoa")) {
			BookBoardShow bbs = BookBoardShow.instance();
			try {
				result = bbs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//책 세부정보게시판 열기
		if (url.equals("booknotice.somoa")) {
			BookNoticeShow bns = BookNoticeShow.instance();
			try {
				result = bns.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//책 세부정보게시판 리뷰쓰기
		if (url.equals("review.somoa")) {
			ReviewInsert ri = ReviewInsert.instance();
			try {
				result = ri.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//웹소설 보기
		if (url.equals("novelboard.somoa")) {
			NovelBoardShow nbs = NovelBoardShow.instance();
			try {
				result = nbs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//웹소설 detail 보기
		if (url.equals("noveldetail.somoa")) {
			NovelDetailShow nds = NovelDetailShow.instance();
			try {
				result = nds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//웹소설 detail 1개씩 보기
		if (url.equals("noveldetailread.somoa")) {
			NovelDetailRead nds = NovelDetailRead.instance();
			try {
				result = nds.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//ebook보기
		if (url.equals("ebookboard.somoa")) {
			EbookBoardShow ebs = EbookBoardShow.instance();
			try {
				result = ebs.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//검색
		if (url.equals("search.somoa")) {
			SearchShow ss = SearchShow.instance();
			try {
				result = ss.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//장바구니 추가
		if (url.equals("basket.somoa")) {
			BasketInsert b = BasketInsert.instance();
			try {
				b.showData(request, response);
			}catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		//결제 페이지 및 장바구니
		if (url.equals("pay.somoa")) {
			PayShow ss = PayShow.instance();
			try {
				result = ss.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		//결제
		if (url.equals("payment.somoa")) {
			PayGo pg = PayGo.instance();
			try {
				result = pg.showData(request, response);
				request.getRequestDispatcher(result).forward(request,response);
			} catch (Exception e) {												
				e.printStackTrace();
			}
		}
		
		
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
