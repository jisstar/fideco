package fideco.notice.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.FidecoHandlerAdapter;
import fideco.notice.controller.NoticeDeleteController;
import fideco.notice.controller.NoticeInsertController;
import fideco.notice.controller.NoticeSelectController;
import fideco.notice.controller.NoticeSelectDetailController;
import fideco.notice.controller.NoticeUpdateController;
import fideco.notice.controller.NoticeUpdateViewController;


@WebServlet("/NoticeDispatcherServlet")
public class NoticeDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Log log = LogFactory.getLog(NoticeDispatcherServlet.class);

	@Override
	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String pathURL = requestURI.substring(contextPath.length());

		FidecoHandlerAdapter fidecoHandlerAdapter = null; // 객체 처리 후 모델과 뷰에 반환
		Controller controller = null; // 공통 기능 서블릿 메소드 설정

		// 공지사항 정보 등록할 뷰의 매핑명 설정
		if (pathURL.equals("/NoticeInsertView.nt")) {
			fidecoHandlerAdapter = new FidecoHandlerAdapter();
			fidecoHandlerAdapter.setPath("/WEB-INF/view/notice/notice_insert_view.jsp");
			log.info("공지사항 등록 화면 뷰 확인 - " + fidecoHandlerAdapter);
		}
		// 공지사항 정보 등록 매핑명 설정
		else if (pathURL.equals("/NoticeInsert.nt")) {
			controller = new NoticeInsertController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 등록 확인 - " + fidecoHandlerAdapter);
			
		} else if (pathURL.equals("/NoticeSelectAll.nt")) {
			controller = new NoticeSelectController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 전체 조회 확인 - " + fidecoHandlerAdapter);
			
		} else if (pathURL.equals("/NoticeSelectDetail.nt")) {
			controller = new NoticeSelectDetailController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 상세 조회 확인 - " + fidecoHandlerAdapter);
			
		} else if (pathURL.equals("/NoticeUpdate.nt")) {
			controller = new NoticeUpdateController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 수정 확인 - " + fidecoHandlerAdapter);

		} else if (pathURL.equals("/NoticeUpdateView.nt")) {
			controller = new NoticeUpdateViewController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 수정 화면 뷰 확인 - " + fidecoHandlerAdapter);

		}else if (pathURL.equals("/NoticeDeleteView.nt")) {
				fidecoHandlerAdapter = new FidecoHandlerAdapter();
				fidecoHandlerAdapter.setPath("/WEB-INF/view/notice/notice_delete.jsp");
				log.info("공지사항 삭제 화면 뷰 확인 - " + fidecoHandlerAdapter);
			
		} else if (pathURL.equals("/NoticeDelete.nt")) {
			controller = new NoticeDeleteController();
			fidecoHandlerAdapter = controller.execute(request, response);
			log.info("공지사항 삭제 확인 - " + fidecoHandlerAdapter);
		}

		if (fidecoHandlerAdapter != null) {
			if (fidecoHandlerAdapter.isRedirect()) {
				response.sendRedirect(fidecoHandlerAdapter.getPath());
			} else {
				RequestDispatcher dispatcher = request.getRequestDispatcher(fidecoHandlerAdapter.getPath());
				dispatcher.forward(request, response);
			}
		}

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		service(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		service(request, response);
	}

}
