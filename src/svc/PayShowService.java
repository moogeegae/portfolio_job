package svc;

import java.util.List;

import dao.PayDAO;
import dto.Basket;

public class PayShowService {
	static PayShowService bds = new PayShowService();
	public static PayShowService instance() {
		return bds;
	}
	
	public List<Basket> getBasket(String cusid){
		List<Basket> list = null;
		PayDAO payDAO = PayDAO.instance();
		list = payDAO.selectBasket(cusid);
		return list;
	}
}
