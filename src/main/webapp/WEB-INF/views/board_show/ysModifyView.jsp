<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<!-- blog detail 사용 css style도 여기서 찾을 것  .charity-form-btn 생성함 color에도 추가함-->
<head>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <!-- csrf_meta_tag_for_jsp
    https://stackoverflow.com/questions/37383730/how-to-add-csrf-token-to-ajax-request -->
	<meta name="_csrf" content="${_csrf.token}"/>
	<meta name="_csrf_header" content="${_csrf.headerName}"/>
    
    <title>나누셰어 - 나눔인증</title>

    <!-- CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/fontawesome-all.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/flaticon.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/slick-slider.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/fancybox.css">
    <link href="${pageContext.request.contextPath}/resources/charity/css/jplayer.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/color.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/charity/css/responsive.css">
	
	<!-- 웹페이지 탭 로고이미지 삽입  -->
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/nanulogo_ico_convert.ico"> 
	
	<!-- ckeditor -->
	<script src = "${pageContext.request.contextPath}/resources/ckeditor/ckeditor.js"></script>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		$("#modify").submit(function(event){			
			event.preventDefault();
			console.log("modify click");
			
			var board_id = $("#b_index").val(); 					
			var title = $("#btitle").val(); 
			var text = $("#bcontent").val(); 
			
			// csrf
			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			$(document).ajaxSend(function(e, xhr, options) {
				xhr.setRequestHeader(header, token);
			});
			
			var form = {
				b_index : board_id,
				btitle : title,
				bcontent : text
			}
			
			$.ajax({
				type : "PUT",
				url : $(this).attr("action"),
				cache : false,
				dataType: 'text',
				contentType: 'application/json; charset=utf-8',
				data : JSON.stringify(form),
				success : function(result){
					console.log("result : " + result );
						if(result == "SUCCESS") {
							//$(location).attr('href', '${pageContext.request.contextPath}/board/sows/content_view/'+ form.b_index +');
							window.location.href='${pageContext.request.contextPath}/board/shows/content_view/'+ board_id;
							
							swal({
								title : "글 수정 완료" , 
								icon : "success" , 
								button : true 
							});
						}
				},
				error : function(e){
					//alert("오류가 발생했습니다.");
					swal({
						title : "오류가 발생했습니다." , 
						icon : "error" , 
						button : false 
					});
					console.log(e);
				}
			}); // ajax end
		}); // event end
	}); // ready end
</script>
		
	
	
</head>

