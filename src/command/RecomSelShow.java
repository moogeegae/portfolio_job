package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RecomDAO;
import dto.Recommend;

public class RecomSelShow implements CommandInter{
	static RecomSelShow rs = new RecomSelShow();
	public static RecomSelShow instance() {
		return rs;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecomDAO cr = RecomDAO.instance();
		String genre = request.getParameter("genre");
		request.setAttribute("GenreName", genre);
		List<Recommend> list_cr = cr.selectRecom();
		List<Recommend> list_one = cr.selectRecomOne(genre);
		request.setAttribute("list", list_cr);
		request.setAttribute("listgenre", list_one);
		return "recommend.jsp";
	}
}
