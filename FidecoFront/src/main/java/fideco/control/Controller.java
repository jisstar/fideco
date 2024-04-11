package fideco.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fideco.handler.FidecoHandlerAdapter;
// 서블릿 메소드 설정. 공통 기능
public interface Controller {
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}
