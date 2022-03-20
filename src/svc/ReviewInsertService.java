package svc;

import dao.BookDAO;
import dto.Review;

public class ReviewInsertService {
	static ReviewInsertService ris = new ReviewInsertService();
	public static ReviewInsertService instance() {
		return ris;
	}
	
	public void reviewin(Review re) {
		BookDAO dao = BookDAO.instance();
		dao.reviewInsert(re);
	}
}
