package command;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dto.Novel;
import dto.PageInfo;
import svc.NovelListService;

public class NovelBoardShow implements CommandInter{
	static NovelBoardShow nbs = new NovelBoardShow();
	public static NovelBoardShow instance() {
		return nbs;
	}
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		List<Novel> payrecent =new ArrayList<Novel>();
		List<Novel> paybest =new ArrayList<Novel>();
		List<Novel> payrecentbest =new ArrayList<Novel>();
		List<Novel> paybestmuhyup =new ArrayList<Novel>();
		List<Novel> paybestfantasy =new ArrayList<Novel>();
		List<Novel> paybestfusion =new ArrayList<Novel>();
		List<Novel> paybestgame =new ArrayList<Novel>();
		List<Novel> paybestsport =new ArrayList<Novel>();
		List<Novel> paybestromance =new ArrayList<Novel>();
		List<Novel> paybestmodernfantasy =new ArrayList<Novel>();
		List<Novel> paybestalternativehistory =new ArrayList<Novel>();
		List<Novel> paybestdrama =new ArrayList<Novel>();
		List<Novel> paybestetc =new ArrayList<Novel>();
	  	int page=1;
		int limit=35;
		String name = request.getParameter("result");
		String pay = request.getParameter("pay");
		if(request.getParameter("page")!=null){
			page=Integer.parseInt(request.getParameter("page"));
		}
		String link = null;
		NovelListService novelListService = NovelListService.instance();
		int listCount=0;
		
		//날짜 구하기
		Date today = new Date();
	    SimpleDateFormat date = new SimpleDateFormat("yyyy-MM-dd");
	    String toDay = date.format(today);
	    Calendar mon = Calendar.getInstance();
	    mon.add(Calendar.MONTH , -2);
	    String due = new java.text.SimpleDateFormat("yyyy-MM-dd").format(mon.getTime());
		
		//유료
		if(pay.equals("yes")) {
			listCount=novelListService.getpayListCount();	//유료전체수
			payrecent = novelListService.getpayrecentList(page,limit);	//유료목록 최신 등록순
			paybest = novelListService.getpaybestList();		//유료목록 구매수 많은 순
			payrecentbest = novelListService.getpayrecentbestList(due);	//유료목록 구매수 많은데 2달 이내
			paybestmuhyup = novelListService.getpaygenreList("무협");	//유료목록 장르별 구매순 총 9개+그외 다합쳐서 1개
			paybestfantasy = novelListService.getpaygenreList("판타지");	
			paybestfusion = novelListService.getpaygenreList("퓨전");	
			paybestgame = novelListService.getpaygenreList("게임");	
			paybestsport = novelListService.getpaygenreList("스포츠");	
			paybestromance = novelListService.getpaygenreList("로맨스");	
			paybestmodernfantasy = novelListService.getpaygenreList("현대판타지");	
			paybestalternativehistory = novelListService.getpaygenreList("대체역사");	
			paybestdrama = novelListService.getpaygenreList("드라마");	
			paybestetc = novelListService.getpaygenreetcList();	
			link="novelboard.jsp";
		}else {
			listCount=novelListService.getfreeListCount();	//무료전체수
			payrecent = novelListService.getfreerecentList(page,limit);	//무료목록 최신 등록순
			paybest = novelListService.getfreebestList();		//무료목록 조회수 많은 순
			payrecentbest = novelListService.getfreerecentbestList(due);	//무료목록 구매수 많은데 2달 이내
			paybestmuhyup = novelListService.getfreegenreList("무협");	//무료목록 장르별 구매순 총 9개+그외 다합쳐서 1개
			paybestfantasy = novelListService.getfreegenreList("판타지");	
			paybestfusion = novelListService.getfreegenreList("퓨전");	
			paybestgame = novelListService.getfreegenreList("게임");	
			paybestsport = novelListService.getfreegenreList("스포츠");	
			paybestromance = novelListService.getfreegenreList("로맨스");	
			paybestmodernfantasy = novelListService.getfreegenreList("현대판타지");	
			paybestalternativehistory = novelListService.getfreegenreList("대체역사");	
			paybestdrama = novelListService.getfreegenreList("드라마");	
			paybestetc = novelListService.getfreegenreetcList();
			link="freenovelboard.jsp";
		}
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
		request.setAttribute("pageInfo", pageInfo);
		request.setAttribute("payrecent", payrecent);
		request.setAttribute("paybest", paybest);
		request.setAttribute("payrecentbest", payrecentbest);
		request.setAttribute("paybestmuhyup", paybestmuhyup);
		request.setAttribute("paybestfantasy", paybestfantasy);
		request.setAttribute("paybestfusion", paybestfusion);
		request.setAttribute("paybestgame", paybestgame);
		request.setAttribute("paybestsport", paybestsport);
		request.setAttribute("paybestromance", paybestromance);
		request.setAttribute("paybestmodernfantasy", paybestmodernfantasy);
		request.setAttribute("paybestalternativehistory", paybestalternativehistory);
		request.setAttribute("paybestdrama", paybestdrama);
		request.setAttribute("paybestetc", paybestetc);
		return link;
	}
}
