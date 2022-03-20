package svc;



import java.util.List;

import dao.QnaDAO;
import dto.Qna;

public class QnaListService {
	static QnaListService qls = new QnaListService();
	public static QnaListService instance() {
		return qls;
	}
	
	public int getListCount() throws Exception{
		int listCount = 0;
		QnaDAO qnaDAO = QnaDAO.instance();
		listCount = qnaDAO.selectQnaCount();
		return listCount;
		
	}

	public List<Qna> getArticleList(int page, int limit,String name) {
		
		List<Qna> articleList = null;
		QnaDAO qnaDAO = QnaDAO.instance();
		articleList = qnaDAO.selectQna(page,limit,name);
		return articleList;
		
	}
}
