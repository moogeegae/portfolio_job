package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Basket;
import dto.Pay;


public class PayDAO {
	private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static PayDAO cc = new PayDAO();
	public static PayDAO instance() {
		return cc;
	}
	public List<Basket> selectBasket(String cusid) {
		SqlSession sqls = factory.openSession();
		List<Basket> u = sqls.selectList("SelectBasket",cusid);
		sqls.close();
		return u;
	}
	
	public void insertBasket(Basket basket) {
		SqlSession sqls = factory.openSession();
		sqls.insert("insertBasket",basket);
		sqls.commit();
		sqls.close();
	}

	public int selectBasketNum(String cusid, String code) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("cusid", cusid);
		map.put("code", code);
		int u = sqls.selectOne("SelectBasketNum",map);
		sqls.close();
		return u;
	}
	
	public void insertPay(Pay pay) {
		SqlSession sqls = factory.openSession();
		sqls.insert("insertPay",pay);
		sqls.commit();
		sqls.close();
	}
	
	public int countPay() {
		SqlSession sqls = factory.openSession();
		int count = sqls.selectOne("countpay");
		return count;
	}
	
	public void deleteBasket(String cusid,String code) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("cusid", cusid);
		map.put("code", code);
		sqls.delete("deleteBasket",map);
		sqls.commit();
		sqls.close();
	}
	
}
