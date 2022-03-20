package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Faq;
import dto.PageInfo;
import svc.NoticeListService;

public class NoticeListShow implements CommandInter{
	static NoticeListShow nls = new NoticeListShow();
	public static NoticeListShow instance() {
		return nls;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Faq> articleList=new ArrayList<Faq>();
	  	int page=1;
		int limit=10;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		int genre=Integer.parseInt(request.getParameter("genre"));
		NoticeListService noticeListService = NoticeListService.instance();
		int listCount=noticeListService.getListCount();
		articleList = noticeListService.getArticleList(page,limit,genre);
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
		String link = null;
		if(genre<=8) {
			link="centerboard.jsp";
		}else {
			link="centernotice.jsp";
		}
		
		return link;
	}
}
