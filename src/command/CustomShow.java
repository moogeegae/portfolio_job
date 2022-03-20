package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.CustomDAO;
import dto.Custom;


public class CustomShow implements CommandInter{

	static CustomShow cs = new CustomShow();
	public static CustomShow instance() {
		return cs;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		CustomDAO cc = CustomDAO.instance();
		List<Custom> list_cc = cc.selectMypage();
		request.setAttribute("list", list_cc);
		return "mypage.jsp";
	}

}
