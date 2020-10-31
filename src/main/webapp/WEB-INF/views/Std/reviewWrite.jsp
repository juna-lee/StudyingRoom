<%@include file="header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="/css/courses.css?after" type="text/css">
	<!-- Courses -->
	<script>
	//별점 마킹 모듈 프로토타입으로 생성
	function Rating(){};
	Rating.prototype.rate = 0;
	Rating.prototype.setRate = function(newrate){
	    //별점 마킹 - 클릭한 별 이하 모든 별 체크 처리
	    this.rate = newrate;
	    let items = document.querySelectorAll('.rate_radio');
	    items.forEach(function(item, idx){
	        if(idx < newrate){
	            item.checked = true;
	        }else{
	            item.checked = false;
	        }
	    });
	}
	let rating = new Rating();//별점 인스턴스 생성
	
	document.addEventListener('DOMContentLoaded', function(){
	    //별점선택 이벤트 리스너
	    document.querySelector('.rating').addEventListener('click',function(e){
	        let elem = e.target;
	        if(elem.classList.contains('rate_radio')){
	            rating.setRate(parseInt(elem.value));
	        }
	    })
	});
	
	 //상품평 작성 글자수 초과 체크 이벤트 리스너
    document.querySelector('.review_textarea').addEventListener('keydown',function(){
        //리뷰 400자 초과 안되게 자동 자름
        let review = document.querySelector('.review_textarea');
        let lengthCheckEx = /^.{400,}$/;
        if(lengthCheckEx.test(review.value)){
            //400자 초과 컷
            review.value = review.value.substr(0,400);
        }
    });

    //저장 전송전 필드 체크 이벤트 리스너
    document.querySelector('#save').addEventListener('click', function(e){
        //별점 선택 안했으면 메시지 표시
        if(rating.rate == 0){
            rating.showMessage('rate');
            return false;
        }
        //리뷰 5자 미만이면 메시지 표시
        if(document.querySelector('.review_textarea').value.length < 5){
            rating.showMessage('review');
            return false;
        }
        //폼 서밋
    });
    
    Rating.prototype.showMessage = function(type){//경고메시지 표시
    switch(type){
        case 'rate':
            //안내메시지 표시
            document.querySelector('.review_rating .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_rating .warning_msg').style.display = 'none';
            },1000);            
            break;
        case 'review':
            //안내메시지 표시
            document.querySelector('.review_contents .warning_msg').style.display = 'block';
            //지정된 시간 후 안내 메시지 감춤
            setTimeout(function(){
                document.querySelector('.review_contents .warning_msg').style.display = 'none';
            },1000);    
            break;
    }
}
	</script>
	<div class="courses">
		<div class="container jm1">
			<div class="wrap">
			    <h1>후기</h1>
			    <form name="reviewform" class="reviewform" method="post" action="/reviewWrite" enctype="multitype/form-data">
			        <input type="hidden" name="rate" id="rate" value="0"/>
			        <p class="title_star">별점과 리뷰를 남겨주세요.</p>
			 
			        <div class="review_rating">
			            <div class="warning_msg">별점을 선택해 주세요.</div>
			            <div class="rating">
			                <!-- 해당 별점을 클릭하면 해당 별과 그 왼쪽의 모든 별의 체크박스에 checked 적용 -->
			                <input type="checkbox" name="rating" id="rating1" value="1" class="rate_radio" title="1점">
			                <label for="rating1"></label>
			                <input type="checkbox" name="rating" id="rating2" value="2" class="rate_radio" title="2점">
			                <label for="rating2"></label>
			                <input type="checkbox" name="rating" id="rating3" value="3" class="rate_radio" title="3점" >
			                <label for="rating3"></label>
			                <input type="checkbox" name="rating" id="rating4" value="4" class="rate_radio" title="4점">
			                <label for="rating4"></label>
			                <input type="checkbox" name="rating" id="rating5" value="5" class="rate_radio" title="5점">
			                <label for="rating5"></label>
			            </div>
			        </div>
			        <div class="review_contents">
			            <div class="warning_msg">5자 이상으로 작성해 주세요.</div>
			            <textarea rows="10" class="review_textarea"></textarea>
			        </div>
			        <div>
			        	<input type="file" name="filename">
			        </div>
			        <div class="cmd" style="display:inline-block; margin-top:50px;">
			            <input class="load_more_button" style="color: rgba(0,0,0,0.3); font-family: 'Montserrat', sans-serif;font-size: 10px;
    font-weight: 700; margin-right:50px;" type="button" name="save" id="save" value="등록">
			            <div class="load_more_button"><a href="reviews">나가기</a></div>
			        </div>
			    </form>
			</div>
		</div>
	</div>
<%@include file="footer.jsp"%>