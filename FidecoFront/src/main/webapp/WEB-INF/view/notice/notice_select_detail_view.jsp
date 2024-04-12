<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 상세 조회</title>
 <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 20px;
        }

        h5 {
            color: #333;
            text-align: center;
            margin-bottom: 24px;
            font-size: 24px;
        }

        .card-body {
            background-color: #ffffff;
            padding: 24px;
            border-radius: 12px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.05);
            max-width: 800px;
            margin: auto;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }

        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
            color: #333;
        }

        tr:nth-child(even) {
            background-color: #f9f9f9;
        }

        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            text-decoration: none;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #0056b3;
        }

        .btn-primary {
            background-color: #007bff;
        }

        .btn-warning {
            background-color: #ffc107;
        }

        .btn-danger {
            background-color: #dc3545;
        }

        .btn-block {
            width: 100%;
        }

        .row {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .col-md-4 {
            flex-basis: calc(33.333% - 20px);
            max-width: calc(33.333% - 20px);
        }
    </style>
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
				<a href="./NoticeUpdate.nt?notice_num=${noticeDTO.notice_num}"
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