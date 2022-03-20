package dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Book;
import dto.Review;

public class BookDAO {
	private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	static BookDAO bd = new BookDAO();
	public static BookDAO instance() {
		return bd;
	}
	public int selectBookCount() {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectBookCount");
		sqls.close();
		return listCount;
	}
	
	public int selectBookGenreCount(String book_genre) {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectBookGenreCount",book_genre);
		sqls.close();
		return listCount;
	}
	
	public int selectBookNationCount(String book_genre) {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectBookNationCount",book_genre);
		sqls.close();
		return listCount;
	}
	
	public List<Book> selectBook(int page,int limit) {
		SqlSession sqls = factory.openSession();
		List<Book> u = sqls.selectList("SelectBook",10*(page-1));
		sqls.close();
		return u;
	}
	
	public List<Book> selectGenreBook(int page,int limit,String book_genre) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("book_genre", book_genre);
		map.put("start", 10*(page-1));
		List<Book> u = sqls.selectList("SelectGenreBook",map);
		sqls.close();
		return u;
	}
	
	public List<Book> selectCounBook(int page,int limit,String book_genre) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("book_nation", book_genre);
		map.put("start", 10*(page-1));
		List<Book> u = sqls.selectList("SelectCounBook",map);
		sqls.close();
		return u;
	}

	public Book selectOneBook(String code) {
		SqlSession sqls = factory.openSession();
		List<Book> u = sqls.selectList("SelectOneBook",code);
		Book book = new Book();
		book.setPiece_code(u.get(0).getPiece_code());
		book.setBook_name(u.get(0).getBook_name());
		book.setBook_num(u.get(0).getBook_num());
		book.setBook_price(u.get(0).getBook_price());
		book.setBook_genre(u.get(0).getBook_genre());
		book.setBook_pub(u.get(0).getBook_pub());
		book.setBook_author(u.get(0).getBook_author());
		book.setBook_trans(u.get(0).getBook_trans());
		book.setBook_page(u.get(0).getBook_page());
		book.setBook_length(u.get(0).getBook_length());
		book.setBook_nation(u.get(0).getBook_nation());
		book.setBook_birth(u.get(0).getBook_birth());
		book.setBook_cover(u.get(0).getBook_cover());
		book.setBook_summary(u.get(0).getBook_summary());
		sqls.close();
		return book;
	}
	
	//최근 3개월간 판매량 순(index - 베스트셀러)
	public List<Book> selectIndexBest(){
		List<Book> list = null;
		Date today = new Date();
	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	    String toDay = date.format(today);
	    Calendar mon = Calendar.getInstance();
	    mon.add(Calendar.MONTH , -3);
	    String due = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		SqlSession sqls = factory.openSession();
		list = sqls.selectList("SelectIndexBest", due);
		sqls.close();
		return list;
	}
	
	//최근 3개월간 판매량 순(index - 베스트셀러)
	public List<Book> selectIndexNewBest(){
		List<Book> list = null;
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String toDay = date.format(today);
		Calendar mon = Calendar.getInstance();
		mon.add(Calendar.MONTH , -1);
		String due = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		SqlSession sqls = factory.openSession();
		list = sqls.selectList("SelectIndexBestNew", due);
		sqls.close();
		return list;
	}
	
	//review
	public void reviewInsert(Review re) {
		SqlSession sqls = factory.openSession();
		sqls.insert("InsertRe",re);
		sqls.commit();
		sqls.close();
	}
	public List<Review> selectReview(String code) {
		SqlSession sqls = factory.openSession();
		List<Review> u = sqls.selectList("SelectReview",code);
		sqls.close();
		return u;
	}
	//review 갯수
	public int selectBoardReview(String code) {
		int sreview = 0;
		SqlSession sqls = factory.openSession();
		sreview = sqls.selectOne("SearchReviewnum",code);
		sqls.close();
		return sreview;
	}
	//review star평점
	public int selectBoardStar(String code) {
		int sstar = 0;
		SqlSession sqls = factory.openSession();
		sstar = sqls.selectOne("SearchStaravg", code);
		sqls.close();
		return sstar;
	}
	
	
	//search
	public List<Book> searchBook(String searching) {
		SqlSession sqls = factory.openSession();
		List<Book> u = sqls.selectList("SearchBook",searching);
		sqls.close();
		return u;
	}
	public List<Book> searchEbook(String searching) {
		SqlSession sqls = factory.openSession();
		List<Book> u = sqls.selectList("SearchBook",searching);
		sqls.close();
		return u;
	}
	
	//pay 결과 book 업데이트
	public int forupdatePaynum(String code) {
		SqlSession sqls = factory.openSession();
		int num = sqls.selectOne("forupdatePaynum",code);
		sqls.close();
		return num;
	}
	
	public int forupdatePaysale(String code) {
		SqlSession sqls = factory.openSession();
		int num = sqls.selectOne("forupdatePaysale",code);
		sqls.close();
		return num;
	}
	
	public void updatePaybook(String code, int inum) {
		SqlSession sqls = factory.openSession();
		int num = forupdatePaynum(code);
		int sale = forupdatePaysale(code);
		int book_num = num - inum;
		int book_sale = sale + inum;
		if(book_num<0) {
			book_num=0;
		}
		HashMap map = new HashMap();
		map.put("book_num", book_num);
		map.put("book_sale", book_sale);
		map.put("code", code);
		
		sqls.update("updatePaybook",map);
		sqls.commit();
		sqls.close();
		
		
	}
	
}























