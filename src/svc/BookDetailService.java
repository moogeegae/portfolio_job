package svc;

import java.util.List;

import dao.BookDAO;
import dto.Book;
import dto.Review;

public class BookDetailService {
	static BookDetailService bds = new BookDetailService();
	public static BookDetailService instance() {
		return bds;
	}
	
	public Book getArticle(String code){
		Book article = null;
		BookDAO bookDAO = BookDAO.instance();
		article = bookDAO.selectOneBook(code);
		return article;
	}
	
	public List<Review> getList(String code) {
		BookDAO dao = BookDAO.instance();
		List<Review> article = dao.selectReview(code);
		return article;
	}
}
