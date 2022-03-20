package svc;

import dao.RecomDAO;
import dto.Recommend;

public class MyRecomInsertService {
	static MyRecomInsertService mris = new MyRecomInsertService();
	public static MyRecomInsertService instance() {
		return mris;
	}
	
	public void registArticle(Recommend recommend){
		RecomDAO recomDAO = RecomDAO.instance();
		recomDAO.insertRecom(recommend);
	}
}
