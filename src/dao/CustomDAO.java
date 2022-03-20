package dao;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Custom;
import dto.Pay;
import dto.Search;


public class CustomDAO {
	private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static CustomDAO cc = new CustomDAO();
	public static CustomDAO instance() {
		return cc;
	}
	public List<Custom> selectMypage() {
		SqlSession sqls = factory.openSession();
		List<Custom> u = sqls.selectList("SelectValues");
		sqls.close();
		return u;
	}
	
	public void insertSearching(String searching) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("search_num", null);
		map.put("searching", searching);
		sqls.insert("insertSearch",map);
		sqls.commit();
		sqls.close();
	}
	
	public List<Search> selectTrend(){
		SqlSession sqls = factory.openSession();
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
		String toDay = date.format(today);
		Calendar day = Calendar.getInstance();
		day.add(Calendar.DATE , -1);
		String due = new java.text.SimpleDateFormat("yyyy-MM-dd").format(day.getTime());
		List<Search> u = sqls.selectList("trend",due);
		sqls.close();
		return u;
	}
	
	public List<Pay> selectmypay(String cusid){
		SqlSession sqls = factory.openSession();
		List<Pay> u = sqls.selectList("selectmypay",cusid);
		sqls.close();
		return u;
	}
}
