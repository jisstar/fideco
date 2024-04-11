<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 상세 정보</title>
</head>
<body>
	<h5>결제 상세 정보</h5>
	<div class="card-body">
		<table class="table table-hover">
			<thead class="thead-light">
				<tr class="text-center">
					<th>결제 아이디</th>
					<th>결제 금액</th>
					<th>결제 일자</th>
					<th>결제 방법</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-center">
					<td>${paymentDTO.payment_id}</td>
					<td>${paymentDTO.payment_amount}</td>
					<td>${paymentDTO.payment_date}</td>
					<td>${paymentDTO.payment_method}</td>
				</tr>
			</tbody>
		</table>
		<div class="row">
			<div class="col-md-4">
				<a href="./PaymentSelectAll.py" class="btn btn-primary btn-block"> 결제 정보 전체 조회 </a>
			</div>
			<div class="col-md-4">
				<a href="./PaymentUpdateView.py?payment_id=${paymentDTO.payment_id}"
					class="btn btn-warning btn-block"> 결제 정보 수정 </a>
			</div>
			<div class="col-md-4">
				<a href="./PaymentDeleteView.py?payment_id=${paymentDTO.payment_id}"
					class="btn btn-danger btn-block"> 결제 정보 삭제 </a>
			</div>
		</div>

	</div>
</body>
</html>