package fideco.handler;

// 컨트롤러의 요청을 처리 후 이동할 페이지 경로와 전송 방식(redirect/forward) 설정.
public class FidecoHandlerAdapter {
	private boolean redirect = false; 
	private String path = null; 

	public boolean isRedirect() {
		return redirect;
	}

	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}

	public String getPath() {
		return path;
	}

	public void setPath(String path) {
		this.path = path;
	}
}
