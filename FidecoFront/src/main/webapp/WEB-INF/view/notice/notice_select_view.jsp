<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 전체 조회</title>

</head>
<body>
	<h4>공지사항 전체 목록</h4>
	<table border="1">
		<tr>
			<th>NO.</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>조회수</th>
		</tr>

		<c:forEach var="arrayList" items="${arrayList}">
			<tr>
				<td>${arrayList.notice_num}</td>
				<td><a href="./NoticeSelectDetail.nt?notice_num=${arrayList.notice_num}">${arrayList.notice_title}</a></td>
				<td>${arrayList.notice_writer}</td>
				<td>${arrayList.notice_registday}</td>
				<td>${arrayList.notice_hit}</td>
				
			</tr>
			
		</c:forEach>

		<c:if test="${empty arrayList}">
			<tr>
				<td colspan="4">등록된 공지사항이 없습니다.</td>
			</tr>
		</c:if>
		</tbody>
	</table>
	<a href="./NoticeInsertView.nt" class="btn insert2go"> 공지사항 입력 </a>

</body>
</html>