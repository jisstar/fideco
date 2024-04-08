package fideco.control;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import fideco.handler.FidecoHandlerAdapter;

public interface Controller {
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response);
}
