<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 수정 뷰</title>
</head>
<body>
	<h5>결제 정보 수정</h5>
	<div class="card-body">
		<form action="./PaymentUpdateView.py" method="post" id="sign_dept">
			<fieldset>
				<div class="form-group row">
					<label for="payment_id" class="ml-sm-3 col-form-label"> 결제
						아이디 </label>
					<div class="ml-sm-3">
						<input type="text" name="payment_id" id="payment_id"
							class="form-control form-control-sm bg-white"
							value="${param.payment_id}" readonly>
					</div>
				</div>

				<div class="form-group row">
					<label for="payment_amount" class="ml-sm-3 col-form-label">
						결제 금액 </label>
					<div class="ml-sm-3">
						<input type="text" name="payment_amount" id="payment_amount"
							class="form-control form-control-sm"
							value="${paymentDTO.payment_amount}">
					</div>
				</div>

				<div class="form-group row">
					<label for="payment_date" class="ml-sm-3 col-form-label">
						결제 일자 </label>
					<div class="ml-sm-3">
						<input type="date" name="payment_date" id="payment_date"
							class="form-control form-control-sm"
							value="${paymentDTO.payment_date}">
					</div>
				</div>

				<div class="form-group row">
					<label for="payment_method" class="ml-sm-3 col-form-label">
						결제 일자 </label>
					<div class="ml-sm-3">
						<input type="radio" id="credit_pay" name="payment_method"
							value="${paymentDTO.payment_method}" checked> <label
							for="credit_pay">카드 결제</label><br> <input type="radio"
							id="phone_pay" name="payment_method"
							value="${paymentDTO.payment_method}"> <label
							for="phone_pay">휴대폰 결제</label><br> <input type="radio"
							id="simple_pay" name="payment_method"
							value="${paymentDTO.payment_method}"> <label
							for="simple_pay">간편 결제</label><br>
					</div>
				</div>

				<div class="form-group">
					<button type="submit" class="btn btn-secondary">수정</button>
					<button type="reset" class="btn btn-secondary">취소</button>
				</div>
			</fieldset>
		</form>
		</div>
</body>
</html>