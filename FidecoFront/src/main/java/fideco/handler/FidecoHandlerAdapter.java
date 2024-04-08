package fideco.handler;

public class FidecoHandlerAdapter {
	private boolean redirect = false; // redirect = false로 초기화하고 포워드로 JSP페이지 이동하는 핸들러 어댑터를 설정한다.

	// 경로를 지정하여 저장하고자 하는 파일을 저장한다.
	private String path = null; // 경로를 null로 초기화하여 저장하고자 하는 JSP 페이지를 저장하고 JSP페이지는 결과 데이터에 대한 응답

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
