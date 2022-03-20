package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import svc.QnaDetailService;

public class QnaReplyGo implements CommandInter{
	static QnaReplyGo qrg = new QnaReplyGo();
	public static QnaReplyGo instance() {
		return qrg;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int qna_num=Integer.parseInt(request.getParameter("qna_num"));
		String nowPage = request.getParameter("page");
		QnaDetailService qnaDetailService= new QnaDetailService();	
	   	Qna qna =qnaDetailService.getArticle(qna_num);
	   	request.setAttribute("qna", qna);
	   	request.setAttribute("page", nowPage);
   		return "ReplyQna.jsp";
	}
	
}
