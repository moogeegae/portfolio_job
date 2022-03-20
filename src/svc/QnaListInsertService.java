package svc;

import dao.QnaDAO;
import dto.Qna;

public class QnaListInsertService {
	
	static QnaListInsertService qlis = new QnaListInsertService();
	public static QnaListInsertService instance() {
		return qlis;
	}
	
	public void registArticle(Qna qna){
		QnaDAO qnaDAO = QnaDAO.instance();
		qnaDAO.insertQna(qna);
	}
}
