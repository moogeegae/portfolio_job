package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.PageInfo;
import dto.Book;
import svc.BookListService;

public class BookBoardShow implements CommandInter{

	static BookBoardShow bbs = new BookBoardShow();
	public static BookBoardShow instance() {
		return bbs;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Book> articleList=new ArrayList<Book>();
	  	int page=1;
		int limit=10;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		String book_genre = request.getParameter("genre");
		BookListService bookListService = BookListService.instance();
		int listCount=0;
		int maxPage=0;
		int startPage=0; 
		int endPage=0; 
		String printoutBookGenre = null;
		int total=0;
		//국내도서
		if(book_genre.equals("korean")) {
			listCount=bookListService.getListCount();
			articleList = bookListService.getArticleCounList(page,limit,"국내도서");
			printoutBookGenre="국내도서";
			total=bookListService.getListNationCount("국내도서");
		}else if(book_genre.equals("A")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"소설");
			printoutBookGenre="국내도서 >> 소설";
			total=bookListService.getListGenreCount("소설");
		}else if(book_genre.equals("B")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"시, 에세이");
			printoutBookGenre="국내도서 >> 시, 에세이";
			total=bookListService.getListGenreCount("시, 에세이");
		}else if(book_genre.equals("C")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"자기계발");
			printoutBookGenre="국내도서 >> 자기계발";
			total=bookListService.getListGenreCount("자기계발");
		}else if(book_genre.equals("D")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"어린이");
			printoutBookGenre="국내도서 >> 어린이";
			total=bookListService.getListGenreCount("어린이");
		}else if(book_genre.equals("E")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"과학");
			printoutBookGenre="국내도서 >> 과학";
			total=bookListService.getListGenreCount("과학");
		}else if(book_genre.equals("F")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"수험서");
			printoutBookGenre="국내도서 >> 수험서";
			total=bookListService.getListGenreCount("수험서");
		}else if(book_genre.equals("G")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"전공교재");
			printoutBookGenre="국내도서 >> 전공교재";
			total=bookListService.getListGenreCount("전공교재");
		}else if(book_genre.equals("H")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"잡지");
			printoutBookGenre="국내도서 >> 잡지";
			total=bookListService.getListGenreCount("잡지");
		}else if(book_genre.equals("I")) {
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"사전");
			printoutBookGenre="국내도서 >> 사전";
			total=bookListService.getListGenreCount("사전");
		}else if(book_genre.equals("foreign")) {	//여기부터 해외도서
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleCounList(page,limit,"해외도서");
			printoutBookGenre="해외도서";
			total=bookListService.getListNationCount("해외도서");
		}else if(book_genre.equals("a")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"문학");
			printoutBookGenre="해외도서 >> 문학";
			total=bookListService.getListGenreCount("문학");
		}else if(book_genre.equals("b")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"언어");
			printoutBookGenre="해외도서 >> 언어";
			total=bookListService.getListGenreCount("언어");
		}else if(book_genre.equals("c")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"사전");
			printoutBookGenre="해외도서 >> 사전";
			total=bookListService.getListGenreCount("사전");
		}else if(book_genre.equals("d")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"대학서적원서");
			printoutBookGenre="해외도서 >> 대학서적원서";
			total=bookListService.getListGenreCount("대학서적원서");
		}else if(book_genre.equals("e")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"해외어린이");
			printoutBookGenre="해외도서 >> 해외어린이";
			total=bookListService.getListGenreCount("해외어린이");
		}else if(book_genre.equals("f")) {	
			listCount=bookListService.getListGenreCount(book_genre);
			articleList = bookListService.getArticleGenreList(page,limit,"학습교구/게임");
			printoutBookGenre="해외도서 >> 학습교구/게임";
			total=bookListService.getListGenreCount("학습교구/게임");
		}
		maxPage=(int)((double)listCount/limit+0.95); 
		startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
		endPage = startPage+10-1;
   		if (endPage> maxPage) endPage= maxPage;
   		PageInfo pageInfo = new PageInfo();
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("articleList", articleList);
		request.setAttribute("printoutBookGenre", printoutBookGenre);
		request.setAttribute("bookgenre", book_genre);
		request.setAttribute("total", total);
		return "bookboard.jsp";
	}
	
}