package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Qna;
import svc.QnaListService;
import dto.PageInfo;


public class QnaShow implements CommandInter{
	static QnaShow qs = new QnaShow();
	public static QnaShow instance() {
		return qs;
	}
	
	//문의글 불러오기
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<Qna> articleList=new ArrayList<Qna>();
	  	int page=1;
		int limit=10;
		String name = request.getParameter("result");
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		QnaListService qnaListService = QnaListService.instance();
		int listCount=qnaListService.getListCount();
		articleList = qnaListService.getArticleList(page,limit,name);
   		int maxPage=(int)((double)listCount/limit+0.95); 
   		int startPage = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int endPage = startPage+10-1;

   		if (endPage> maxPage) endPage= maxPage;
   		PageInfo pageInfo = new PageInfo();
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("articleList", articleList);
		
		return "BoardQnA.jsp";
	}

}
