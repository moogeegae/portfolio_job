package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.CustomDAO;
import dto.Custom;

public class Idcheck {
	static Idcheck ic = new Idcheck();
	public static Idcheck instance() {
		return ic;
	}
	
	public void showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String id = request.getParameter("join_id");
		System.out.println(id);
		String checkresult = "사용 가능한 아이디입니다.";
		CustomDAO dao = CustomDAO.instance();
		List<Custom> list = dao.selectMypage();
		int i = 0;
		while(i<list.size()){
			if(id.equals(list.get(i).getCustom_id())) {
				checkresult="아이디가 존재합니다.";
			}
			i = i + 1;
		}
		
		JSONObject obj = new JSONObject();
		obj.put("checkresult", checkresult);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
	}
}
