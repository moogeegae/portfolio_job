package command;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.BookDAO;
import dao.CustomDAO;
import dao.PayDAO;
import dto.Basket;
import dto.Book;
import dto.Pay;
import svc.BookListService;
import svc.PayShowService;

public class PayGo implements CommandInter{

	static PayGo pg = new PayGo();
	public static PayGo instance() {
		return pg;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String code = request.getParameter("code");
		int inum = Integer.parseInt(request.getParameter("inum"));
		int total = Integer.parseInt(request.getParameter("total"));
		String cusid = request.getParameter("cusid");
		System.out.println(code+","+inum+","+total+","+cusid);
		int listcount = 0;
		
		//pay에 저장하는거
		PayDAO pd = PayDAO.instance();
		listcount = pd.countPay()+1;
		Pay pay = new Pay();
		pay.setPay_code("P"+listcount);
		pay.setCustom_id(cusid);
		pay.setPay_type(code);
		pay.setPay_price(total);
		
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String day = date.format(today);
		
		pay.setPay_day(day);
		pd.insertPay(pay);
		
		//마이페이지로 가는거
		CustomDAO cc = CustomDAO.instance();
		List<Pay> paylist = new ArrayList<Pay>();
		paylist = cc.selectmypay(cusid);
		request.setAttribute("paylist", paylist);
		
		//도서 DB 업데이트 하는거
		BookDAO bookDAO = BookDAO.instance();
		bookDAO.updatePaybook(code, inum);
		
		//장바구니 제거
		pd.deleteBasket(cusid, code);
		
		return "mypayboard.jsp";//mypage로
	}
	
}