package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Review;
import svc.ReviewInsertService;

public class ReviewInsert implements CommandInter{
	static ReviewInsert ri = new ReviewInsert();
	public static ReviewInsert instance() {
		return ri;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		//입력할거 1번은 null 자동 숫자 입력
		String id = request.getParameter("reviewid");
		String code = request.getParameter("code");
		//작성 시간은 now()로 대체
		String content = request.getParameter("reviewcontent");
		int star = Integer.parseInt(request.getParameter("starnum"));
		//입력 작업 시작 BookDAO에서 작업
		ReviewInsertService ris = ReviewInsertService.instance();
		Review re = new Review();
		re.setCustom_ID(id);
		re.setPiece_code(code);
		re.setReview_content(content);
		re.setReview_star(star);
		ris.reviewin(re);
		String page = request.getParameter("page");
		return "booknotice.somoa?code="+code+"&page="+page;
	}

}