<body>
    <!-- Header -->
    <%@ include file="/WEB-INF/views/mainMap/mainHeader.jsp"%>
    <!-- Header -->
    
    <!-- Banner -->
    <div class="charity-subheader">
        <span class="black-transparent"></span>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1>나눔 인증</h1>
                    <p>show your support</p>
                </div>
            </div>
        </div>
    </div>
    <!-- Banner -->

    <!-- Content -->
    <div class="charity-main-content">

        <!-- Main Section -->
		<div class="charity-main-section">
			<div class="container">
				<div class="row">
					<div class="col-md-9">
                       <form action="/board/shows/modify" id="modify" method="post" >
                       <input type="hidden" id="b_index" name="b_index" value="${modify_view.b_index}" >
	                       <div class="charity-contact-form">
	                           <h4><span>Title</span><input type="text" id="btitle" name="btitle" value="${modify_view.btitle}"></h4><hr><br>
	                           <%-- <h4>Images</h4>
	                           <figure class="charity-postthumb"><img src="${pageContext.request.contextPath}/resources/charity/extra-images/blog-detail-img.png" alt=""></figure> --%>
	                           <div class="charity-blog-options">
	                                <ul style="float:right">
	                                	<li><i class="fa fa-folder-open"></i>  No. ${modify_view.b_index}</li> 
	                                    <li style="text-indent: 0.3em"><i class="fa fa-calendar"></i><time datetime="2008-02-14 20:00">  ${modify_view.bdate}</time></li>
	                                    <li style="text-indent: 0.3em"><i class="fa fa-comments"></i><a href="404.html">  23 comments</a></li>
	                                    <li style="text-indent: 0.3em"><i class="fa fa-mouse-pointer"></i> 조회수 ${modify_view.bhit}</li>
	                                </ul>
	                           </div>
	                           <h4>Content</h4>
	                           <%-- <p><textarea class="form-control" name="bcontent" rows="20" style="width:100%;">${modify_view.bcontent}</textarea></p><br> --%>
	                           <p><textarea id="bcontent" name="bcontent">${modify_view.bcontent}</textarea></p><br><br>
							  
							   <!-- 에디터 -->
							   <script type="text/javascript">
		                        	var ckeditor_config = {
			        						resize_enaleb : false, //에디터 크기조절 x
			        						height:"450",
			        						enterMode : CKEDITOR.ENTER_BR,
			        						shiftEnterMode : CKEDITOR.ENTER_P,
			        						filebrowserUploadUrl : '<c:url value="${pageContext.request.contextPath}/my/board/shows/imageUpload" />?${_csrf.parameterName}=${_csrf.token}'
		        					};
		                            CKEDITOR.replace('bcontent', ckeditor_config);
		                        </script>
		                        
							   <br><hr>
								<!-- 글삭제는 첨부파일,댓글 다 지워야 가능하다. 수정해야함 -->
	                           <button type="button" class="charity-sub-btn"><i class="fa fa-eraser" onclick="location.href='delete?b_index=${modify_view.b_index}'"> 글삭제</i></button>
							   <button type="submit" id="modify" class="charity-sub-btn"><i class="fa fa-save"> 수정완료</i></button>
							   <button type="button" class="charity-sub-btn"><i class="fa fa-arrow-left"  onclick="location.href='${pageContext.request.contextPath}/board/shows/content_view/${modify_view.b_index}'"> 수정취소</i></button>
							  <!--  <button type="reset" class="charity-sub-btn"><i class="fa fa-undo"> 다시수정하기</i></button> -->
							   <!-- charity-main-btn -->
							   <!-- 버튼에 링크걸기 https://m.blog.naver.com/rain483/220529222723 -->
	                          
	                        </div>
	                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                        
                    	<!--   a href="plist" -->
                        <div style="float: right; margin-right:5px; text-color:2a786b;"> <a href="list" class="fa fa-list-alt" > 나눔 인증 게시판 돌아가기 </a></div>
                        <br><br>
                       
                        <!-- 댓글 보일지 말지 고민중  -->
                        <!-- 댓글 보일지 말지 고민중  -->
                        
                    </div>

                    <!-- 우측 배너  aside -->
					<%@ include file="/WEB-INF/views/board_show/aside.jsp"%>
					<!-- aside end -->
					
                </div>
            </div>
        </div>
        <!-- Main Section -->
		
    </div>
    <!-- Content -->

    <!-- Footer -->
    <%@ include file="/WEB-INF/views/mainMap/mainFooter.jsp"%>
    <!-- Footer -->

    <!-- Search Modal -->
   <!--  <div class="modal fade searchmodal" id="searchModal" tabindex="-1" role="dialog">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-body">
                    <a href="#" class="charity-close-btn" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></a>
                    <form>
                        <input type="text" value="Type Your Keyword" onblur="if(this.value == '') { this.value ='Type Your Keyword'; }" onfocus="if(this.value =='Type Your Keyword') { this.value = ''; }">
                        <input type="submit" value="">
                        <i class="fa fa-search"></i>
                    </form>
                </div>
                
            </div>
        </div>
    </div>
 -->

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath}/resources/charity/script/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/slick.slider.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/progressbar.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/fancybox.min.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/jquery.countdown.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/jquery.jplayer.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/jplayer.playlist.js"></script>
    <script src="${pageContext.request.contextPath}/resources/charity/script/functions.js"></script>
</body>

</html>