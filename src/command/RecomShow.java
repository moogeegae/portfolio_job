package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RecomDAO;
import dto.Recommend;


public class RecomShow implements CommandInter{

	static RecomShow rs = new RecomShow();
	public static RecomShow instance() {
		return rs;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecomDAO cr = RecomDAO.instance();
		List<Recommend> list_cr = cr.selectRecom();
		request.setAttribute("list", list_cr);
		return "recommend.jsp";
	}

}
