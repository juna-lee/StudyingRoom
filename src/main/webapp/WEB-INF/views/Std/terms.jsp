<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<meta charset="UTF-8">
<meta name="description" content="Yoga Studio Template">
<meta name="keywords" content="Yoga, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Studying Room</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="/css/style.css" type="text/css">
</head>
<!-- Page Add Section Begin -->
<section class="page-add">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="page-breadcrumb">
					<h2 style="text-align: center; padding-bottom:40px;">
						<a href="index"><img src="/img/tedlogo.png" /></a>
					</h2>
				</div>
			</div>
			<div class="col-lg-12">
				<div class="page-breadcrumb">
					<h2 style="text-align: center;">
						이용약관<span>.</span>
					</h2>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Page Add Section End -->

<!-- Contact Section Begin -->
<div class="contact-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-6 offset-lg-3">
				<form action="#" class="contact-form">
					<div class="row">
						<h5>
							<input type="checkbox" id="termchecks"> <label
								for="termchecks" style="cursor: pointer;"> &nbsp;&nbsp;<em></em>이용약관, 개인정보 수집 및 이용, 위치정보 이용약관(선택), 프로모션 정보 수신(선택)에 모두 동의합니다.
							</label>
						</h5>
						<h6>
							<input type="checkbox" id="termcheck1"> <label
								for="termcheck1" style="cursor: pointer;"> &nbsp;&nbsp;<em></em>
								이용약관 동의(필수)
							</label>
						</h6>
						<div class="col-lg-12">
							<textarea class="form-control term-area" rows="6"></textarea>
						</div>
						<h6>
							<input type="checkbox" id="termcheck2"> <label
								for="termcheck2" style="cursor: pointer;"> &nbsp;&nbsp;<em></em>개인정보 수집 및 이용 동의(필수)
							</label>
						</h6>
						<div class="col-lg-12">
							<textarea class="form-control term-area" rows="6"></textarea>
						</div>
						<h6>
							<input type="checkbox" id="termcheck3"> <label
								for="termcheck3" style="cursor: pointer;"> &nbsp;&nbsp;<em></em>위치정보 이용약관 동의(선택)
							</label>
						</h6>
						<div class="col-lg-12">
							<textarea class="form-control term-area" rows="6"></textarea>
						</div>
						<h6>
							<input type="checkbox" id="termcheck4"> <label
								for="termcheck4" style="cursor: pointer;"> &nbsp;&nbsp;<em></em>프로모션 정보 수신 동의(선택)
							</label>
						</h6>
						<div class="col-lg-12">
							<textarea class="form-control term-area" rows="6"></textarea>
						</div>
						<div class="col-lg-12 text-center">
							<button type="button"
								style="background-color: #d2d2d2; color: #a6a6a6; border-color: #d2d2d2;"
								id=btn-term2 onClick="location.href='register'"disabled>확인</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- Contact Section End -->
<script src="/js/jquery-3.3.1.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/jquery.slicknav.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/jquery.nice-select.min.js"></script>
<script src="/js/mixitup.min.js"></script>
<script src="/js/main.js"></script>
</html>
<script>
	$(document).ready(function() {

		//최상단 체크박스 클릭
		$("#termchecks").click(function() {
			//클릭되었으면
			if ($("#termchecks").prop("checked")) {
				//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
				$("input[id=termcheck1]").prop("checked", true);
				$("input[id=termcheck2]").prop("checked", true);
				$("input[id=termcheck3]").prop("checked", true);
				$("input[id=termcheck4]").prop("checked", true);
				$("#btn-term2").attr("disabled", false)
				$("#btn-term2").css("background-color", "#333")
				$("#btn-term2").css("color", "#fff")
				$("#btn-term2").css("border-color", "#000")
				//클릭이 안되있으면
			} else {
				//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
				$("input[id=termcheck1]").prop("checked", false);
				$("input[id=termcheck2]").prop("checked", false);
				$("input[id=termcheck3]").prop("checked", false);
				$("input[id=termcheck4]").prop("checked", false);
				$("#btn-term2").attr("disabled", true)
				$("#btn-term2").css("background-color", "#d2d2d2")
				$("#btn-term2").css("color", "#a6a6a6")
				$("#btn-term2").css("border-color", "#d2d2d2")
			}
		});
	});
</script>
<script>
	$(document).ready(function() {
						$("#termcheck1").click(function() {
											if ($("#termcheck1").prop("checked")
													&& $("#termcheck2").prop(
															"checked")
													&& $("#termcheck3").prop(
															"checked")
													&& $("#termcheck4").prop(
															"checked")) {
												//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
												$("input[id=termchecks]").prop(
														"checked", true);
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else if ($("#termcheck1").prop(
													"checked")
													&& $("#termcheck2").prop(
															"checked")) {
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else {
												$("input[id=termchecks]").prop(
														"checked", false);
												$("#btn-term2").attr(
														"disabled", true)
												$("#btn-term2").css(
														"background-color",
														"#d2d2d2")
												$("#btn-term2").css("color",
														"#a6a6a6")
											}
										});
						$("#termcheck2")
								.click(
										function() {
											if ($("#termcheck1")
													.prop("checked")
													&& $("#termcheck2").prop(
															"checked")
													&& $("#termcheck3").prop(
															"checked")
													&& $("#termcheck4").prop(
															"checked")) {
												//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
												$("input[id=termchecks]").prop(
														"checked", true);
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else if ($("#termcheck1").prop(
													"checked")
													&& $("#termcheck2").prop(
															"checked")) {
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else {
												$("input[id=termchecks]").prop(
														"checked", false);
												$("#btn-term2").attr(
														"disabled", true)
												$("#btn-term2").css(
														"background-color",
														"#d2d2d2")
												$("#btn-term2").css("color",
														"#a6a6a6")
											}
										});
						$("#termcheck3")
								.click(
										function() {
											if ($("#termcheck1")
													.prop("checked")
													&& $("#termcheck2").prop(
															"checked")
													&& $("#termcheck3").prop(
															"checked")
													&& $("#termcheck4").prop(
															"checked")) {
												//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
												$("input[id=termchecks]").prop(
														"checked", true);
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else {
												$("input[id=termchecks]").prop(
														"checked", false);
												$("#btn-term2").attr(
														"disabled", true)
												$("#btn-term2").css(
														"background-color",
														"#d2d2d2")
												$("#btn-term2").css("color",
														"#a6a6a6")
											}
										});
						$("#termcheck4")
								.click(
										function() {
											if ($("#termcheck1")
													.prop("checked")
													&& $("#termcheck2").prop(
															"checked")
													&& $("#termcheck3").prop(
															"checked")
													&& $("#termcheck4").prop(
															"checked")) {
												//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
												$("input[id=termchecks]").prop(
														"checked", true);
												$("#btn-term2").attr(
														"disabled", false)
												$("#btn-term2").css(
														"background-color",
														"#333")
												$("#btn-term2").css("color",
														"#fff")
											} else {
												$("input[id=termchecks]").prop(
														"checked", false);
												$("#btn-term2").attr(
														"disabled", true)
												$("#btn-term2").css(
														"background-color",
														"#d2d2d2")
												$("#btn-term2").css("color",
														"#a6a6a6")
											}
										});
					});
</script>