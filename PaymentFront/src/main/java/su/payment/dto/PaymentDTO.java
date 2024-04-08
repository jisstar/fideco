package su.payment.dto;

public class PaymentDTO {
	public String payment_id;
	public String payment_method;
	public int payment_status;
	public String payment_date;

	public String getPayment_id() {
		return payment_id;
	}

	public void setPayment_id(String payment_id) {
		this.payment_id = payment_id;
	}

	public String getPayment_method() {
		return payment_method;
	}

	public void setPayment_method(String payment_method) {
		this.payment_method = payment_method;
	}

	public int getPayment_status() {
		return payment_status;
	}

	public void setPayment_status(int payment_status) {
		this.payment_status = payment_status;
	}

	public String getPayment_date() {
		return payment_date;
	}

	public void setPayment_date(String payment_date) {
		this.payment_date = payment_date;
	}

	@Override
	public String toString() {
		return "PaymentDTO [payment_id=" + payment_id + ", payment_method=" + payment_method + ", payment_status="
				+ payment_status + ", payment_date=" + payment_date + "]";
	}

}
