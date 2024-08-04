<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- header -->

<header class="header awe-skin-dark header--fixed">
	<div class="container-fluid pd-0">
		<div class="header__inner">
			<div class="header__logo_menu_wrap">
				<div class="header__logo">
					<a href="/"><img src="/resources/assets/img/logo-white.png"
						alt="" /></a>
				</div>
				<div class="header__menu">

					<!-- onepage-nav -->
					<nav class="onepage-nav">

						<!-- onepage-menu -->
						<ul class="onepage-menu">
							<li class="current-menu-item"><a href="/">홈</a></li>
							<li><a href="/notice/list">공지사항</a></li>
							<li><a href="city.html">베스트 게시글</a></li>
							<li><a href="/travel/list">전체 게시글</a></li>
							 <c:if test="${not empty member}">
							<li><a href="/member/mypage">마이페이지</a></li>
							</c:if>
				
						</ul>

				

						<div class="navbar-toggle">
							<span></span><span></span><span></span>
						</div>
					</nav>
					<!-- End / onepage-nav -->

				</div>
			</div>
			<div class="header__hotline_book_wrap">	
				<div class="header__lang">
				 <c:if test="${empty member}">
        	<p>로그인을 해주세요</p>
			</c:if>
				<c:if test="${not empty member}">
					 <p>${member.memberName} 님 </p>
			</c:if>
				</div>

				<div class="header__booking">
				<c:if test="${empty member}">
				<button type="button"  class="md-btn md-btn--primary md-btn--pill " data-bs-toggle="modal" data-bs-target="#exampleModal">로그인</button>
				  </c:if>
			<c:if test="${not empty member}">
				<button type="button"  class="md-btn md-btn--primary md-btn--pill "  onclick="location.href='/member/logout' " >로그아웃</button>
				  </c:if>
				</div>
				
			<!-- Button trigger modal -->


			</div>
		</div>
	</div>
</header>

<!-- Modal -->
<div class="modal fade" tabindex="-1" id="exampleModal"   aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
     <div class="modal-content">

      <div class="modal-header mb-5" >
        <h5 class="fs-1 text-center" style="width:1000px;height:px;">로그인</h5>
        <button type="button" id="modalbtn1" class="btn-close " data-bs-dismiss="modal"  aria-label="Close" ></button>
      </div>


      <div class="modal-body">
        <div class="member_login">
         <form action="/member/login" method="POST">
<!--           <form   action="/member/login" method="post" > -->
              <div class="member_login_input my-div fs-4">
                  <input type="text" name="memberId" placeholder="아이디"  style="border-radius:30px;width:400px;height:px;">
              </div>
  
              <div class="member_login_input my-div">
                  <input type="password" name="memberPassword" placeholder="비밀번호" style="border-radius:30px; width:400px">
              </div>
  
              <div class="member_login_btn  my-div" >
  
                  <input type="submit" style="width:80px;height:40px " class="btn btn-primary fs-5 me-5"  id="btn-login" value="로그인" >
  
                  <input type="button"  data-bs-toggle="modal" data-bs-target="#exampleModal1" style="width:80px;height:40px"  class="btn btn-primary fs-5" value="회원가입" >
  
              </div>
  
              <div class="find_password my-div1 fs-5">
                  <a href="/forgot-password">아이디 또는 비밀번호를 잊으셨나요?</a>
              </div>
  
              <div class="login_api my-div">
                  <a href="https://kauth.kakao.com/oauth/authorize?client_id=c60f018c14754ebbc3b0111a23287be3&redirect_uri=http://localhost/kakao/oauth&response_type=code"><img src="/resources/assets/img/kakao_login_medium_narrow.png"></a>
              </div>
  
            
          </form>
      </div>
      </div>
     
    </div>
  </div>
</div>


<!-- Modal -->
<div class="modal fade" tabindex="-1" id="exampleModal1"   aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-lg modal-dialog-centered">
     <div class="modal-content">

      <div class="modal-header mb-5" >
        <h5 class="fs-1 text-center" style="width:1000px;height:px;">회원가입</h5>
        <button type="button" id="modalbtn2" class="btn-close " data-bs-dismiss="modal"  aria-label="Close"></button>
      </div>


      <div class="modal-body">
    <form action="/member/join" method="POST" id="frm">
<div class="col-12  fs-4">

					<button type="button" id="add" class="btn btn-light">프로필사진추가</button>
				</div>
				<div id="result"></div>
   
<div class="col-md-6">
    <label for="inputEmail4" class="form-label fs-4">이름</label>
    <input type="text" class="form-control"  name="memberName"  id="memberName"  >
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label fs-4">아이디</label>
    <input type="text" class="form-control"  name="memberId" id="memberId" placeholder="아이디입력" >
  </div>
<div class="col-md-6">
    <label for="inputEmail4" class="form-label fs-4">비밀번호</label>
    <input type="password" class="form-control"  name="memberPassword"  id="memberPassword" placeholder="6글자 이상" >
	<div id="password-error"></div>
	<div class="invalid-feedback" data-sb-feedback="name:required">Password is required.</div>
</div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label fs-4">비밀번호 확인</label>
  	<input type="password" class="form-control" id="memberPasswordCheck" placeholder="동일한 비밀번호 입력" >
	  <div id="password-eqError"></div>
	  <div class="invalid-feedback" data-sb-feedback="name:required">Password is required.</div>
</div>
   
<div class="col-md-6 ">
    <label for="inputEmail4" class="form-label fs-4">닉네임</label>
    <input type="text" class="form-control "  name="memberNickName"  id="memberNickName" placeholder="중복 불가능" >
  </div>
  <div class="col-md-6">
    <label for="inputPassword4" class="form-label fs-4">Email</label>
    <input type="email" class="form-control"  name="memberEmail" id="memberEmail" placeholder="test@naver.com" >
  </div> 
<div class="col-md-6">
    <label for="inputEmail4" class="form-label fs-4">생년월일</label>
    <input type="date" class="form-control"  name="memberBirth"  id="memberBirth" >
  </div>
  <div class="col-md-6 mb-5">
    <label for="inputPassword4" class="form-label fs-4" >휴대폰 번호</label>
    <input type="text" class="form-control"  name="memberPhone" id="memberPhone" placeholder="010-1234-5678" >
  </div>

			<div class="col-md-6">	
       <input type="button" style="width:100px;height:40px " class="btn btn-primary fs-5 me-5 mw-3"   id="btn" value="회원가입하기" >
				</div>

</form>
      </div>
     
    </div>
  </div>
</div>
<!-- End / header -->
<script type="text/javascript" src="/resources/assets/js/member/memberJoinCheck.js"></script>