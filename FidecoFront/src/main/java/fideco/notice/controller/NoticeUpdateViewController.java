package fideco.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.FidecoHandlerAdapter;
import fideco.notice.dao.NoticeDAO;
import fideco.notice.dto.NoticeDTO;

public class NoticeUpdateViewController implements Controller {
	private static Log log = LogFactory.getLog(NoticeUpdateViewController.class);

	@Override
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		log.info("---!---2-2-1--2-42--1");
		String notice_title = request.getParameter("notice_title");
		log.info("notice_title:" + notice_title);
		String notice_content = request.getParameter("notice_content");
		log.info("notice_content:" + notice_content);
		String notice_writer = request.getParameter("notice_writer");
		log.info("notice_writer:" + notice_writer);
		int notice_hit = Integer.parseInt(request.getParameter("notice_hit"));
		log.info("notice_hit:" + notice_hit);

		NoticeDAO noticeDAO = new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();

		noticeDTO.setNotice_title(notice_title);
		noticeDTO.setNotice_content(notice_content);
		noticeDTO.setNotice_writer(notice_writer);
		noticeDTO.setNotice_hit(notice_hit);
	

		noticeDTO = noticeDAO.noticeUpdate(noticeDTO);
		log.info(noticeDTO);

		request.setAttribute("noticeDTO", noticeDTO);
		FidecoHandlerAdapter fidecoHandlerAdapter = new FidecoHandlerAdapter();

		fidecoHandlerAdapter.setPath("/WEB-INF/view/notice/notice_update_view.jsp");

		return null;
	}

}
