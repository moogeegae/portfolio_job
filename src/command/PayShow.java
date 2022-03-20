package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Basket;
import dto.Book;
import svc.BookListService;
import svc.PayShowService;

public class PayShow implements CommandInter{

	static PayShow bbs = new PayShow();
	public static PayShow instance() {
		return bbs;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String cusid = request.getParameter("cusid");
		
		List<Basket> basket = new ArrayList<Basket>();
		PayShowService pss = PayShowService.instance();
		basket = pss.getBasket(cusid);
		request.setAttribute("basket", basket);
		return "payboard.jsp";
	}
	
}