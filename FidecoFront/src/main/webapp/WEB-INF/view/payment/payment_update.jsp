<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 수정</title>
</head>
<body>
	<form action="./PaymentUpdateView.py" method="post">

		<div class="form-group row">
			<label for="payment_id" class="ml-sm-3 col-form-label"> 결제 아이디 </label>
			<div class="ml-sm-3">
				<!--컨트롤의 내용은 변경되지 않지만, 데이터는 전송된다.-->
				<input type="text" name="payment_id" id="payment_id"
					class="form-control form-control-sm bg-white"
					value="${param.payment_id}" readonly>
			</div>
		</div>


		<label for="payment_amount">결제 금액 : </label> <input type="text"
			id="payment_amount" name="payment_amount" required> 
			<label for="payment_date">결제 일자 : </label> <input type="date"
			id="payment_date" name="payment_date" required>

		<h3>결제 수단 선택:</h3>
		<input type="radio" id="credit_pay" name="payment_method"
			value="카드 결제" checked> <label for="credit_pay">카드 결제</label><br>
		<input type="radio" id="phone_pay" name="payment_method"
			value="휴대폰 결제"> <label for="phone_pay">휴대폰 결제</label><br>
		<input type="radio" id="simple_pay" name="payment_method"
			value="간편 결제"> <label for="simple_pay">간편 결제</label><br>

		<div class="form-group">
			<button type="submit" class="btn btn-secondary">수정</button>
			<button type="reset" class="btn btn-secondary">취소</button>
		</div>
	</form>
</body>
</html>