package dto;

import java.sql.Date;

public class Review {
	int review_number;
	String custom_ID;
	String piece_code;
	Date review_time;
	String review_content;
	int review_star;
	public int getReview_number() {
		return review_number;
	}
	public void setReview_number(int review_number) {
		this.review_number = review_number;
	}
	public String getCustom_ID() {
		return custom_ID;
	}
	public void setCustom_ID(String custom_ID) {
		this.custom_ID = custom_ID;
	}
	public String getPiece_code() {
		return piece_code;
	}
	public void setPiece_code(String piece_code) {
		this.piece_code = piece_code;
	}
	public Date getReview_time() {
		return review_time;
	}
	public void setReview_time(Date review_time) {
		this.review_time = review_time;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public int getReview_star() {
		return review_star;
	}
	public void setReview_star(int review_star) {
		this.review_star = review_star;
	}
	
	
}
