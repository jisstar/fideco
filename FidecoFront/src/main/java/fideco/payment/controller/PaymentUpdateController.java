package fideco.payment.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import fideco.control.Controller;
import fideco.handler.FidecoHandlerAdapter;
import fideco.payment.dao.PaymentDAO;
import fideco.payment.dto.PaymentDTO;

public class PaymentUpdateController implements Controller {
	private static Log log = LogFactory.getLog(PaymentUpdateController.class);

	@Override
	public FidecoHandlerAdapter execute(HttpServletRequest request, HttpServletResponse response) {
		String payment_id = request.getParameter("payment_id");
		log.info(payment_id);
		System.out.println(payment_id);
		PaymentDAO paymentDAO = new PaymentDAO();
		PaymentDTO paymentDTO = new PaymentDTO();
		
		paymentDTO = paymentDAO.paymentSelect(payment_id);
		request.setAttribute("paymentDTO", paymentDTO);
		FidecoHandlerAdapter fidecoHandlerAdapter = new FidecoHandlerAdapter();
		log.info("결제 상세 조회");
		
		fidecoHandlerAdapter.setPath("/WEB-INF/view/payment/payment_update.jsp");
		 return fidecoHandlerAdapter;
	}

}
