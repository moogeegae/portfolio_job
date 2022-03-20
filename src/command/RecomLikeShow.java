package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.RecomDAO;
import dto.Recommend;

public class RecomLikeShow implements CommandInter{
	static RecomLikeShow rls = new RecomLikeShow();
	public static RecomLikeShow instance() {
		return rls;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecomDAO cr = RecomDAO.instance();
		List<Recommend> list_cr = cr.selectLikeRecom();//추천순으로 바꿔줘야해
		request.setAttribute("list", list_cr);
		return "recommend.jsp";
	}
}
