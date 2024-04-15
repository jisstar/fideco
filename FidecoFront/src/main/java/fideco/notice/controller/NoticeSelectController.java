package fideco.notice.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.HandlerAdapter;
import fideco.notice.dao.NoticeDAO;
import fideco.notice.dto.NoticeDTO;
//공지사항 전체 조회 controller
public class NoticeSelectController implements Controller {
	private static Log log = LogFactory.getLog(NoticeSelectController.class);

	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		NoticeDAO noticeDAO= new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();
		log.info(noticeDTO);
		ArrayList<NoticeDTO> arrayList = new ArrayList<NoticeDTO>();
		
		arrayList = noticeDAO.noticeSelectAll();
		log.info(arrayList);
		request.setAttribute("arrayList", arrayList);
		HandlerAdapter HandlerAdapter = new HandlerAdapter();
		log.info("공지사항 조회");
		
		HandlerAdapter.setPath("/WEB-INF/view/notice/notice_select_view.jsp");
		return HandlerAdapter;
	}

}
