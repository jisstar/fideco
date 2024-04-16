package fideco.notice.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.HandlerAdapter;
import fideco.notice.dao.NoticeDAO;
import fideco.notice.dto.NoticeDTO;

public class NoticeSelectDetailController implements Controller{
	 private static Log log = LogFactory.getLog(NoticeSelectDetailController.class);
	@Override
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		int notice_num = Integer.parseInt(request.getParameter("notice_num"));
		log.info("notice_num - "+notice_num);
		NoticeDAO noticeDAO = new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();
		
		noticeDTO = noticeDAO.noticeSelect(notice_num);
		noticeDTO.setNotice_hit(noticeDTO.getNotice_hit());
        noticeDAO.noticeUpdate(noticeDTO);
		log.info(noticeDTO);
		
		
		HttpSession session = request.getSession(true);

        // 세션에 조회한 공지사항의 번호가 없는 경우에만 조회수 증가 및 업데이트
        if (session.getAttribute("visited_notice_" + notice_num) == null) {
            // 조회수 증가
            noticeDTO.setNotice_hit(noticeDTO.getNotice_hit() + 1);
            // 데이터베이스에 조회수 업데이트
            noticeDAO.noticeUpdate(noticeDTO);

            // 세션에 조회한 공지사항의 번호를 저장하여 중복 조회 방지
            session.setAttribute("visited_notice_" + notice_num, true);
        }
        
		request.setAttribute("noticeDTO", noticeDTO);
		HandlerAdapter HandlerAdapter = new HandlerAdapter();
		log.info("공지사항 상세 조회");
		
		HandlerAdapter.setPath("/WEB-INF/view/notice/notice_select_detail_view.jsp");
		
		return HandlerAdapter;
	}
	
}
