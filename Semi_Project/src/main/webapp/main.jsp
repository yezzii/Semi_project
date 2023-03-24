<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Pooding 푸딩</title>


<link rel="stylesheet" href="css/MainCss.css">


<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" >
<link rel="stylesheet" href="resources/css/plugin/datepicker/bootstrap-datepicker.css">

<script src="https://code.jquery.com/jquery-3.2.1.js">


</script>
<!-- 부트스트랩 -->

	<!-- 캘린더API -->
	<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/locales/bootstrap-datepicker.ko.min.js" integrity="sha512-L4qpL1ZotXZLLe8Oo0ZyHrj/SweV7CieswUODAAPN/tnqN3PA1P+4qPu5vIryNor6HQ5o22NujIcAZIfyVXwbQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
	<!-- 캘린더API End -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
	integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"
	crossorigin="anonymous">
</script>
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous">
</script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous">
</script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js"
	integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+"
	crossorigin="anonymous">
</script>
<!-- 부트스트랩 end--> 

<script type="text/javascript">


</script>
	
	

</head>
<body>
	<div class="flexMain">
		<div class="flexTop">
			<!-- 네비바 container -->
			<div>
				<a href="#"> 
				<img class="ico_size" src="main_img/fooding type_1.png" style="width:120px">
				</a>
			</div>
			<!-- 로고 -->


			<div class="top_left">
				<a class="top_left_aTag" href="<%=request.getContextPath()%>/freeBoard.go"> 
				<span>커뮤니티</span>
				</a>
				<!-- 항목1 -->

				<a class="top_left_aTag" href="<%=request.getContextPath()%>/reviewBoard.go"> 
				<span>레스토랑</span>
				</a>
				<!-- 항목2 -->

				<a class="top_left_aTag" href="<%=request.getContextPath()%>/main_booking.go"> 
				<span>예약</span>
				</a>
			</div>
			<!-- 항목3 -->


			<div>
				<a href="member/login.jsp">
					<button type="button" class="login">
						<span class="">로그인</span>
					</button>
				</a>
				<!--  로그인 -->
				<a href="logout.jsp">
					<button type="button" class="logout">
						<span class="">로그아웃</span>
					</button>
				</a>
				<!--  로그아웃 -->


				<a href="member/member_join.jsp">
					<button type="button" class="join">
						<span class="">회원가입</span>
					</button>
				</a>
				<!-- 회원가입 -->


				<a href="<%=request.getContextPath() %>/write_board.do">
					<button type="button" class="write">
						<span class="">글쓰기</span>
					</button>
				</a>
				<!-- 글쓰기 -->

				<a href="<%=request.getContextPath()%>/myprofile.go"> <img
					src="https://cdn-icons-png.flaticon.com/512/747/747376.png"
					width="30px" height="30px">
				</a>
			</div>
			<!-- 로고 -->


		</div>

		<div>
		<form method="post" class="searchLine" action="loaction.href='<%=request.getContextPath() %>/main_search.go?'" >
			<span class="top_left_aTag-s"><input type="text" class="top_search" name="searchText" value placeholder="지역,음식,레스토랑명 검색"></span>
		</form>
	</div>  <!-- 검색 -->
	</div>
	
	
	
	

	
	<!-- 메인섹션1 (슬라이드 박스_이미지) -->
	<div class="mainSlidebox">
	<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	  <ol class="carousel-indicators">
	    <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
	    <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
	    <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
		  </ol>
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="http://newsroom.koscom.co.kr/wp-content/uploads/2019/11/20191030_%EC%97%AC%EC%9D%98%EB%8F%84%EB%A7%9B%EC%A7%9100.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>First slide label</h5>
		        <p>Some representative placeholder content for the first slide.</p>
		      </div>
		    </div>
		    <div class="carousel-item">
		      <img src="https://i.ytimg.com/vi/KYuUA3l3SQ4/maxresdefault.jpg" class="d-block w-100" alt="...">
		      <div class="carousel-caption d-none d-md-block">
		        <h5>Second slide label</h5>
		        <p>Some representative placeholder content for the second slide.</p>
		      </div>
		    </div>
	    <div class="carousel-item">
	      <img src="https://t1.daumcdn.net/cfile/tistory/99F745415DF8392401" class="d-block w-100" alt="...">
	      <div class="carousel-caption d-none d-md-block">
	        <h5>Third slide label</h5>
	        <p>Some representative placeholder content for the third slide.</p>
	      </div>
	    </div>
	  </div>
		  <button class="carousel-control-prev" type="button" data-target="#carouselExampleCaptions" data-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="sr-only">Previous</span>
	  </button>
		  <button class="carousel-control-next" type="button" data-target="#carouselExampleCaptions" data-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="sr-only">Next</span>
  	</button>
  	</div>
	</div>	<!-- 메인섹션1 -->

	<div class="main1">
		<!-- 메인섹션2 컨텐츠카드 탭 -->
		
		<div class="card-deck">
		
	<%-- 		<c:set var="content" value="${ContentList}" />	메인 콘텐츠 내용 만큼 카드표시
			
			<c:if test="${!empty content}">
				<c:forEach begin="1" end="${content.getBoardContent().length() }">
	--%>
					<div class="card">
						<img src="<c:url value='/images/${content.getMain_content}'/>" 
							class="card-img-top">
							<div class="card-body">
								<h5 class="card-title">${content.getMain_name()}</h5>
									<p class="card-text">${content.getMain_name()}</p>
							<p class="card-text">
								<small class="text-muted">${content.getMain_location()}</small>
							</p>
						</div>
					</div>
	<%-- 				
				</c:forEach>
			</c:if>
	 --%>
		</div>
	</div>
	<!-- 메인섹션2 end-->

	<div>
		<!-- 메인섹션3 -->
 
	</div>
	<!-- 메인섹션3 end -->

	<div>
		<!-- 메인섹션4 -->

	</div>
	<!-- 메인섹션4 end-->

	<div>
		<!-- 메인섹션5 -->

	</div>
	<!-- 메인섹션4 en5 -->


	<div>
		<!-- 푸터 -->

	</div>
	<!-- 푸터 end -->
	<div><!-- 전체 container -->
	
	
	</div>
</body>
</html>