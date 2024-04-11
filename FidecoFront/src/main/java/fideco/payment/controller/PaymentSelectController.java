package fideco.payment.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.FidecoHandlerAdapter;
import fideco.payment.dao.PaymentDAO;
import fideco.payment.dto.PaymentDTO;
//결제 전체 조회 controller
public class PaymentSelectController implements Controller {
	private static Log log = LogFactory.getLog(PaymentSelectController.class);

	@Override
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		PaymentDAO paymentDAO= new PaymentDAO();
		PaymentDTO paymentDTO = new PaymentDTO();
		log.info(paymentDTO);
		ArrayList<PaymentDTO> arrayList = new ArrayList<PaymentDTO>();
		
		arrayList = paymentDAO.paymentSelectAll();
		log.info(arrayList);
		request.setAttribute("arrayList", arrayList);
		FidecoHandlerAdapter fidecoHandlerAdapter = new FidecoHandlerAdapter();
		log.info("결제 정보 조회");
		
		fidecoHandlerAdapter.setPath("/WEB-INF/view/payment/payment_select_view.jsp");
		return fidecoHandlerAdapter;
	}

}
