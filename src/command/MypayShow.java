package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomDAO;
import dto.Pay;

public class MypayShow implements CommandInter{
	static MypayShow bbs = new MypayShow();
	public static MypayShow instance() {
		return bbs;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String cusid = request.getParameter("cusid");
		CustomDAO cc = CustomDAO.instance();
		List<Pay> paylist = new ArrayList<Pay>();
		paylist = cc.selectmypay(cusid);
		request.setAttribute("paylist", paylist);
		return "mypayboard.jsp";
	}
}
