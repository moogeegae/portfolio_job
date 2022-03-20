package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Novel;

public class NovelDAO {
private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static NovelDAO bd = new NovelDAO();
	public static NovelDAO instance() {
		return bd;
	}
	
	
	public int selectpayCount() {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectPayCount");
		sqls.close();
		return listCount;
	}
	public List<Novel> selectpayNovel(int page,int limit) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectpayNovel",35*(page-1));
		sqls.close();
		return u;
	}
	public List<Novel> selectpaybestNovel() {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectpaybestNovel");
		sqls.close();
		return u;
	}
	public List<Novel> selectpayrecentbestNovel(String due) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectpayrecentbestNovel",due);
		sqls.close();
		return u;
	}
	public List<Novel> selectpaygenreNovel(String genre) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectpaygenreNovel",genre);
		sqls.close();
		return u;
	}
	public List<Novel> selectpaygenreetcNovel() {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectpaygenreetcNovel");
		sqls.close();
		return u;
	}
	//무료
	public int selectfreeCount() {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectFreeCount");
		sqls.close();
		return listCount;
	}
	public List<Novel> selectfreeNovel(int page,int limit) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectfreeNovel",35*(page-1));
		sqls.close();
		return u;
	}
	public List<Novel> selectfreebestNovel() {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectfreebestNovel");
		sqls.close();
		return u;
	}
	public List<Novel> selectfreerecentbestNovel(String due) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectfreerecentbestNovel",due);
		sqls.close();
		return u;
	}
	public List<Novel> selectfreegenreNovel(String genre) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectfreegenreNovel",genre);
		sqls.close();
		return u;
	}
	public List<Novel> selectfreegenreetcNovel() {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectfreegenreetcNovel");
		sqls.close();
		return u;
	}
	
	public List<Novel> selectOneNovel(String code) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SelectOneNovel",code);
		sqls.close();
		return u;
	}
	
	public int SelectOpenNumNovel(int num,int set) {
		int listCount= 0;
		HashMap map = new HashMap();
		map.put("novel_num", num);
		map.put("novel_set", set);
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectOpenNumNovel",map);
		sqls.close();
		return listCount;
	}
	
	public void updateReadCount(int num,int set) {
		SqlSession sqls = factory.openSession();
		int novel_open_num = SelectOpenNumNovel(num,set);
		HashMap map = new HashMap();
		map.put("novel_num", num);
		map.put("novel_set", set);
		map.put("novel_open_num", novel_open_num+1);
		sqls.update("updateNovelCount",map);
		sqls.commit();
		sqls.close();
	}
	
	public int newPay(String code) {
		SqlSession sqls = factory.openSession();
		int paymen = sqls.selectOne("SelectOneWhatPay",code);
		sqls.close();
		return paymen;
	}
	//search
	public List<Novel> searchNovel(String searching) {
		SqlSession sqls = factory.openSession();
		List<Novel> u = sqls.selectList("SearchNovel",searching);
		sqls.close();
		return u;
	}
}























