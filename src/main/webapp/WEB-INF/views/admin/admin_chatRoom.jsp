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
     <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/nanulogo_ico_convert.ico"> 

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
	background-repeat: no-repeat;
	background-position: center;
	width: 100%;
}

.black-transparent {
	opacity: 50%;
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


.container h1 {
	text-align: left;
	padding: 5px 5px 5px 15px;
	color: #FFBB00;
	border-left: 3px solid #FFBB00;
	margin-bottom: 20px;
}

.roomContainer {
	background-color: #F6F6F6;
	overflow: auto;
}

.roomList {
	border: none;
}

.roomList th {
	border: 1px solid #FFBB00;
	background-color: #fff;
	color: #FFBB00;
}

.roomList td {
	border: 1px solid #FFBB00;
	background-color: #fff;
	text-align: left;
	color: #FFBB00;
}

.roomList .num {
	width: 75px;
	text-align: center;
}

.roomList .room {
	width: 425px;
}

.roomList .go {
	width: 71px;
	text-align: center;
}

button {
	background-color: #FFBB00;
	font-size: 14px;
	color: #000;
	border: 1px solid #000;
	border-radius: 5px;
	padding: 3px;
	margin: 3px;
}

.inputTable th {
	padding: 5px;
}

.inputTable input {
	width: 330px;
	height: 25px;
}

.user-panel img {

	margin: 0px 0px 0px 15px;
}

</style>

<script type="text/javascript">
	var ws;

	$(document).ready(function() {
		getRoom();
		wsOpen();
	})

	function getRoom() {
		$
				.ajax({
					url : "/room/list",
					type : "get",
					success : function(result) {
						if ($(result).length) {
							var content = "<tr><th class='room'>채팅 문의 아이디</th><th class='go'>답변 버튼</th></tr>";
							$(result)
									.each(
											function() {
												content += "<tr id='" + this + "'>";
												content += "<td class='room'>"
														+ this + "</td>";
												content += "<td class='go'><button type='button' onclick='join(\""
														+ String(this)
														+ "\")'>채팅 문의 응대</button></td>";
												content += "</tr>";
											})
							$("#roomList").empty().append(content);
						} else {
							
							var content = "";
							content += "<tr><td class='room' align='center'>채팅 문의내역이 없습니다</td></tr>";
							$("#roomList").append(content);
							
							
						}
					},
					error : function(e) {
						console.log(e);
					}
				});
	}

	function wsOpen() {
		ws = new WebSocket("ws://" + location.host + "/chatting/admin");
		wsEvt();
	}

	function wsEvt() {
		ws.onopen = function(data) {
		}

		ws.onmessage = function(data) {
			//메시지를 받으면 동작
			var msg = data.data;
			console.log(msg);
			if (msg != null && msg.trim() != '') {
				var d = JSON.parse(msg);
				if (d.type == "getId") {
					var si = d.sessionId != null ? d.sessionId : "";
					if (si != '') {
						$("#sessionId").val(si);
					}
				} else if (d.type == "alert") {
					if (d.msg == "enter") {
						if (d.sessionId == $("#sessionId").val()) {
							
						} else {
							var content = "";
							content += "<tr id=" + d.username + ">";
							content += "	<td class='room'>" + d.username
									+ "</td>";
							content += "	<td class='go'><button type='button' onclick='join(\""
									+ d.username + "\")'>참여</button></td>";
							content += "</tr>";
							$("#roomList").append(content);
						}
					} else {
						$("#" + d.username).remove();
					}

				} else {
					console.warn("unknown type!")
				}
			}
		}
	}

	function join(username) {
		window.open("/chat/" + username, username, "width=560px, height=800px");
	}
</script>

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
            <a href="/admin/member" class="nav-link">
              <i class="nav-icon fas fa-users"></i>
              <p>회원 관리</p>
            </a>
          </li>
          
          <li class="nav-item">
            <a href="#" class="nav-link active" data-toggle="tab">
              <i class="fas fa-comment-dots nav-icon"></i> 
              <p>채팅 관리</p>
            </a>
          </li>
          
          <li class="nav-item"><%-- ${pageContext.request.contextPath}/admin/item --%>
            <a href="#chat" class="nav-link" data-toggle="tab">
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
                    	<div class="tab-content">
                    		<div class="tab-pane fade show active" id="chat">
								<div class="charity-fancy-title " style=" margin:60px 0px 60px 0px;">
									<h2> 채팅방 관리 </h2>
								</div> 
						        <!--// volunteer-form \\-->
						        <form class="charity-volunteer-form">
						        <div id="roomContainer" class="roomContainer">
									<table class="table taWWble-striped projects" id="roomList" class="roomList">
									</table>
									</div>
						        </form>
						<!--// volunteer-form \\-->
							</div>
						</div>
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
			alert("블랙리스트로 변경되었습니다");
	});
	
	$("#nonebklist").click(function(event){
		alert("블랙리스트가 해제되었습니다");
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
