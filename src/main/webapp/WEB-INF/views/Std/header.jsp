<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Yoga Studio Template">
    <meta name="keywords" content="Yoga, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Studying Room</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css?family=Amatic+SC:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900&display=swap"
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

<body class="headerbody">
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>
    
    <!-- Search model -->
	<div class="search-model">
		<div class="h-100 d-flex align-items-center justify-content-center">
			<div class="search-close-switch">+</div>
			<form class="search-model-form">
				<input type="text" id="search-input" placeholder="Search here.....">
			</form>
		</div>
	</div>
	<!-- Search model end -->

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="container-fluid">
            <div class="inner-header">
                <div class="logo">
                    <a href="index"><img src="/img/tedlogo.png" alt=""></a>
                </div>
                <div class="header-right">
                    <img src="/img/icons/search.png" alt="" class="search-trigger">
                    <img src="/img/icons/man.png" alt="">
                    <a href="#">
                        <img src="/img/icons/bag.png" alt="">
                        <span>2</span>
                    </a>
                </div>
                <div class="user-access">
                    <a href="terms">회원가입</a>
                    <a href="login" class="in">로그인</a>
                </div>
                <nav class="main-menu mobile-menu">
                    <ul>
                        <li><a class="active" href="index">홈</a></li>
                        <li><a href="reservation">예약하기</a>
                            <ul class="sub-menu">
                                <li><a href="product-page.html">개인좌석</a></li>
                                <li><a href="shopping-cart.html">스터디룸</a></li>
                            </ul>
                        </li>
                        <li><a href="notice">공지사항</a></li>
                        <li><a href="reviews">리뷰</a></li>
                        <li><a href="qna">Q&A</a>
                         <ul class="sub-menu">
                                <li><a href="qna">Q&A</a></li>
                                <li><a href="faq">자주하는질문</a></li>
                            </ul>
                         </li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>
    <!-- Header Info Begin -->
    <div class="header-info">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-4">
                    <div class="header-item">
                        <img src="/img/icons/delivery.png" alt="">
                        <p></p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-lg-center">
                    <div class="header-item">
                        <img src="/img/icons/voucher.png" alt="">
                        <p>20% 할인 정기권 발급 받기</p>
                    </div>
                </div>
                <div class="col-md-4 text-left text-xl-right">
                    <div class="header-item">
                    <img src="/img/icons/sales.png" alt="">
                    <p>즐겨찾기 추가하고 30% 할인 쿠폰 받기</p>
                </div>
                </div>
            </div>
        </div>
    </div>