package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import svc.QnaDetailService;


public class QnaDetailShow implements CommandInter{
	static QnaDetailShow qds = new QnaDetailShow();
	public static QnaDetailShow instance() {
		return qds;
	}
	
	//Qna 문의 상세내역 게시판
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int qna_num=Integer.parseInt(request.getParameter("qna_num"));
		System.out.println(qna_num);
		String page = request.getParameter("page");
		System.out.println(page);
		QnaDetailService qnaDetailService = QnaDetailService.instance();
		Qna article = qnaDetailService.getArticle(qna_num);
		System.out.println(article.getQna_title());
		request.setAttribute("page", page);
	   	request.setAttribute("article", article);
		return "ViewQnA.jsp";
	}

}
