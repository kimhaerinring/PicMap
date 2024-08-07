<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Home</title>
<!--
Mercury travel - free HTML5 templates!
by Awe7 (http://awe7.com/freebies)
-->
<c:import url="../../template/header_css.jsp"></c:import>
<link rel="stylesheet" href="/resources/assets/css/ping.css">

<!-- include summernote css/js-->
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css" rel="stylesheet">


<!-- summernote -->
	<!-- jQuery -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>

<script src="/resources/summernote/summernote-lite.js"></script>
<script src="/resources/summernote/summernote-ko-KR.js"></script>
<link rel="stylesheet" href="/resources/summernote/summernote-lite.css">

</head>

<body>
  <div class="page-wrap" id="root">

    <c:import url="../../template/header_nav.jsp"></c:import>

    <!-- Content-->
    <div class="">

      <!-- hero -->
      <div class="hero" id="id-1">
        <div class="hero__wrapper">

          <!-- swiper__module swiper-container -->
          <div class="swiper__module swiper-container awe-skin-dark hero__main_slider" data-options='{"spaceBetween":0}'>
            <div class="swiper-wrapper">
              <div class="hero__item" style="background-image: url('/resources/assets/img/hero/1.jpg');">
                <img src="/resources/assets/img/hero/1.jpg" alt="" />
                <div class="hero__box_info">
                  <div class="container">
                    <h2 class="hero__title">지도</h2>
                    <p class="hero__info">
                      <span>3 Day 2 Night</span><span>Tokyo</span><span>709 Review</span>
                    </p>
                  </div>
                </div>
              </div>

            </div>
            <div class="swiper-button-custom">
              <div class="swiper-button-prev-custom"></div>
              <div class="swiper-button-next-custom"></div>
            </div>
          </div>
          <!-- End / swiper__module swiper-container -->
        </div>
      </div>
      <!-- End / hero -->


      <h5>${board}게시글write페이지</h5>


      <%-- 			<div>
				<form method="post">
					<div>
						<table>
							<thead>
								<input type="text" value="${memberNum}" id="" name="" hidden>
								<tr>
									<th>제목</th>
									<th><input type="text" id="boardTitle" name="boardTitle" value="${dto.boardTitle}"></th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><textarea id="boardContent" name="boardContent">${dto.boardContent}</textarea></td>
								</tr>
							</tbody>
						</table>
						<button type="submit">작성</button>
					</div>
				</form>
			</div> --%>








    </div>
    <!-- End / Content-->

    <div class="container mt-5">
      <div class="row justify-content-center">
        <div class="mb-3 col-8">
          <form method="post" enctype="multipart/form-data">
            <input type="hidden" value="${dto.boardNum}" name="boardNum">
            <table class="table table-bordered">
              <tbody>
                <tr>
                  <th><span class="fs-4">제목</span></th>
                  <th colspan="2"><input type="text" class="form-control fs-4" id="boardTitle" name="boardTitle" value="${dto.boardTitle}"></th>
                </tr>
                <tr>
                  <th><span class="fs-4">작성자</span></th>
                  <td><span class="fs-4">${member.memberId}</span></td>
                </tr>
                <tr>
                  <th rowspan="3"><span class="fs-4">내용</span></th>
                  <th colspan="2"><input type="file" class="form-control fs-4" id="travelFiles" name="files" onchange="readURL(this)" style="display:none;"style="display:none;"> <label for="travelFiles" class="fs-4 btn btn-secondary">게시글 사진을 추가하세요</label> <img id="travelPreview" class="mt-3" style="width: 100%; height: 100%; object-fit: cover;" /></th>
                </tr>
                <tr>
                  <td colspan="2"><button id="modalButton" type="button" class="btn btn-secondary me-2 fs-4" data-bs-toggle="modal" data-bs-target="#mapModal">위치</button><span id="locSpan" class="fs-4"></span></td>
                </tr>
                <tr>
                  <td colspan="2"><textarea class="form-control fs-4" id="editor" name="boardContent" style="height: 100px;">${dto.boardContent}</textarea></td>
                </tr>
              </tbody>
            </table>
			<div id="pingFrm">
				<input type="hidden" id="loc" name="address"> <input type="hidden" id="lat" name="latitude"> <input type="hidden" id="lon" name="longitude">
    		</div>
    		<div>
    			<input type="hidden" name="rootBoard" value="${dto.rootBoard}">
    			<input type="hidden" name="parentBoard" value="${dto.parentBoard}">
    			<input type="hidden" name="childBoard" value="${dto.childBoard}">
    		</div>
    		
            <div class="text-end">
              <button type="submit" class="btn btn-primary fs-4">등록</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <div>
    <!-- Modal -->
    <div class="modal fade" id="mapModal" tabindex="-1" aria-labelledby="mapModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
          </div>
          <div class="modal-body">

            <div>
              <div class="map_wrap">
                <div id="map" style="width: 100%; height: 100%;"></div>
                <div class="hAddr">
                  <span id="centerAddr"></span>
                </div>
              </div>
            </div>
          </div>
          <div class="modal-footer text-end">
            <div>
              <input type="text" id="searchPing">
              <button type="button" class="btn btn-primary mt-3" id="searchButton">검색</button>
              <button type="button" class="btn btn-primary mt-3" id="mapButton" data-bs-dismiss="modal">등록</button>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>

  <c:import url="../../template/footer.jsp"></c:import>
  <script type="text/javascript" src="/resources/assets/js/board/boardImage.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>

  <script>
			$('#editor').summernote(
					{
						placeholder : '게시글을 입력하세요',
						tabsize : 3,
						height : 200,
						toolbar : [ [ 'style', [] ],
								[ 'fontsize', [ 'fontsize' ] ],
								[ 'font', [ 'bold', 'underline', 'clear' ] ],
								[ 'color', [ 'color' ] ],
								[ 'para', [ 'ul', 'ol', 'paragraph' ] ],
								[ 'table', [] ], [ 'insert', [] ],
								[ 'view', [ 'help' ] ] ],
						fontSizes : [ '8', '9', '10', '11', '12', '13', '14',
								'15', '16', '17', '18', '19', '20', '24', '30',
								'36', '48', '64', '82', '150' ],
						callbacks: {
						    onImageUpload: function(files) {
						      // upload image to server and create imgNode...
						    }
						  }
					});
			$('#editor').summernote('fontSize', 16);

		</script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script> 
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=4e11955080502d1bac37823f6b7f43b6&libraries=services"></script>
  <script src="/resources/assets/js/ping/ping.js"></script>
  <script src="/resources/assets/js/ping/pingList.js"></script>
  <script src="/resources/assets/js/ping/modal.js"></script>
</body>
</html>

