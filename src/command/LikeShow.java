package command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.RecomDAO;
import dto.Recommend;

public class LikeShow{
	static LikeShow ls = new LikeShow();
	public static LikeShow instance() {
		return ls;
	}
	public void showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		int upreno = Integer.parseInt(request.getParameter("upreno"));
		String cusid = request.getParameter("cusid");
		RecomDAO dao = RecomDAO.instance();
		dao.updateLike(upreno,cusid);
		Recommend recom = dao.selectRecomDetail(upreno);
		int upup = recom.getUp();
		
		JSONObject obj = new JSONObject();
		obj.put("upup", upup);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
	}
	
}
