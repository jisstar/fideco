<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
공지사항 등록이 완료되었습니다.
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
</body>
</html>