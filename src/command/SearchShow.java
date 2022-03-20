package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomDAO;
import dto.Book;
import dto.Novel;
import svc.SearchListService;

public class SearchShow implements CommandInter{
	static SearchShow ss = new SearchShow();
	public static SearchShow instance() {
		return ss;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String searching = request.getParameter("searching");
		
		//검색어 저장은 customDAO에 있음
		
		CustomDAO dao = CustomDAO.instance();
		dao.insertSearching(searching);
		
		List<Book> bookList=new ArrayList<Book>();
		List<Book> ebookList=new ArrayList<Book>();
		List<Novel> novelList=new ArrayList<Novel>();
		
		SearchListService sls = SearchListService.instance();
		
		bookList = sls.getBookList(searching);
		ebookList = sls.getEbookList(searching);
		novelList = sls.getNovelList(searching);
		
		int total = 0;		
		
		if(bookList.size()!=0) {
			request.setAttribute("bookList", bookList);
			total = total + bookList.size();
		}else if(ebookList.size()!=0) {
			request.setAttribute("ebookList", ebookList);
			total = total + ebookList.size();
		}else if(novelList.size()!=0) {
			request.setAttribute("novelList", novelList);
			total = total + novelList.size();
		}
		
		request.setAttribute("total", total);
		
		return "searchboard.jsp";
	}
}
