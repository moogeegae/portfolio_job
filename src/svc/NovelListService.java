package svc;

import java.util.List;

import dao.NovelDAO;
import dao.QnaDAO;
import dto.Novel;
import dto.Qna;

public class NovelListService {
	static NovelListService nbs = new NovelListService();
	public static NovelListService instance() {
		return nbs;
	}
	//유료란
	public int getpayListCount() throws Exception{
		int listCount = 0;
		NovelDAO novelDAO = NovelDAO.instance();
		listCount = novelDAO.selectpayCount();
		return listCount;
	}
	public List<Novel> getpayrecentList(int page, int limit) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectpayNovel(page,limit);
		return articleList;
	}
	public List<Novel> getpaybestList() {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectpaybestNovel();
		return articleList;
	}
	public List<Novel> getpayrecentbestList(String due) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectpayrecentbestNovel(due);
		return articleList;
	}
	public List<Novel> getpaygenreList(String genre) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectpaygenreNovel(genre);
		return articleList;
	}
	public List<Novel> getpaygenreetcList() {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectpaygenreetcNovel();
		return articleList;
	}
	//무료란
	public int getfreeListCount() throws Exception{
		int listCount = 0;
		NovelDAO novelDAO = NovelDAO.instance();
		listCount = novelDAO.selectfreeCount();
		return listCount;
	}
	public List<Novel> getfreerecentList(int page, int limit) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectfreeNovel(page,limit);
		return articleList;
	}
	public List<Novel> getfreebestList() {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectfreebestNovel();
		return articleList;
	}
	public List<Novel> getfreerecentbestList(String due) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectfreerecentbestNovel(due);
		return articleList;
	}
	public List<Novel> getfreegenreList(String genre) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectfreegenreNovel(genre);
		return articleList;
	}
	public List<Novel> getfreegenreetcList() {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.selectfreegenreetcNovel();
		return articleList;
	}
	public void updateReadCount(int num,int set) {
		NovelDAO novelDAO = NovelDAO.instance();
		novelDAO.updateReadCount(num, set);
	}
	
	////
	public int newPay(String code) {
		int payment = 0;
		NovelDAO novelDAO = NovelDAO.instance();
		payment = novelDAO.newPay(code);
		return payment; 
	}
}
