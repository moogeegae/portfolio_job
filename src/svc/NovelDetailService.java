package svc;

import java.util.List;

import dao.NovelDAO;
import dto.Novel;


public class NovelDetailService {
	static NovelDetailService bds = new NovelDetailService();
	public static NovelDetailService instance() {
		return bds;
	}
	
	public List<Novel> getArticle(String code){
		List<Novel> article = null;
		NovelDAO novelDAO = NovelDAO.instance();
		article = novelDAO.selectOneNovel(code);
		return article;
	}
	/*
	public List<Review> getList(String code) {
		BookDAO dao = BookDAO.instance();
		List<Review> article = dao.selectReview(code);
		return article;
	}
	*/
}
