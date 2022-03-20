package svc;



import java.util.List;

import dao.BookDAO;
import dao.NovelDAO;
import dto.Book;
import dto.Novel;

public class SearchListService {
	static SearchListService bls = new SearchListService();
	public static SearchListService instance() {
		return bls;
	}
	
	public List<Book> getBookList(String searching) {
		List<Book> articleList = null;
		BookDAO bookDAO = BookDAO.instance();
		articleList = bookDAO.searchBook(searching);
		return articleList;
	}
	
	public List<Book> getEbookList(String searching) {
		List<Book> articleList = null;
		BookDAO bookDAO = BookDAO.instance();
		articleList = bookDAO.searchEbook(searching);
		return articleList;
	}
	
	public List<Novel> getNovelList(String searching) {
		List<Novel> articleList = null;
		NovelDAO novelDAO = NovelDAO.instance();
		articleList = novelDAO.searchNovel(searching);
		return articleList;
	}
}
