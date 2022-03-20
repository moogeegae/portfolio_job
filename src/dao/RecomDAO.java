package dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Recommend;

public class RecomDAO {
	private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static RecomDAO cr = new RecomDAO();
	public static RecomDAO instance() {
		return cr;
	}
	public List<Recommend> selectRecom() {
		SqlSession sqls = factory.openSession();
		List<Recommend> u = sqls.selectList("SelectRecom");
		sqls.close();
		return u;
	}
	
	public List<Recommend> selectRecomOne(String genre) {
		SqlSession sqls = factory.openSession();
		List<Recommend> u = sqls.selectList("SelectRecomOne",genre);
		sqls.close();
		return u;
	}
	
	public List<Recommend> selectRecomMy(String recommender) {
		SqlSession sqls = factory.openSession();
		List<Recommend> u = sqls.selectList("SelectRecomMy",recommender);
		sqls.close();
		return u;
	}
	
	public Recommend selectRecomDetail(int reno) {
		SqlSession sqls = factory.openSession();
		List<Recommend> u = sqls.selectList("SelectRecomDetail",reno);
		Recommend recom = new Recommend();
		recom.setReno(u.get(0).getReno());
		recom.setCode(u.get(0).getCode());
		recom.setGenre(u.get(0).getGenre());
		recom.setCover(u.get(0).getCover());
		recom.setTitle(u.get(0).getTitle());
		recom.setRecommender(u.get(0).getRecommender());
		recom.setDate(u.get(0).getDate());
		recom.setCount(u.get(0).getCount());
		recom.setUp(u.get(0).getUp());
		recom.setContents(u.get(0).getContents());
		sqls.close();
		return recom;
	}
	
	public int selectReno() {
		SqlSession sqls = factory.openSession();
		int u = sqls.selectOne("SelectReno");
		sqls.close();
		return u;
	}
	
	
	
	public void insertRecom(Recommend recommend) {
		SqlSession sqls = factory.openSession();
		sqls.insert("InsertRecom",recommend);
		sqls.commit();
		sqls.close();
	}
	
	public int SelectOpenNumRecom(int reno) {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectOpenNumRecom",reno);
		sqls.close();
		return listCount;
	}
	
	public void updateRecom(int reno) {
		SqlSession sqls = factory.openSession();
		int count = SelectOpenNumRecom(reno);
		HashMap map = new HashMap();
		map.put("reno", reno);
		map.put("count", count+1);
		sqls.update("updateRecomCount",map);
		sqls.commit();
		sqls.close();
	}
	
	public void insertLike(int upreno,String cusid) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("upreno", upreno);
		map.put("cusid", cusid);
		sqls.insert("insertLike",map);
		sqls.commit();
		sqls.close();
	}
	
	public Integer selectLike(int upreno,String cusid) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("upreno", upreno);
		map.put("cusid", cusid);
		Integer like = sqls.selectOne("selectLike",map);
		return like;
	}
	
	public void upLike(int upreno,String cusid,String link) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("upreno", upreno);
		map.put("cusid", cusid);
		sqls.update(link,map);
		sqls.commit();
		sqls.close();
	}
	
	public void updateLike(int upreno,String cusid) {
		SqlSession sqls = factory.openSession();
		Integer like = selectLike(upreno, cusid);
		String link = null;
		if(like==null) {
			insertLike(upreno, cusid);
		}else if(like==0) {
			link = "upLike0";
			upLike(upreno, cusid,link);
		}else {
			link = "upLike1";
			upLike(upreno, cusid,link);
		}
		sqls.update("updateLike",upreno);
		sqls.commit();
		sqls.close();
	}
	
	public List<Recommend> selectLikeRecom() {
		SqlSession sqls = factory.openSession();
		List<Recommend> u = sqls.selectList("SelectLikeRecom");
		sqls.close();
		return u;
	}
	
	
}
