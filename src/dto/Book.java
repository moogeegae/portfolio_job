package dto;

import java.util.Date;

public class Book {
	String piece_code;	//작품코드
	String book_name;	//제목
	int book_num;		//총 수량
	int book_sale;		//판매량
	int book_price;		//정가
	String book_genre;	//장르
	String book_pub;	//출판사
	String book_author;	//작가
	String book_trans;	//역자
	int book_page;		//길이
	String book_length;	//장편 단편
	String book_nation;	//국내도서 해외도서
	String book_birth;	//출시날짜
	Date book_check_birth; //확인용
	String book_cover;	//표지
	String book_summary;//요약
	public String getPiece_code() {
		return piece_code;
	}
	public void setPiece_code(String piece_code) {
		this.piece_code = piece_code;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public int getBook_num() {
		return book_num;
	}
	public void setBook_num(int book_num) {
		this.book_num = book_num;
	}
	public int getBook_price() {
		return book_price;
	}
	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}
	public String getBook_genre() {
		return book_genre;
	}
	public void setBook_genre(String book_genre) {
		this.book_genre = book_genre;
	}
	public String getBook_pub() {
		return book_pub;
	}
	public void setBook_pub(String book_pub) {
		this.book_pub = book_pub;
	}
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_trans() {
		return book_trans;
	}
	public void setBook_trans(String book_trans) {
		this.book_trans = book_trans;
	}
	public int getBook_page() {
		return book_page;
	}
	public void setBook_page(int book_page) {
		this.book_page = book_page;
	}
	public String getBook_length() {
		return book_length;
	}
	public void setBook_length(String book_length) {
		this.book_length = book_length;
	}
	public String getBook_nation() {
		return book_nation;
	}
	public void setBook_nation(String book_nation) {
		this.book_nation = book_nation;
	}
	public String getBook_birth() {
		return book_birth;
	}
	public void setBook_birth(String book_birth) {
		this.book_birth = book_birth;
	}
	public String getBook_cover() {
		return book_cover;
	}
	public void setBook_cover(String book_cover) {
		this.book_cover = book_cover;
	}
	public String getBook_summary() {
		return book_summary;
	}
	public void setBook_summary(String book_summary) {
		this.book_summary = book_summary;
	}
	public Date getBook_check_birth() {
		return book_check_birth;
	}
	public void setBook_check_birth(Date book_check_birth) {
		this.book_check_birth = book_check_birth;
	}
	public int getBook_sale() {
		return book_sale;
	}
	public void setBook_sale(int book_sale) {
		this.book_sale = book_sale;
	}
	
}
