<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세 조회</title>
</head>
<body>
	<h5>공지사항 상세 조회</h5>
	<div class="card-body">
		<table class="table table-hover">
			<thead class="thead-light">
				<tr class="text-center">
					<th>NO.</th>
					<th>제목</th>
					<th>내용</th>
					<th>작성자</th>
					<th>등록일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr class="text-center">
					<td>${noticeDTO.notice_num}</td>
					<td>${noticeDTO.notice_title}</td>
					<td>${noticeDTO.notice_content}</td>
					<td>${noticeDTO.notice_writer}</td>
					<td>${noticeDTO.notice_registday}</td>
					<td>${noticeDTO.notice_hit}</td>
				</tr>
			</tbody>
		</table>
		<div class="row">
			<div class="col-md-4">
				<a href="./NoticeSelectAll.nt" class="btn btn-primary btn-block"> 공지사항 전체 조회 </a>
			</div>
			<div class="col-md-4">
				<a href="./NoticeUpdateView.nt?notice_num=${noticeDTO.notice_num}"
					class="btn btn-warning btn-block"> 공지사항 수정 </a>
			</div>
			<div class="col-md-4">
				<a href="./NoticeDeleteView.nt?notice_num=${noticeDTO.notice_num}"
					class="btn btn-danger btn-block"> 공지사항 삭제 </a>
			</div>
		</div>

	</div>
</body>
</html>