package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Faq;

public class FaqDAO {
private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static FaqDAO fd = new FaqDAO();
	public static FaqDAO instance() {
		return fd;
	}
	
	public int selectFaqCount() {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectFaqCount");
		sqls.close();
		return listCount;
	}
	
	public List<Faq> selectFaq(int page,int limit,int genre) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("start", 10*(page-1));
		map.put("genre", genre);
		List<Faq> u = sqls.selectList("SelectFaq",map);
		sqls.close();
		return u;
	}
}
