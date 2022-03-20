package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Novel;
import dto.PageInfo;
import svc.NovelDetailService;
import svc.NovelListService;

public class NovelDetailRead implements CommandInter{
	
	static NovelDetailRead bns = new NovelDetailRead();
	public static NovelDetailRead instance() {
		return bns;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Novel> payrecent = new ArrayList<Novel>();
		List<Novel> article = new ArrayList<Novel>();
		String code=request.getParameter("code");
		int num = Integer.parseInt(request.getParameter("num"));
		int set = Integer.parseInt(request.getParameter("set"));
		int page = 1;
		int limit=35;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		String pay = request.getParameter("pay");
		NovelDetailService novelDetailService = NovelDetailService.instance();
		article = novelDetailService.getArticle(code);
		NovelListService novelListService = NovelListService.instance();
		int listCount=0;
		if(pay.equals("yes")) {
			listCount=novelListService.getpayListCount();
			payrecent = novelListService.getpayrecentList(page,limit);	//
		}else {
			listCount=novelListService.getfreeListCount();
			payrecent = novelListService.getfreerecentList(page,limit);
		}
		novelListService.updateReadCount(num, set);
		int maxPage=(int)((double)listCount/limit+(double)(1/35)); 
   		int startPage = (((int) ((double)page / 5 + 0.8)) - 1) * 5 + 1;
   	    int endPage = startPage+5-1;
   	    if (endPage> maxPage) endPage= maxPage;
   	    
		PageInfo pageInfo = new PageInfo();							
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		request.setAttribute("num", num);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("payrecent", payrecent);
	   	request.setAttribute("article", article);
		return "noveldetailread.jsp";
		
	}
}
