<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정 뷰</title>
</head>
<body>
	<h5>공지사항 수정</h5>
	<div class="card-body">
		<form action="./NoticeUpdateView.nt" method="post" id="sign_dept">

			<div class="form-group row">
				<label for="notice_num" class="ml-sm-3 col-form-label"> 공지사항
					아이디 </label>
				<div class="ml-sm-3">
					<!--컨트롤의 내용은 변경되지 않지만, 데이터는 전송된다.-->
					<input type="text" name="notice_num" id="notice_num"
						class="form-control form-control-sm bg-white"
						value="${param.notice_num}" readonly>
				</div>
			</div>


			<div class="form-group row">
				<label for="notice_title" class="ml-sm-3 col-form-label">
					공지사항 제목 </label>
				<div class="ml-sm-3">
					<input type="text" name="notice_title" id="notice_title"
						class="form-control form-control-sm"
						value="${noticeDTO.notice_title}">
				</div>
			</div>
			<div class="form-group row">
				<label for="notice_content" class="ml-sm-3 col-form-label">
					공지사항 내용 </label>
				<div class="ml-sm-3">
					<input type="text" name="notice_content" id="notice_content"
						class="form-control form-control-sm"
						value="${noticeDTO.notice_content}">
				</div>
			</div>

			<div class="form-group row">
				<label for="notice_writer" class="ml-sm-3 col-form-label">
					공지사항 작성자 </label>
				<div class="ml-sm-3">
					<input type="text" name="notice_writer" id="notice_writer"
						class="form-control form-control-sm"
						value="${noticeDTO.notice_writer}">
				</div>
			</div>
			
			<div class="form-group row">
				<div class="ml-sm-3">
					<input type="hidden" name="notice_hit" id="notice_hit"
						class="form-control form-control-sm"
						value="${noticeDTO.notice_hit}">
				</div>
			</div>
	

			<div class="form-group">
				<button type="submit" class="btn btn-secondary">수정</button>
				<button type="reset" class="btn btn-secondary">취소</button>
			</div>

		</form>
	</div>
</body>
</html>