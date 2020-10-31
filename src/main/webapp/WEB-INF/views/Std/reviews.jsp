<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="/css/courses.css?after" type="text/css">
	<!-- Courses -->
	<div class="courses">
		<div class="container">
			<div class="row courses_row">

				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="/img/course_1.jpg" alt=""></div>
						<div class="course_body">
							<div class="course_title"><a href="review">Vocabulary</a></div>
							<div class="course_info">
								<ul>
									<li><a href="#">Sarah Parker</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</div>
							<div class="course_text">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla.</p>
							</div>
						</div>
						<div class="course_footer d-flex flex-row align-items-center justify-content-start">
							<div class="course_students"><i class="fa fa-user" aria-hidden="true"></i><span>10</span></div>
							<div class="course_rating ml-auto"><i class="fa fa-star" aria-hidden="true"></i><span>4,5</span></div>
							<div class="course_mark course_free trans_200"><a href="#">Free</a></div>
						</div>
					</div>
				</div>

				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="/img/course_10.jpg" alt=""></div>
						<div class="course_body">
							<div class="course_title"><a href="review">Vocabulary</a></div>
							<div class="course_info">
								<ul>
									<li><a href="#">Sarah Parker</a></li>
									<li><a href="#">English</a></li>
								</ul>
							</div>
							<div class="course_text">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla.</p>
							</div>
						</div>
						<div class="course_footer d-flex flex-row align-items-center justify-content-start">
							<div class="course_students"><i class="fa fa-user" aria-hidden="true"></i><span>10</span></div>
							<div class="course_rating ml-auto"><i class="fa fa-star" aria-hidden="true"></i><span>4,5</span></div>
							<div class="course_mark course_free trans_200"><a href="#">Free</a></div>
						</div>
					</div>
				</div>

				<!-- Course -->
				<div class="col-lg-4 course_col">
					<div class="course">
						<div class="course_image"><img src="/img/course_11.jpg" alt=""></div>
						<div class="course_body">
							<div class="course_title"><a href="review">Vocabulary</a></div>
							<div class="course_info">
								<ul>
									<li><a href="#">Sarah Parker</a></li>
									<li><a href="#">Spanish</a></li>
								</ul>
							</div>
							<div class="course_text">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce enim nulla.</p>
							</div>
						</div>
						<div class="course_footer d-flex flex-row align-items-center justify-content-start">
							<div class="course_students"><i class="fa fa-user" aria-hidden="true"></i><span>10</span></div>
							<div class="course_rating ml-auto"><i class="fa fa-star" aria-hidden="true"></i><span>4,5</span></div>
							<div class="course_mark course_free trans_200"><a href="#">Free</a></div>
						</div>
					</div>
				</div>



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