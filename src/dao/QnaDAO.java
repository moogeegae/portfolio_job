package dao;


import java.sql.Date;
import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import confi.ConfigureMap;
import dto.Qna;

public class QnaDAO {
private SqlSessionFactory factory = ConfigureMap.getSqlsession();
	
	static QnaDAO qd = new QnaDAO();
	public static QnaDAO instance() {
		return qd;
	}
	
	public int selectQnaCount() {
		int listCount= 0;
		SqlSession sqls = factory.openSession();
		listCount = sqls.selectOne("SelectQnaCount");
		sqls.close();
		return listCount;
	}
	
	public List<Qna> selectQna(int page,int limit,String name) {
		SqlSession sqls = factory.openSession();
		HashMap map = new HashMap();
		map.put("qna_id", name);
		map.put("start", 10*(page-1));
		List<Qna> u = sqls.selectList("SelectMyQna",map);
		sqls.close();
		return u;
	}
	
	public Qna selectOneQna(int qna_num) {
		SqlSession sqls = factory.openSession();
		List<Qna> u = sqls.selectList("SelectQna");
		Qna qna = null;
		for(int i=0;i<u.size();i++) {
			if(qna_num==u.get(i).getQna_num()) {
				qna = new Qna();
				qna.setQna_num(u.get(i).getQna_num());
				qna.setQna_id(u.get(i).getQna_id());
				qna.setQna_pass(u.get(i).getQna_pass());
				qna.setQna_title(u.get(i).getQna_title());
				qna.setQna_content(u.get(i).getQna_content());
				qna.setQna_file(u.get(i).getQna_file());
				qna.setQna_re_ref(u.get(i).getQna_re_ref());
				qna.setQna_re_lev(u.get(i).getQna_re_lev());
				qna.setQna_re_seq(u.get(i).getQna_re_seq());
				qna.setQna_complete(u.get(i).getQna_complete());
				qna.setQna_date(u.get(i).getQna_date());
			}
		}
		sqls.close();
		return qna;
	}
	
	public void insertQna(Qna qna) {
		int count = selectQnaCount();
		int num = 0;
		if(count==0) {
			num = 1;
		}else {
			num = count + 1;
		}
		SqlSession sqls = factory.openSession();
		qna.setQna_num(num);
		qna.setQna_re_ref(num);
		qna.setQna_re_lev(0);
		qna.setQna_re_seq(0);
		qna.setQna_complete("답변 중");
		sqls.insert("InsertQna",qna);
		sqls.commit();
		sqls.close();
	}
	
	public void insertReply(Qna qna){

		int count = selectQnaCount();
		int re_ref=qna.getQna_re_ref();
		int re_lev=qna.getQna_re_lev();
		int re_seq=qna.getQna_re_seq();
		Qna temp = new Qna();
		temp.setQna_re_ref(re_ref);
		temp.setQna_re_seq(re_seq);
		SqlSession sqls = factory.openSession();
		sqls.update("UpdateQnaReply",temp);
		re_seq = re_seq + 1;
		re_lev = re_lev + 1;
		qna.setQna_num(count+1);
		qna.setQna_re_lev(re_lev);
		qna.setQna_re_seq(re_seq);
		sqls.insert("InsertQna",qna);
		sqls.commit();
		sqls.close();
	}
	
	public void updateRep(Qna qna) {
		SqlSession sqls = factory.openSession();
		sqls.update("updateReply",qna);
		sqls.commit();
		sqls.close();
	}
	
	
	
}
