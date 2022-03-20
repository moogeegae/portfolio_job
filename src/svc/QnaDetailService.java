package svc;


import dao.QnaDAO;
import dto.Qna;

public class QnaDetailService {
	static QnaDetailService qds = new QnaDetailService();
	public static QnaDetailService instance() {
		return qds;
	}
	
	public Qna getArticle(int qna_num){
		Qna article = null;
		QnaDAO qnaDAO = QnaDAO.instance();
		article = qnaDAO.selectOneQna(qna_num);
		return article;
		
	}
}
