package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import svc.QnaReplyService;

public class QnaReplyInsert implements CommandInter {
	static QnaReplyInsert qrs = new QnaReplyInsert();
	public static QnaReplyInsert instance() {
		return qrs;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String nowPage = request.getParameter("page");
	    
	 	Qna qna = new Qna();  		
	 	qna.setQna_num(Integer.parseInt(request.getParameter("qna_num")));
	 	qna.setQna_id(request.getParameter("qna_id"));
	 	qna.setQna_pass(request.getParameter("qna_pass"));
	 	qna.setQna_title(request.getParameter("qna_title"));
	 	qna.setQna_content(request.getParameter("qna_content"));
	 	qna.setQna_complete(request.getParameter("qna_complete"));
	 	qna.setQna_re_ref(Integer.parseInt(request.getParameter("qna_re_ref")));
	 	qna.setQna_re_lev(Integer.parseInt(request.getParameter("qna_re_lev")));
	 	qna.setQna_re_seq(Integer.parseInt(request.getParameter("qna_re_seq")));	   		
	 	QnaReplyService qnaReplyService = new QnaReplyService();
	 	qnaReplyService.replyArticle(qna);
	 	qnaReplyService.updateReply(qna);
	 	
		return "login11qna.somoa?page=" + nowPage;
	}
	
}
