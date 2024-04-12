<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>결제 정보 전체 조회</title>

</head>
<body>
    <h4>결제 정보 전체 목록</h4>
    <div class="card-body">
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>결제 아이디</th>
                    <th>결제 금액</th>
                    <th>결제 일자</th>
                    <th>결제 방법</th>
                    <th>상세 보기</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="arrayList" items="${arrayList}">
                    <tr>
                        <td>${arrayList.payment_id}</td>
                        <td>${arrayList.payment_amount}</td>
                        <td>${arrayList.payment_date}</td>
                        <td>${arrayList.payment_method}</td>
                        <td><button type="button" class="btn" onclick="location.href='./PaymentSelectDetail.py?payment_id=${arrayList.payment_id}'">결제정보 상세 보기</button></td>
                    </tr>
                </c:forEach>
                <c:if test="${empty arrayList}"> 
                    <tr>
                        <td colspan="5">등록된 결제 정보가 없습니다.</td>
                    </tr>
                </c:if>
            </tbody>
        </table>
        <a href="./PaymentInsertView.py" class="btn insertgo">결제 정보 입력</a>
    </div>
</body>
