package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Recommend;
import svc.RecomDetailService;


public class RecomDetailShow implements CommandInter{
	static RecomDetailShow rds = new RecomDetailShow();
	public static RecomDetailShow instance() {
		return rds;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int reno=Integer.parseInt(request.getParameter("reno"));
		RecomDetailService recomDetailService = RecomDetailService.instance();
		Recommend article = recomDetailService.getArticle(reno);
		
		recomDetailService.updateRecom(reno);
	   	request.setAttribute("article", article);
		return "RecomDetail.jsp";
		
	}
	
	
}
