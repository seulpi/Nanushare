<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="en">

<head>

    <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Charity</title>

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
	
	<!-- SIDE BAR 1 CSS -->
    <link rel="stylesheet" href="/resources/sidebar/css/styles.css">
    
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<style>
   	/* 	.bar-move {
   		transform: translateY(-150px);
   		transition-duration: 2s;
   		transition-timing-function: linear;
   		}
     */
     
    </style>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.22/css/jquery.dataTables.css">
	<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.js"></script>
 	
	


</head>

<body>
     <!-- Header -->
    <header id="charity-header" class="charity-header-one" style="position:relative;z-index:2">
     
        <!-- Top Strip -->
        <div class="charity-top-strip">
        <aside ><a href="${pageContext.request.contextPath}/main" class="charity-logo" style="width:200px;height:100px; margin: 0px 0px 0px 20px;"><img src="/resources/nanulogo.png" alt=""></a></aside>
            <div class="container">
                <div class="row">
                    <aside class="col-12">
                        <div class="float-center">
                            <a href="#menu" class="menu-link active"><span></span></a>
                            <nav id="menu" class="menu charity-navigation">
                            
                                <ul>
                                    <!-- <li class="active"><a href="index.html">Home</a></li> -->
                                    <li style="padding: 0px 40px 0px 70px"><a href="#" style="font-size: 20px;">나누셰어란?</a>
                                        <ul class="children">
                                            <li><a href="event-list.html">나누셰어 소개</a></li>
                                            <li><a href="event-grid.html">찾아오셰어</a></li>
                                        <!--     <li><a href="event-detail.html">Event Detail</a></li> -->
                                        </ul>
                                    </li>
                                    <li style="padding: 0px 40px 0px 30px"><a href="#" style="font-size: 20px;">나눔함 안내</a>
                                       <!--  <ul class="children">
                                            <li><a href="cause-list.html">Cause List</a></li>
                                            <li><a href="cause-grid.html">Cause Grid</a></li>
                                            <li><a href="cause-detail.html">Cause Detail</a></li>
                                        </ul> -->
                                    </li>
                                    <li style="padding: 0px 40px 0px 30px"><a href="#" style="font-size: 20px;">나누기</a>
                                        <ul class="children">
                                            <li><a href="blog-large.html">물품 나누기</a></li>
                                            <li><a href="blog-medium.html">돈기부여하기</a></li>
                                            <!-- <li><a href="blog-detail.html">Cause Detail</a></li> -->
                                        </ul>
                                    </li>
                                    <li style="padding: 0px 40px 0px 30px"><a href="#" style="font-size: 20px;">나눔 인증</a>
                                       <!--  <ul class="children">
                                            <li><a href="team-grid.html">Team Grid</a></li>
                                            <li><a href="team-classic.html">Team Classic</a></li>
                                            <li><a href="team-detail.html">Team Detail</a></li>
                                        </ul> -->
                                    </li>
                                    <li style="padding: 0px 40px 0px 30px"><a href="#" style="font-size: 20px;">이벤트</a>
                                        <ul class="children">
                                            <li><a href="about.html">출석체크</a></li>
                                            <li><a href="prayer-list.html">테스트</a></li>
                                            <li><a href="prayer-grid.html">게임</a></li>
                                           <!--  <li><a href="prayer-detail.html">Prayer De1tail</a></li>
                                            <li><a href="404.html">404 Error</a></li>
                                            <li><a href="search-result.html">Search Result</a></li> -->
                                        </ul>
                                    </li>
                                    <li style="padding: 0px 40px 0px 30px"><a href="contact-us.html" style="font-size: 20px;">더하기</a>
                                     	<ul class="children">
                                            <li><a href="about.html">공지사항</a></li>
                                            <li><a href="prayer-list.html">문의하기</a></li>
                                    	</ul>
                                    </li>	
                              
                         
                                </ul>
                               <!--  <span class="float-right">
                                    <a href="#" class="charity-strip-btn charity-bgcolor" style="width:100px;height:30px;">Sign up</a>
                          			<a href="#" class="charity-strip-btn charity-bgcolor" style="width:100px;height:30px;">Sign in</a>
                                </span> -->
                             
                            </nav>
                            
                         <!--    <ul class="charity-header-options" style="text-align: center">
                                <li><a href="#" data-toggle="modal" data-target="#searchModal"><i class="fas fa-search"></i></a></li>
                                <li><a href="#"><i class="fab fa-opencart"></i></a> <div class="charity-cart-box"> <p>No products in the cart.</p> </div> </li>
             
                                <li> <a href="#" class="charity-strip-btn charity-bgcolor" style="width:100px;height:30px;">Sign up</a></li>
                          		<li><a href="#" class="charity-strip-btn charity-bgcolor" style="width:100px;height:30px;">Sign in</a></li>
                                
                            </ul>
                             -->
                          
                        </div>
                        
                    </aside>
                    
                  
            <!--     <aside class="col-12"> 
                        <div class="float-right">
                          <ul class="charity-social-network">
                              <li><a href="#" class="fab fa-facebook-f"></a></li>
                              <li><a href="#" class="fab fa-google"></a></li>
                              <li><a href="#" class="fab fa-pinterest-p"></a></li>
                              <li><a href="#" class="fab fa-linkedin-in"></a></li>
                              <li><a href="#" class="fab fa-twitter"></a></li>
                          </ul>
                          <a href="#" class="charity-strip-btn charity-bgcolor" >Sign up</a>
                          <a href="#" class="charity-strip-btn charity-bgcolor">Sign in</a>
                         
                        </div>
                    </aside> -->
                </div>
            </div>
            <aside>
            	<a href="#" class="charity-strip-btn charity-bgcolor" style="width:70px;height:40px; white-space: nowrap; padding: 10px 0px 0px 6px; margin: -75px 50px 0px 0px;">Sign up</a>
				<a href="#" class="charity-strip-btn charity-bgcolor" style="width:70px;height:40px; white-space: nowrap; padding: 10px 5px 0px 10px; margin: -75px 140px 0px 0px;">Sign in</a>
			</aside>
        </div>
        <!-- Top Strip -->
    </header>
    <!-- Header -->


    <!-- Banner -->
    <div class="charity-subheader">
        <span class="black-transparent"></span>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <h1> 문의 게시판 </h1>
                </div>
            </div>
        </div>
    </div>
   
    <!-- Main Sidebar Container
 		 <aside class="main-sidebar sidebar-dark-primary elevation-4"> -->
    <!-- Brand Logo 
    <a href="index3.html" class="brand-link">
      <img src="/resources/nanulogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
      <span class="brand-text font-weight-light"> 이벤트 </span>
    </a> -->
     <!-- Sidebar Menu 
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
    -->
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library 
         
          <li class="nav-item">
            <a href="/resources/pages/widgets.html" class="nav-link">
              <i class="nav-icon fas fa-th"></i>
              <p>
                출석체크
              </p>
            </a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-chart-pie"></i>
              <p>
                테스트
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="/resources/pages/charts/chartjs.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 기부 성향 테스트 </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/resources/pages/charts/flot.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 동물상 테스트 </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="/resources/pages/charts/inline.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 타로 운세 </p>
                </a>
              </li>
            </ul>
          </li>
          
           <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-tree"></i>
              <p>
                게임
                <i class="fas fa-angle-left right"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="pages/UI/general.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 퍼즐 맞추기 </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/icons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 테트리스 </p>
                </a>
              </li>
              <li class="nav-item">
                <a href="pages/UI/buttons.html" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p> 로또 맞추기 </p>
                </a>
              </li>
            </ul>
          </li>-->
          
    <!-- Banner -->
	   <div class="l-navbar" id="navbar">
        <nav class="nav">
            <div>
                <div class="nav__brand">
                    <ion-icon name="menu-outline" class="nav__toggle" id="nav-toggle"></ion-icon>
                    <a href="#" class="nav__logo"> 더하기 </a>
                </div>
                <div class="nav__list">
                    <a href="#" class="nav__link active">
                        <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name"> 공지사항 </span>
                    </a>
                </div>  
				<div class="nav__list">
                    <a href="#" class="nav__link active2">
                        <ion-icon name="calendar-outline" class="nav__icon"></ion-icon>
                        <span class="nav_name"> 문의하기 </span>
                    </a>
                </div>  
        </nav>
    </div>
    
    <!-- Content -->
    <div class="charity-main-content">

        <!-- Main Section -->
        <div class="charity-main-section">
            <div class="container">
                <div class="row">

