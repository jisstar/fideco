package fideco.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fideco.handler.HandlerAdapter;
// 서블릿 메소드 설정. 공통 기능
public interface Controller {
	public HandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}
