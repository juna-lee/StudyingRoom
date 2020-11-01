<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script>
    if(${reviewtrue}){
    	alert("리뷰 작성 성공");
    }else{
    	alert("리뷰 작성을 실패하였습니다..");
    }
    </script>
 <link rel="stylesheet" href="/css/courses.css?after" type="text/css">
 <link rel="stylesheet" href="/css/course.css?after" type="text/css">
	<!-- Courses -->
	<div class="courses">
		<div class="container">
			<div class="row courses_row">
				<c:forEach items="${list}" var="list">
				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course" style="padding-bottom: 100px;">
						<div class="course_image"  style="height:100%; width:100%;"><img src="/resources/upload/${list.filename}" alt=""></div>
						<div class="course_body">
							<div class="course_title"><a href="review?bno=${list.bno}">${list.title}</a></div>
							<div class="course_info">
								<ul>
									<li><a href="#">권혁성</a></li>
								</ul>
							</div>
							<div class="course_text">
								<p>${list.content}</p>
							</div>
						</div>
						<div class="course_footer d-flex flex-row align-items-center justify-content-start">
							<div class="course_students"><i class="fa fa-user" aria-hidden="true"></i><span>${list.readcnt }</span></div>
							<div class="course_rating ml-auto">
							<c:forEach begin="1" end="${list.rating}" var="stars">
							<span class="rating_r intro_rating rating_r_${list.rating}">
							<i style="margin-right:0;"></i>
							</span>
							</c:forEach>
							<c:if test="${list.rating != 5}">
							<c:forEach begin="1" end="${5 - list.rating}" var="stars2">
							<span class="rating_r">
							<i style="margin-right:0;"></i>
							</span>
							</c:forEach>
							</c:if>
							</div>
						</div>
					</div>
				</div>
				</c:forEach>

			</div>

			<div class="row">
				<div class="col">
					<div class="load_more_button" style=""><a href="#">더보기</a></div>
					<div class="load_more_button float_right " style="float:right;"><a href="reviewWrite">리뷰작성</a></div>
				</div>
			</div>
		</div>
	</div>
<%@include file="footer.jsp"%>