<div class="jumbotron jumbotron-fluid">
  			
	</div>

	<div>
		
	</div>

	<table class="table table-hover">
		<tr>
			<th>번호</th>
			<th>글쓴이</th>
			<th>제목</th>
			<th>날짜</th>
			<th>조회수</th>
		</tr>
			
		<c:forEach items="${list}" var="dto">
        	<tr>
            	<td>${dto.b_index}</td>
				<td>${dto.member_id}</td>
				<td>
					<c:forEach begin="1" end="${dto.bcat_num}">[Re]</c:forEach>
					<a href="${pageContext.request.contextPath}/restful/board/${dto.b_index}">${dto.btitle}</a></td>
				<td>${dto.bdate}</td>
				<td>${dto.bhit}</td>
       	   </tr>
       </c:forEach>  	   
	</table>
	
	<div class="container" align="center"><!--  -->
		<ul class="pagination">
			<c:if test="${pageMaker.prev}">
				<li class="page-item">
					<a href="board${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a>
				</li>
			</c:if>
		
			<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<c:out value="${pageMaker.cri.pageNum == idx?'':''}" />
				<li class="page-item">
					<a href="board${pageMaker.makeQuery(idx)}">${idx}</a>
				</li>
			</c:forEach>
				
			<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
				<li class="page-item">
				 	<a href="board${pageMaker.makeQuery(pageMaker.endPage +1)}">다음</a>
				</li>
			</c:if>
		</ul>
	</div>
	
	<div align="center">
		<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
    		검색
  		</button>
  		<button type="button" class="btn btn-primary" onclick="location.href = '${pageContext.request.contextPath}/restful/board/write'">
				글쓰기
		</button>	
  		<br>
	</div>


    </div> 
    <!-- Content -->

    <!-- Footer -->
    <footer id="charity-footer" class="charity-footer-one">

        <!-- Footer Newslatter -->
        <div class="charity-newslatter">
            <div class="container">
                <div class="row">
                    <aside class="col-md-6">
                        <h2>고액 기부 & 정기 기부 문의</h2><!-- <h3 style="margin-left: 325px; margin-top: -30px;">"Donate Contact"</h3> -->
                        <p>고액으로 기부하시거나 정기 기부를 문의하실 분은<br> 나누셰어 공식 번호로 연락 또는 메일을 남겨주세요:D</p>
                    </aside>
                    <aside class="col-md-6">
                        <form>
                            <input type="text" placeholder="e-mail을 남겨주시면 기부 관련 메일을 보내드립니다" style="width: 400px; margin-left: -30px;">
                            <label>
                                <input type="submit" value="e-mail 전송">
                                <i class="far fa-paper-plane"></i>
                            </label>
                        </form>
                    </aside>
                </div>
            </div>
        </div>
        <!-- Footer Newslatter -->
        
        <!-- Footer Widget -->
        <div class="charity-footer-widget">
            <div class="container">
                <div class="row">
                    <aside class="col-md-4 widget widget_usefull_links">
                    
                        <div class="charity-footer-title"> <h2>Quick Links</h2> 
                        </div>
                        <ul>
                            <li><a href="#">나누셰어란</a></li>
                            <li><a href="#">나눔함 안내</a></li>
                            <li><a href="#">물품 나누기</a></li>
                            <li><a href="#">돈기부여하기</a></li>
                            <li><a href="#">나눔인증</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">문의하기</a></li>
                        </ul>
                    </aside>
                    <aside class="col-md-4 widget widget_recent_news">
                        <div class="charity-footer-title"> <h2>Recent News</h2> </div>
                        <ul>
                            <li>
                                <figure><a href="#"><img src="/resources/nanulogo.png" alt=""></a></figure>
                                <div class="widget_recent_news_text">
                                    <h6><a href="https://www.ytn.co.kr/_ln/0103_202103202243071761">점점 줄어드는 현금 기부...<br>'QR 기부'까지 등장</a></h6>
                                    <span>20 March, 2021</span>
                                </div>
                            </li>
                            <li>
                                <figure><a href="#"><img src="/resources/nanulogo.png" alt=""></a></figure>
                                <div class="widget_recent_news_text">
                                    <h6><a href="https://www.donga.com/news/Economy/article/all/20210317/105918758/1">기업이익 사회에 환원하는<br> 기부천사</a></h6>
                                    <span>18 March, 2021</span>
                                </div>
                            </li>
                        </ul>
                    </aside>
                    <aside class="col-md-4 widget widget_gallery">
                        <div class="charity-footer-title"> <h2>Our Share</h2> </div>
                        <ul>
                           <!--  <li><a data-fancybox="gallery" href="/resources/picture/all.jpg"><img src="/resources/picture/all.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="/resources/picture/si.png"><img src="/resources/picture/si.png" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="/resources/picture/sb.png"><img src="/resources/picture/sb.png" alt=""> <i class="fa fa-plus"></i> </a></li> -->
                            <li><a data-fancybox="gallery" href="/resources/picture/ji.png"> <img src="/resources/picture/ji.png" alt=""><i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="/resources/picture/hj.png"><img src="/resources/picture/hj.png" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="/resources/picture/hs.png"><img src="/resources/picture/hs.png" alt=""> <i class="fa fa-plus"></i> </a></li>
                        </ul>
                    </aside>
                </div>
                <!-- CopyRight -->
                <div class="charity-copyright">
                    <a href="#" class="back-top charity-bgcolor"><i class="fa fa-angle-up"></i></a>
                    <p><a href="#">이용약관</a> &nbsp; &nbsp;<a href="#">개인정보처리방침</a>&nbsp; &nbsp; <a href="#">이메일집단수집거부</a>&nbsp; &nbsp;<a href="#">오시는길</a>&nbsp; &nbsp;<a href="#">문의</a>&nbsp; &nbsp;<a href="#">사이트맵</a></p><p style="margin-left: 270px;">Â© 2021, All Right Reserved - by NanuShare</p><br>
                    <p style="margin-left: 0px;"> <i class="fa fa-map-marker-alt"></i> &nbsp;(우)03164 서울특별시 종로구 종로2가 종로69</p> <p> &nbsp; &nbsp;<i class="fa fa-phone"  style="transform: rotate(90deg);"></i> &nbsp;대표전화 02-722-1481</p>
                    
                    <!-- <ul>
                    	<li><a href="#">이용약관</a></li>s
                     
                    </ul> -->
                </div>
                <!-- CopyRight -->
            </div>
        </div>
        <!-- Footer Widget -->

    </footer>
    <!-- Footer -->

    <!-- Search Modal -->
    <div class="modal fade searchmodal" id="searchModal" tabindex="-1" role="dialog">
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

    <!-- jQuery -->
    <script src="/resources/charity/script/jquery.js"></script>
    <script src="/resources/charity/script/popper.min.js"></script>
    <script src="/resources/charity/script/bootstrap.min.js"></script>
    <script src="/resources/charity/script/slick.slider.min.js"></script>
    <script src="/resources/charity/script/progressbar-main.js"></script> <!-- progressbar 복붙해서 사용  -->
    <script src="/resources/charity/script/fancybox.min.js"></script>
    <script src="/resources/charity/script/jquery.countdown.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="/resources/charity/script/jquery.jplayer.js"></script>
    <script src="/resources/charity/script/jplayer.playlist.js"></script>
    <script src="/resources/charity/script/functions-main.js"></script> <!-- fuctions 복붙해서 사용 -->
    
    <!-- IONICONS -->
    <script src="https://unpkg.com/ionicons@5.2.3/dist/ionicons.js"></script>
    
    <!-- JS -->
    <script src="/resources/sidebar/js/main.js"></script>
    
    <!-- jQuery -->
<script src="/resources/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="/resources/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->


</body>

</html>
                      