<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" href="/css/courses.css?after" type="text/css">
<!-- Courses -->
<div class="courses">
	<div class="container">
		<div class="row courses_row">

			<div class="container">
				<div class="search_wrap">
				<div class="row">
				<div class="col">
					<div class="record_group">
						<div class="panel_title">Q&A</div>
					</div>
					</div>
					</div>
					<div class="row">
						<div class="col">
							<div class="load_more_button float_right " style="float: right; margin-bottom:15px; margin-top:40px">
								<a href="#">Q&A 작성</a>
							</div>
						</div>
					</div>
				</div>
				<!-- search end -->
				<div class="bord_list">
					<table class="bord_table" summary="이표는 번호,제목,글쓴이,날자,조회수로 구성되어 있습니다">
						<caption class="sr-only">Q&A 리스트</caption>
						<colgroup>
							<col width="10%">
							<col width="5%">
							<col width="*">
							<col width="15%">
							<col width="10%">
						</colgroup>
						<thead>
							<tr>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>답변완료</td>
								<td></td>
								<td class="title"><a href="notice_view.html"><i
										class="fa fa-lock"></i>상품 문의</a></td>
								<td>관리자</td>
								<td>18-10-16</td>
							</tr>
							<tr>
								<td>답변완료</td>
								<td></td>
								<td class="title"><a href="notice_view.html"><i
										class="fa fa-lock"></i>상품 문의</a></td>
								<td>관리자</td>
								<td>18-10-16</td>
							</tr>
							<tr>
								<td>답변완료</td>
								<td></td>
								<td class="title"><a href="notice_view.html"><i
										class="fa fa-lock"></i>상품 문의</a></td>
								<td>관리자</td>
								<td>18-10-16</td>
							</tr>
						</tbody>
					</table>
					<div class="paging">
						<a href=""><i class="fa  fa-angle-double-left"></i></a> <a href=""><i
							class="fa fa-angle-left"></i></a> <a href="" class="active">1</a> <a
							href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">5</a>
						<a href=""><i class="fa fa-angle-right"></i></a> <a href=""><i
							class="fa  fa-angle-double-right"></i></a>

					</div>
				</div>
			</div>

		</div>


	</div>
</div>
<%@include file="footer.jsp"%>