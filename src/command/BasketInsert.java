package command;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import dao.CustomDAO;
import dao.PayDAO;
import dto.Basket;
import dto.Custom;


public class BasketInsert{

	static BasketInsert cs = new BasketInsert();
	public static BasketInsert instance() {
		return cs;
	}
	
	public void showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String cusid = request.getParameter("cusid");
		String code = request.getParameter("code");
		int num = Integer.parseInt(request.getParameter("num"));
		
		PayDAO pay = PayDAO.instance();
		Basket basket = new Basket();
		basket.setCustom_id(cusid);
		basket.setPiece_code(code);
		basket.setItem_num(num);
		pay.insertBasket(basket);
		
		JSONObject obj = new JSONObject();
		obj.put("cusid", cusid);
		obj.put("num", num);
		response.setContentType("application/x-json; charset=UTF-8");
		response.getWriter().print(obj);
	}

}
