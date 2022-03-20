package svc;



import java.util.List;

import dao.BookDAO;
import dto.Book;

public class BookListService {
	static BookListService bls = new BookListService();
	public static BookListService instance() {
		return bls;
	}
	public int getListCount() throws Exception{
		int listCount = 0;
		BookDAO bookDAO = BookDAO.instance();
		listCount = bookDAO.selectBookCount();
		return listCount;
	}
	
	public int getListGenreCount(String book_genre) throws Exception{
		int listCount = 0;
		BookDAO bookDAO = BookDAO.instance();
		listCount = bookDAO.selectBookGenreCount(book_genre);
		return listCount;
	}
	
	public int getListNationCount(String book_genre) throws Exception{
		int listCount = 0;
		BookDAO bookDAO = BookDAO.instance();
		listCount = bookDAO.selectBookNationCount(book_genre);
		return listCount;
	}

	public List<Book> getArticleList(int page, int limit) {
		List<Book> articleList = null;
		BookDAO bookDAO = BookDAO.instance();
		articleList = bookDAO.selectBook(page,limit);
		return articleList;
	}
	
	public List<Book> getArticleGenreList(int page, int limit, String book_genre) {
		List<Book> articleList = null;
		BookDAO bookDAO = BookDAO.instance();
		articleList = bookDAO.selectGenreBook(page,limit,book_genre);
		return articleList;
	}
	
	public List<Book> getArticleCounList(int page, int limit, String book_genre) {
		List<Book> articleList = null;
		BookDAO bookDAO = BookDAO.instance();
		articleList = bookDAO.selectCounBook(page,limit,book_genre);
		return articleList;
	}
}
