<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>



 <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
  <!-- Font Awesome Icons -->
  <link rel="stylesheet" href="/resources/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="/resources/AdminLTE-master/dist/css/adminlte.min.css">

<html>
<head>

<meta name="_csrf" content="${_csrf.token}">
<meta name="_csrf_header" content="${_csrf.headerName}">


<title>Admin Page</title>

 <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Charity Team Detail</title>

    <!-- CSS -->
    <link rel="stylesheet" href="/resources/charity/css/bootstrap.css">
    <link rel="stylesheet" href="/resources/charity/css/fontawesome-all.css">
    <link rel="stylesheet" href="/resources/charity/css/flaticon.css">
    <link rel="stylesheet" href="/resources/charity/css/slick-slider.css">
    <link rel="stylesheet" href="/resources/charity/css/fancybox.css">
    <link href="/resources/charity/css/jplayer.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/charity/css/style.css">
    <link rel="stylesheet" href="/resources/charity/css/color.css">
    <link rel="stylesheet" href="/resources/charity/css/responsive.css">

	<!-- Google Font: Source Sans Pro -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700&display=fallback">
	<!-- Font Awesome Icons -->
	<link rel="stylesheet" href="/resources/AdminLTE-master/plugins/fontawesome-free/css/all.min.css">
	<!-- IonIcons -->
	<link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
	<!-- Theme style -->
	<link rel="stylesheet" href="/resources/AdminLTE-master/dist/css/adminlte.min.css">
	  
  	<!--탭처리2  -->
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
	<!-- Admin style -->
  	<link rel="stylesheet" href="/resources/admin/admin_style.css">
  	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/nanulogo_ico_convert.ico"> 
  	
  	<!-- sweet alert cdn : https://sweetalert.js.org/guides/ -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<style>
body {
	background-color: f9f9fb;
} 
.charity-simple-blog-btn {
	border: 0;
}

​h3 {
	text-align: center;
}

#forimg {
	background-image: url('/resources/banner_imgs/admin_banner.png');
	background-repeat:no-repeat;
	background-position: center;
	width:100%;
	
}
.black-transparent {
	opacity:50%;
}

.twobox {
	text-color: 424242;
	width: 200px;
	height: 100px;
	border-radius: 95px;
	text-align: center;
	margin: 0 auto;
	font-size: 14px;
	vertical-align: middle;
	line-height: 150px;
}

.user-panel img {

	margin: 0px 0px 0px 15px;
}


</style>

</head>
<body class="hold-transition sidebar-mini">
 
   <%@ include file="/WEB-INF/views/mainMap/mainHeader.jsp" %>
    
    <!-- Banner -->
    <div id="forimg" class="charity-subheader">
       <span class="black-transparent"></span>
        <div class="container">
            <div class="row">
                <div class="col-md-12"> 
                </div>
            </div>
        </div>
    </div>
    <!-- Banner -->
	
    <!-- Content -->
    <div class="charity-main-content">
   
