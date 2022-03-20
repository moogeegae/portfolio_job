package command;

import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.RecomDAO;
import dto.Recommend;
import svc.MyRecomInsertService;

public class MyRecomInsert implements CommandInter{
	static MyRecomInsert mri = new MyRecomInsert();
	public static MyRecomInsert instance() {
		return mri;
	}
	//내글쓰기-추천페이지
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		RecomDAO recomDAO = RecomDAO.instance();
		int codeno = recomDAO.selectReno();
		Recommend recommend = null;
		String realFolder="";
		String saveFolder="/Upload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		recommend = new Recommend();
		recommend.setCode("AA"+codeno);
		recommend.setGenre(multi.getParameter("genre"));
		recommend.setTitle(multi.getParameter("title"));
		recommend.setRecommender(multi.getParameter("recommend"));
		recommend.setContents(multi.getParameter("contents"));
		recommend.setCover(
		multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		recommend.setCount(0);
		recommend.setUp(0);
		MyRecomInsertService myRecomInsertService = MyRecomInsertService.instance();
		myRecomInsertService.registArticle(recommend);

		RecomDAO cr = RecomDAO.instance();
		List<Recommend> list_cr = cr.selectRecom();
		request.setAttribute("list", list_cr);
		return "recommend.jsp";
	}
}
