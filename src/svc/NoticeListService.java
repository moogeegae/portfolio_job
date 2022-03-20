package svc;

import java.util.List;

import dao.FaqDAO;
import dto.Faq;


public class NoticeListService {
	static NoticeListService nls = new NoticeListService();
	public static NoticeListService instance() {
		return nls;
	}
	public int getListCount() throws Exception{
		int listCount = 0;
		FaqDAO faqDAO = FaqDAO.instance();
		listCount = faqDAO.selectFaqCount();
		return listCount;
	}
	
	public List<Faq> getArticleList(int page, int limit,int genre) {
		List<Faq> articleList = null;
		FaqDAO faqDAO = FaqDAO.instance();
		articleList = faqDAO.selectFaq(page,limit,genre);
		return articleList;
	}
}
