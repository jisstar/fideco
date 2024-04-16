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

		<c:set var="count" value="${arrayList.size()}" />
        <c:forEach var="notice" items="${arrayList}">
            <tr>
                <td>${count}</td>
                <td><a href="./NoticeSelectDetail.nt?notice_num=${notice.notice_num}">${notice.notice_title}</a></td>
                <td>${notice.notice_writer}</td>
                <td>${notice.notice_registday}</td>
                <td>${notice.notice_hit}</td>
            </tr>
            <c:set var="count" value="${count - 1}" />
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