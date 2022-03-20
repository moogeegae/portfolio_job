package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Book;
import dto.Review;
import svc.BookDetailService;

public class BookNoticeShow implements CommandInter{
	
	static BookNoticeShow bns = new BookNoticeShow();
	public static BookNoticeShow instance() {
		return bns;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String code=request.getParameter("code");
		String page = request.getParameter("page");
		String ebook = request.getParameter("ebook");
		String link = null;
		BookDetailService bookDetailService = BookDetailService.instance();
		if(ebook==null) {
			link="booknotice.jsp";
		}else {
			link="ebooknotice.jsp";
		}
		Book article = bookDetailService.getArticle(code);
		//review 가져오기
		List<Review> review = new ArrayList<Review>();
		review = bookDetailService.getList(code);
		if(page==null) {
		}else {
			request.setAttribute("page", page);
		}
	   	request.setAttribute("article", article);
	   	request.setAttribute("review", review);
		return link;
		
	}
}