<!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light" style="margin-top: -50px;">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
  
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->

  <aside class="main-sidebar sidebar-dark-primary elevation-4">  

    <!-- Sidebar -->
    <div class="sidebar">
      <!-- Sidebar user panel (optional) -->
      <div class="user-panel mt-3 pb-3 mb-3 d-flex">
          <img src="/resources/AdminLTE-master/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
        <div class="info">
        <sec:authorize access="hasRole('ADMIN')"> 
	          <c:forEach items="${username}" var="username">
		         <a href="#" class="d-block">${username}님</a>
		     </c:forEach> 
	     </sec:authorize>
        </div>
      </div>
      
      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
          <li class="nav-item">
            <a href="/admin/stat" class="nav-link">
             <i class="nav-icon fas fa-donate"></i>
              <p>후원금 관리</p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="/admin/member" class="nav-link active">
              <i class="nav-icon fas fa-users"></i>
              <p>회원 관리</p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="/admin/room" class="nav-link">
              <i class="fas fa-comment-dots nav-icon"></i>
              <p>채팅 관리</p>
            </a>
          </li>
          
          <li class="nav-item"><%-- ${pageContext.request.contextPath}/admin/item --%>
            <a href="#" class="nav-link" data-toggle="tab">
              <i class="nav-icon fas fa-box-open"></i>
              <p>재고 관리<i class="right fas fa-angle-left"></i></p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/admin/headItem" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>본사 재고</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/admin/branchItem" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>지점 재고</p>
                </a>
              </li>
             </ul>
          </li>
          
           <li class="nav-item">
            <a href="#" class="nav-link" data-toggle="tab">
              <i class="nav-icon fas fa-th"></i>
              <p>게시판 관리<i class="right fas fa-angle-left"></i></p>
            </a>
            
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/board/notice" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>공지사항</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/board/qna" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>문의게시판</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/board/shows/list" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p>인증게시판</p>
                </a>
              </li>
             </ul>
          </li>
        </ul>
      </nav>
      <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
  </aside>

        <!-- Main Section -->
        <div class="charity-main-section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
							<div class="charity-fancy-title " style=" margin:60px 0px 60px 0px;">
								<h2> 회원 관리 </h2>
							</div> 
							
								<div class="container">
									<div class="row">
										<div class="col">
											<ul class="nav nav-tabs nav-justified">
												<li class="nav-item">
													<a class="nav-link active" data-toggle="tab" href="#info">기본정보</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="/admin/member/itemdona?member_id=${memberView.member_id}">물품기부내역</a> 
												</li>
												<li class="nav-item">
													<a class="nav-link" href="/admin/member/moneydona?member_id=${memberView.member_id}">돈기부여내역</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="/admin/member/point?member_id=${memberView.member_id}">포인트내역</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" href="/admin/member/qna?member_id=${memberView.member_id}">문의내역</a>
												</li>
											</ul>
											
											<div class="tab-content">
												<div class="tab-pane fade show active" id="info">
						                            <!--// volunteer-form \\-->
						                            <form class="charity-volunteer-form" action="${pageContext.request.contextPath}/admin/member_bk" method="post">
							                          <table class="table taWWble-striped projects">
							                          	<tr>
							                               <th bgcolor="a5a5a5">아이디</th>
							                               <td><input type="hidden" value="${memberView.member_id}" name="member_id">${memberView.member_id}</td>
							                            </tr>
							                            
							                            <tr>
							                               <th bgcolor="a5a5a5">이름</th>
							                               <td>${memberView.name}</td>
							                            </tr>
							                            
							                            <tr>
							                               <th bgcolor="a5a5a5">가입경로</th>
							                               <td>${memberView.signuppath}</td>
							                            </tr>
							                            
							                            <tr>
							                               <th bgcolor="a5a5a5">후원금기부횟수</th>
							                               <td>${memberView.dntcnt}</td>
							                            </tr>
							                            
							                            <tr>
							                               <th bgcolor="a5a5a5">물품기부횟수</th>
							                               <td>${memberView.itemdntcnt}</td>
							                            </tr>
							                            
							                            <tr>
							                               <th bgcolor="a5a5a5">블랙리스트 여부</th>
															
     														<!-- <input type="radio" name="testInput" value="test2"/> -->
							                               <td>
								                               <label class="radio-inline">
								                               	<input type="radio" id="bklistCheck" name="bklist" value="Y" <c:if test="${memberView.bklist eq 'Y'}">checked="checked"</c:if>/>Y
								                               </label>	

								                               <label class="radio-inline">
																<input type="radio" id="nonebklist" name="bklist" value="N" <c:if test="${memberView.bklist eq 'N'}">checked="checked"</c:if>/>N
								                               </label>
								                             <!--   <span id="checkOk" style="display:none; color:red;">블랙리스트 체크가 완료되었습니다</span> -->
								                           </td>
							                               
							                            </tr>
							                           </table>
							                           
														<div class="d-flex justify-content-center">
															<button type="submit" class="charity-simple-blog-btn" >회원 정보 수정</button>
							                           		<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
						                            	</div>
						                            </form>
						                                   
						                        <!--// volunteer-form \\-->
												</div>
											</div>
										</div>
									</div>
								</div>
							
						</div>
					 </div>
					 
					<div class="row">
						<div class="twobox" class="col-md-4">
							<button type="button" onClick="history.back()" class="charity-donation-parallex-btn w-30 text-black stats"> <i class="fa fa-angle-double-left">&nbsp;&nbsp;이전 페이지</i></button>
						</div>
						
						<div class="twobox" class="col-md-4">
							<button type="button" onClick="location.href='/admin/member'" class="charity-donation-parallex-btn w-30 text-black stats"><i class="fas fa-list"></i> &nbsp;&nbsp;회원목록보기</button>
						</div>
					</div>
				</div>
			</div>
        <!-- Main Section -->

    </div>
    <!-- Content -->

	
	   <%@ include file="/WEB-INF/views/mainMap/mainFooter.jsp"%>

 <!-- jQuery -->
   <!--  <script src="/resources/charity/script/jquery.js"></script>
    <script src="/resources/charity/script/popper.min.js"></script> -->
    <script src="/resources/charity/script/bootstrap.min.js"></script>
    <script src="/resources/charity/script/slick.slider.min.js"></script>
    <script src="/resources/charity/script/progressbar-main.js"></script> <!-- progressbar 복붙해서 사용  -->
    <script src="/resources/charity/script/fancybox.min.js"></script>
    <script src="/resources/charity/script/jquery.countdown.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="/resources/charity/script/jquery.jplayer.js"></script>
    <script src="/resources/charity/script/jplayer.playlist.js"></script>
    <script src="/resources/charity/script/functions-main.js"></script> <!-- fuctions 복붙해서 사용 -->
    
 
<!-- Bootstrap -->
<script src="/resources/AdminLTE-master/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- AdminLTE App -->
<script src="/resources/AdminLTE-master/dist/js/adminlte.min.js"></script>

<!-- <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css"> -->
<!-- 위에 script를 추가하면 덮여져서인지 datepicker가 팝업이 아예 안됨 
https://stackoverflow.com/questions/36207203/uncaught-typeerror-datepicker-is-not-a-functionanonymous-function-->
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>  
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>


<script>

$(document).ready(function() {
	$("#bklistCheck").click(function(event){
		swal("블랙리스트로 변경되었습니다");
	});
	
	$("#nonebklist").click(function(event){
		swal("블랙리스트가 해제되었습니다");
});

   
});

/* function bkCheck() {  //체크했을때 밑에 바로 글씨 나오게 하는 함수
  var checkBox = document.getElementById("bklistCheck");
  var text = document.getElementById("checkOk");
  if (checkBox.checked == true){
    text.style.display = "block";
  } else {
     text.style.display = "none";
  }
} */
</script>


</body>
</html>
