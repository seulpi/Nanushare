<!-- 혜선_ 물품기부 메인페이지_사용예정 뷰 페이지 _ 수정필요함, 테스트중 03.18-->

<%@ page language="java" contentType="text/html; charset=UTF8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<head>
    <!-- meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>Charity Cause Detail</title>

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
                    <h1>물품 신청 안내</h1>
                    <p>Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero</p>
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
                        <div class="charity-rich-editor charity-cause-detail">
                            <figure class="charity-cause-thumb"><img src="/resources/extra-images/cause-detail-img.png" alt=""></figure>
                            <h3>Africa Children Need More Food</h3>
                            <ul class="charity-cause-options">
                                <li>
                                    <i class="fa fa-clock"></i>
                                    <h6>Remaining Time:</h6>
                                    <span>19 days left</span>
                                </li>
                                <li>
                                    <i class="fa fa-heart"></i>
                                    <h6>Donors:</h6>
                                    <span>23</span>
                                </li>
                                <li>
                                    <i class="fa fa-map-marker-alt"></i>
                                    <h6>Location:</h6>
                                    <span>Cairo,Africa</span>
                                </li>
                                <li></li>
                            </ul>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus sollicitudin arcu a dolor dapibus convallis Mauris eleifend dapibus blandit.</p>
                            <div class="charity-cause-donate">
                                <div class="skillst">
                                    <h6>Raised: <span>$3788</span></h6>
                                    <h6 class="skillst-right">Goal: <span>$5000</span></h6>
                                    <div data-width='90' data-target='95' class="charity-cause-progressbar"></div>
                                </div>
                                <a href="/donation/item/form" class="charity-plan-btn">신청서 작성하기<i class="fa fa-heart"></i></a>
                                <ul class="charity-cause-social">
                                   <li><a href="https://www.facebook.com/" class="fab fa-facebook"></a></li>
                                    <li><a href="https://www.twitter.com/" class="fab fa-twitter"></a></li>
                                    <li><a href="https://www.linkedin.com/" class="fab fa-linkedin"></a></li>
                                    <li><a href="https://www.youtube.com/" class="fab fa-youtube"></a></li>
                                    <li><a href="https://www.vimeo.com/" class="fab fa-vimeo"></a></li>
                                </ul>
                            </div>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed iaculis purus nulla, at rhoncus elit non. Ut luct us libero at laore ncus. Praesent fermentum lacus at nulla hendrerit facilisis. Ut ips us, mollis non sollicitu din quis, lacinia a tellus.</p>
                            <p>Phasellus lobortis mattis dolor ac laoreet. Pellentesque feugiat scelerisque libero, et convallis cidunt at. Aen ean inn luctus, felis in, luctus elit. Aenean fringilla consectetur posuere.</p>
                            <blockquote>Curabitur lacus dui, convallis quis arcu vel, sagittis vulputate elit. Nullam ex libero, imp rdiet  lib ndit ac, tempor ac magna. In finibus libero vitae ex tincidunt pharetr.</blockquote>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed iaculis purus nulla, at rhoncus elit non. Ut luct us libero at laore ncus. Praesent fermentum lacus at nulla hendrerit facilisis. Ut ips us, mollis non sollicitu din quis, lacinia a tellus.</p>
                        </div>
                        <div class="charity-rich-editor">
                            <div class="charity-post-tags">
                                <div class="charity-tags">
                                    <span>Tags:</span>
                                    <a href="404.html">charity </a>
                                    <a href="404.html">/ donation</a>
                                    <a href="404.html"> / needy</a>
                                </div>
                                <div class="charity-blog-social">
                                    <span>Share:</span>
                                    <ul>
                                        <li>
                                            <a href="https://www.facebook.com/" class="fab fa-facebook"></a>
                                        </li>
                                        <li>
                                            <a href="https://www.twitter.com/" class="fab fa-twitter"></a>
                                        </li>
                                        <li>
                                            <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
                                        </li>
                                        <li>
                                            <a href="https://www.youtube.com/" class="fab fa-youtube"></a>
                                        </li>
                                        <li>
                                            <a href="https://www.vimeo.com/" class="fab fa-vimeo"></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="charity-prenxt-post">
                            <ul>
                                <li class="charity-prev-post">
                                    <figure>
                                        <a href="404.html"><img src="/resources/extra-images/post-img1.png" alt=""></a>
                                    </figure>
                                    <div class="charity-prev-artical">
                                        <a href="404.html" class="charity-post-arrow"><i class="fa fa-angle-double-left"></i> Previous Article</a>
                                        <h3><a href="404.html">Duis arcu lectus, interdum quisi sodales</a></h3>
                                    </div>
                                </li>
                                <li class="charity-next-post">
                                    <figure>
                                        <a href="404.html"><img src="/resources/extra-images/post-img2.png" alt=""></a>
                                    </figure>
                                    <div class="charity-next-artical">
                                        <a href="404.html" class="charity-post-arrow">Next Article <i class="fa fa-angle-double-right"></i></a>
                                        <h3><a href="404.html">Duis arcu lectus, interdum quisi sodales</a></h3>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="widget_title"><h2>Admin Post</h2></div>
                        <div class="charity-admin-post">
                            <figure>
                                <a href="404.html"><img src="/resources/extra-images/admin-post-img.png" alt=""></a>
                                <figcaption>
                                    <h6><a href="404.html">Mickey Ror</a></h6>
                                    <span>Founder</span>
                                </figcaption>
                            </figure>
                            <div class="charity-admin-post-text">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas ultricies dolor libero, eu fermentum ante tristique fermentum. Vestibulum maximus ornare facilisis. Etiam id vulp utate dolor. Class aptent taciti sociosqu ad litor.</p>
                                <ul class="charity-admin-social">
                                    <li>
                                        <a href="https://www.facebook.com/" class="fab fa-facebook"></a>
                                    </li>
                                    <li>
                                        <a href="https://www.twitter.com/" class="fab fa-twitter"></a>
                                    </li>
                                    <li>
                                        <a href="https://www.linkedin.com/" class="fab fa-linkedin"></a>
                                    </li>
                                    <li>
                                        <a href="https://www.youtube.com/" class="fab fa-youtube"></a>
                                    </li>
                                    <li>
                                        <a href="https://www.vimeo.com/" class="fab fa-vine"></a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="widget_title"><h2>Campaigns Content</h2></div>
                        <div class="charity-campaign-content">
                            <div class="row">
                                <div class="col-md-7">
                                    <ul class="charity-list-style-one">
                                        <li>Donec eu vehicula eros. Suspendisse convallis augue.</li>
                                        <li>Ut ultricies dignissim venenatis. Mauris nec nibh volu.</li>
                                        <li>Phasellus dapibus, massa ac tempor rutrum</li>
                                        <li>Aliquam ex lorem, feugiat eget dolor in, iaculis ullamc</li>
                                        <li>Nullam rhoncus, nisl id ultrices tristique.</li>
                                    </ul>
                                </div>
                                <div class="col-md-5">
                                    <img src="/resources/extra-images/Campaign-img1.png" alt="" class="charity-campaing-image">
                                </div>
                            </div>
                        </div>
                        <div class="widget_title"><h2>Cause Progress</h2></div>
                        <div class="charity-progress-wrap">
                            <div class="row">
                                <div class="col-md-5">
                                    <p>Nullam sollicitudin orci id velit dapibus preti um. Cras elementum arcu ac neque iaculisid consequat nunc condimentum.</p>
                                    <p>Etiam pharetra diam et sapien ullamcorperw eget porta tortor pulvinar. Nam lobortis, velit in commodo mattis.</p>
                                </div>
                                <div class="col-md-7">
                                    <div class="charity-cause-skillbar">
                                        <div class="skillst">
                                            <h5>Photoshop</h5>
                                            <div data-width='70' data-target='95' class="charity-cause-progressbar"></div>
                                        </div>
                                        <div class="skillst">
                                            <h5>Wordpress</h5>
                                            <div data-width='50' data-target='95' class="charity-cause-progressbar"></div>
                                        </div>
                                        <div class="skillst">
                                            <h5>Designing</h5>
                                            <div data-width='65' data-target='95' class="charity-cause-progressbar"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <aside class="col-md-3">
                        
                        <!-- Widget Search -->
                        <div class="widget widget_search">
                            <div class="widget_title"><h2>Search Here</h2></div>
                            <form>
                                <input type="text" placeholder="Search Here">
                                <input type="submit" value="">
                                <i class="fa fa-search"></i>
                            </form>
                        </div>
                        <!-- Widget Search -->
                        <!--// Widget Caendar \\-->
                        <div class="widget widget_calendar">
                            <div class="widget_title"><h2>Event Calender</h2></div>
                            <table>
                                <caption>January 2017</caption>
                                <thead>
                                    <tr>
                                        <th title="Monday">M</th>
                                        <th title="Tuesday">T</th>
                                        <th title="Wednesday">W</th>
                                        <th title="Thursday">T</th>
                                        <th title="Friday">F</th>
                                        <th title="Saturday">S</th>
                                        <th title="Sunday">S</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td colspan="5"></td><td id="today">1</td><td>2</td>
                                    </tr>
                                    <tr>
                                        <td>3</td><td>4</td><td>5</td><td>6</td><td>7</td><td>8</td><td>9</td>
                                    </tr>
                                    <tr>
                                        <td>10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td>
                                    </tr>
                                    <tr>
                                        <td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td>
                                    </tr>
                                    <tr>
                                        <td>24</td><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td>30</td>
                                    </tr>
                                    <tr>
                                        <td>31</td><td colspan="6"></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <!--// Widget Caendar \\-->
                        <!-- Widget Archive -->
                        <div class="widget widget_archive">
                            <div class="widget_title"><h2>Calender Archives</h2></div>
                            <ul>
                                <li><a href="404.html">13 August 2017</a></li>
                                <li><a href="404.html">28 September 2017</a></li>
                                <li><a href="404.html">19 May 2017</a></li>
                                <li><a href="404.html">03 March 2017</a></li>
                                <li><a href="404.html">28 February 2017</a></li>
                            </ul>
                        </div>
                        <!-- Widget Archive -->
                        <!-- Widget Event -->
                        <div class="widget widget_events">
                            <div class="widget_title"><h2>Upcoming Events</h2></div>
                            <ul>
                                <li>
                                    <time datetime="2008-02-14 20:00">22 Aug</time>
                                    <div class="charity-events">
                                       <h6><a href="event-detail.html">Fusce fibus purus cos vulputate</a></h6>
                                       <a href="event-detail.html"><i class="fa fa-map-marker-alt"></i> 1403 Blackwell Street 9976</a>
                                    </div>
                                </li>
                                <li>
                                    <time datetime="2008-02-14 20:00">13 Sep</time>
                                    <div class="charity-events">
                                       <h6><a href="event-detail.html">Fusce fibus purus cos vulputate</a></h6>
                                       <a href="event-detail.html"><i class="fa fa-map-marker-alt"></i> 1403 Blackwell Street 9976</a>
                                    </div>
                                </li>
                                <li>
                                    <time datetime="2008-02-14 20:00">07 Dec</time>
                                    <div class="charity-events">
                                       <h6><a href="event-detail.html">Fusce fibus purus cos vulputate</a></h6>
                                       <a href="event-detail.html"><i class="fa fa-map-marker-alt"></i> 1403 Blackwell Street 9976</a>
                                    </div>
                                </li>
                             </ul>
                        </div>
                        <!-- Widget Event -->
                        <!-- Widget Gallery -->
                        <div class="widget widget_gallery">
                            <div class="widget_title"> <h2>Our Gallery</h2> </div>
                            <ul>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-1.jpg"><img src="/resources/extra-images/widget-gallery-1.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-2.jpg"><img src="/resources/extra-images/widget-gallery-2.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-3.jpg"><img src="/resources/extra-images/widget-gallery-3.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-4.jpg"><img src="/resources/extra-images/widget-gallery-4.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-5.jpg"><img src="/resources/extra-images/widget-gallery-5.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-6.jpg"><img src="/resources/extra-images/widget-gallery-6.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-7.jpg"><img src="/resources/extra-images/widget-gallery-7.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-8.jpg"><img src="/resources/extra-images/widget-gallery-8.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                                <li><a data-fancybox="gallery" href="extra-images/widget-gallery-6.jpg"><img src="/resources/extra-images/widget-gallery-6.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            </ul>
                        </div>
                        <!-- Widget Gallery -->

                    </aside>
                </div>
            </div>
        </div>
        <!-- Main Section -->

    </div>
    <!-- Content -->

    <!-- Footer -->
    <footer id="charity-footer" class="charity-footer-one">

        <!-- Footer Newslatter -->
        <div class="charity-newslatter">
            <div class="container">
                <div class="row">
                    <aside class="col-md-6">
                        <h2>Sign up for newslatter</h2>
                        <p>Submit your email and stay in tuch by notify our news and stay with us</p>
                    </aside>
                    <aside class="col-md-6">
                        <form>
                            <input type="text" placeholder="Enter Your Email">
                            <label>
                                <input type="submit" value="Subscribe Now">
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
                        <div class="charity-footer-title"> <h2>Quick Links</h2> </div>
                        <ul>
                            <li><a href="#">Causes</a></li>
                            <li><a href="#">Donors</a></li>
                            <li><a href="#">Blogs</a></li>
                            <li><a href="#">Latest News</a></li>
                            <li><a href="#">Testimonials</a></li>
                            <li><a href="#">Volunteers</a></li>
                            <li><a href="#">Gallery</a></li>
                            <li><a href="#">Contact us</a></li>
                            <li><a href="#">Newsletter</a></li>
                            <li><a href="#">Events</a></li>
                        </ul>
                    </aside>
                    <aside class="col-md-4 widget widget_recent_news">
                        <div class="charity-footer-title"> <h2>Recent News</h2> </div>
                        <ul>
                            <li>
                                <figure><a href="#"><img src="extra-images/recent-news-widget-1.jpg" alt=""></a></figure>
                                <div class="widget_recent_news_text">
                                    <h6><a href="#">Praesent sit amet tellus sed qum biben dum faucus</a></h6>
                                    <span>22 Sept, 2016</span>
                                </div>
                            </li>
                            <li>
                                <figure><a href="#"><img src="extra-images/recent-news-widget-2.jpg" alt=""></a></figure>
                                <div class="widget_recent_news_text">
                                    <h6><a href="#">Morbi pulvinar faucibus urna, sit amet euisd nulla.</a></h6>
                                    <span>22 Sept, 2016</span>
                                </div>
                            </li>
                        </ul>
                    </aside>
                    <aside class="col-md-4 widget widget_gallery">
                        <div class="charity-footer-title"> <h2>Our Gallery</h2> </div>
                        <ul>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-1.jpg"><img src="/resources/extra-images/widget-gallery-1.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-2.jpg"><img src="/resources/extra-images/widget-gallery-2.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-3.jpg"><img src="/resources/extra-images/widget-gallery-3.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-4.jpg"><img src="/resources/extra-images/widget-gallery-4.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-5.jpg"><img src="/resources/extra-images/widget-gallery-5.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-6.jpg"><img src="/resources/extra-images/widget-gallery-6.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-7.jpg"><img src="/resources/extra-images/widget-gallery-7.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                            <li><a data-fancybox="gallery" href="extra-images/widget-gallery-8.jpg"><img src="/resources/extra-images/widget-gallery-8.jpg" alt=""> <i class="fa fa-plus"></i> </a></li>
                        </ul>
                    </aside>
                </div>
                <!-- CopyRight -->
                <div class="charity-copyright">
                    <a href="#" class="back-top charity-bgcolor"><i class="fa fa-angle-up"></i></a>
                    <p>Â© 2018, All Right Reserved - by </p>
                    <ul>
                        <li><a href="404.html">Terms and conditions</a></li>
                        <li><a href="404.html">Privacy policy</a></li>
                    </ul>
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
    <script src="/resources/script/jquery.js"></script>
    <script src="/resources/script/popper.min.js"></script>
    <script src="/resources/script/bootstrap.min.js"></script>
    <script src="/resources/script/slick.slider.min.js"></script>
    <script src="/resources/script/progressbar.js"></script>
    <script src="/resources/script/fancybox.min.js"></script>
    <script src="/resources/script/jquery.countdown.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js"></script>
    <script src="/resources/script/jquery.jplayer.js"></script>
    <script src="/resources/script/jplayer.playlist.js"></script>
    <script src="/resources/script/functions.js"></script>
</body>

</html>