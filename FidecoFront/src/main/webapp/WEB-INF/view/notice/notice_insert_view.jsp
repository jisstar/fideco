<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 입력</title>
</head>
<body>
	<h2>공지사항 입력</h2>

	<form action="./NoticeInsert.nt" method="post">
		<table>
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="notice_title"></td>
			</tr>

			<tr>
				<td>내용 :</td>
				<td><input type="text" name="notice_content"></td>
			</tr>

			<tr>
				<td>작성자 :</td>
				<td><input type="text" name="notice_writer"></td>
			</tr>

			<tr>
				<td>조회수 :</td>
				<td><input type="text" name="notice_hit"></td>
			</tr>


		</table>
		<button type="submit">등록</button>
		<button type="reset">취소</button>
	</form>

</body>

</html>