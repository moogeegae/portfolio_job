package svc;

import dao.RecomDAO;
import dto.Recommend;

public class RecomDetailService {
	static RecomDetailService rds = new RecomDetailService();
	public static RecomDetailService instance() {
		return rds;
	}
	
	public Recommend getArticle(int reno){
		Recommend article = null;
		RecomDAO recomDAO = RecomDAO.instance();
		article = recomDAO.selectRecomDetail(reno);
		return article;
	}
	public void updateRecom(int reno) {
		RecomDAO novelDAO = RecomDAO.instance();
		novelDAO.updateRecom(reno);
	}
}
