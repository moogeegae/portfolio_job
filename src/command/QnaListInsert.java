package command;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dto.Qna;
import svc.QnaListInsertService;

public class QnaListInsert implements CommandInter{
	static QnaListInsert qli = new QnaListInsert();
	public static QnaListInsert instance() {
		return qli;
	}
	
	@Override
	public String showData(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Qna qna = null;
		String realFolder="";
		String saveFolder="/Upload";
		int fileSize=5*1024*1024;
		ServletContext context = request.getServletContext();
		realFolder=context.getRealPath(saveFolder);   		
		MultipartRequest multi=new MultipartRequest(request,realFolder,fileSize,
				"UTF-8",
				new DefaultFileRenamePolicy());
		qna = new Qna();
		qna.setQna_id(multi.getParameter("qna_id"));
		qna.setQna_pass(multi.getParameter("qnd_pass"));
		qna.setQna_title(multi.getParameter("qna_title"));
		qna.setQna_content(multi.getParameter("qna_content"));
		qna.setQna_file(
		multi.getOriginalFileName((String)multi.getFileNames().nextElement()));
		QnaListInsertService qnaListInsertService = new QnaListInsertService();
		qnaListInsertService.registArticle(qna);

		return "login11qna.somoa";
	}

}
