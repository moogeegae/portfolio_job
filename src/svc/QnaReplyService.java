package svc;

import dao.QnaDAO;
import dto.Qna;

public class QnaReplyService {
	static QnaReplyService qrs = new QnaReplyService();
	public static QnaReplyService instance() {
		return qrs;
	}
	
	public void replyArticle(Qna qna) {
		QnaDAO qnaDAO = QnaDAO.instance();
		qnaDAO.insertReply(qna);
	}
	public void updateReply(Qna qna) {
		QnaDAO qnaDAO = QnaDAO.instance();
		qnaDAO.updateRep(qna);
	}
}
