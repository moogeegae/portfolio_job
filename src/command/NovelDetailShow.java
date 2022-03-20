package command;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Novel;
import dto.PageInfo;
import svc.NovelDetailService;
import svc.NovelListService;

public class NovelDetailShow implements CommandInter{
	
	static NovelDetailShow bns = new NovelDetailShow();
	public static NovelDetailShow instance() {
		return bns;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Novel> payrecent = new ArrayList<Novel>();
		List<Novel> article = new ArrayList<Novel>();
		String code=request.getParameter("code");
		int page = 1;
		int limit=35;
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		String pay = request.getParameter("pay");
		NovelDetailService novelDetailService = NovelDetailService.instance();
		article = novelDetailService.getArticle(code);			//
		NovelListService novelListService = NovelListService.instance();
		int listCount=0;
		int listCountDe=0;
		
		if(pay==null) {
			int price = novelListService.newPay(code);
			if(price==100) {
				pay = "yes";
			}else {
				pay = "no";
			}
		}
		
		if(pay.equals("yes")) {
			listCount=novelListService.getpayListCount();
			listCountDe=article.size();
			payrecent = novelListService.getpayrecentList(page,limit);	//
		}else {
			listCount=novelListService.getfreeListCount();
			listCountDe=article.size();
			payrecent = novelListService.getfreerecentList(page,limit);
		}
		
		int maxPage=(int)((double)listCount/limit+(double)(1/35)); 
   		int startPage = (((int) ((double)page / 5 + 0.8)) - 1) * 5 + 1;
   	    int endPage = startPage+5-1;
   	    if (endPage> maxPage) endPage= maxPage;
   	    
		PageInfo pageInfo = new PageInfo();								//
   		pageInfo.setEndPage(endPage);
   		pageInfo.setListCount(listCount);
		pageInfo.setMaxPage(maxPage);
		pageInfo.setPage(page);
		pageInfo.setStartPage(startPage);	
		
		int pageDe = 1;
		int limitDe=20;
		int maxPageDe=(int)((double)listCountDe/limitDe+(double)(1/20)); 
   		int startPageDe = (((int) ((double)page / 10 + 0.9)) - 1) * 10 + 1;
   	    int endPageDe = startPageDe+10-1;
   	    if (endPageDe> maxPageDe) endPageDe= maxPageDe;
		PageInfo pageInfodetail = new PageInfo();
		pageInfodetail.setEndPage(endPageDe);
   		pageInfodetail.setListCount(listCountDe);
		pageInfodetail.setMaxPage(maxPageDe);
		pageInfodetail.setPage(pageDe);
		pageInfodetail.setStartPage(startPageDe);
		request.setAttribute("pay", pay);
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("pageInfoDe", pageInfodetail);
		request.setAttribute("payrecent", payrecent);
	   	request.setAttribute("article", article);
		return "noveldetail.jsp";
		
	}
}
