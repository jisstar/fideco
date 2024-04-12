package fideco.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.FidecoHandlerAdapter;
import fideco.notice.dao.NoticeDAO;
import fideco.notice.dto.NoticeDTO;

public class NoticeSelectDetailController implements Controller{
	 private static Log log = LogFactory.getLog(NoticeSelectDetailController.class);
	@Override
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		log.info("notice_num - "+notice_num);
		NoticeDAO noticeDAO = new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();
		
		noticeDTO = noticeDAO.noticeSelect(notice_num);
		noticeDTO.setNotice_hit(noticeDTO.getNotice_hit() + 1);
        noticeDAO.noticeUpdate(noticeDTO);
		log.info(noticeDTO);
		
		request.setAttribute("noticeDTO", noticeDTO);
		FidecoHandlerAdapter fidecoHandlerAdapter = new FidecoHandlerAdapter();
		log.info("공지사항 상세 조회");
		
		fidecoHandlerAdapter.setPath("/WEB-INF/view/notice/notice_select_detail_view.jsp");
		
		return fidecoHandlerAdapter;
	}
	
}
