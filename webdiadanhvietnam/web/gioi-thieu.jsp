<%-- 
    Document   : gioi-thieu
    Created on : Nov 13, 2019, 7:24:17 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- meta tag -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Giới thiệu - Blog Địa danh Việt Nam</title>
        <meta name="description" content="Blog cung cấp thông tin về các địa danh ở Việt Nam, cung cấp kiến thức về du lịch cho mọi người.">
        <!-- responsive tag -->
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon -->
        <link rel="apple-touch-icon" href="./imgs/favicon.png">
        <link rel="shortcut icon" type="image/x-icon" href="./imgs/favicon.png">
        <jsp:include page="include.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        
        <!-- Breadcrumbs Start -->
        <div class="rs-breadcrumbs">
            <div class="breadcrumbs-image">
                <img src="./imgs/breadcrumbs/about-us.jpg" alt="Breadcrumbs Image">
                <div class="breadcrumbs-inner">
                    <div class="container">
                        <div class="breadcrumbs-text">
                            <h1 class="breadcrumbs-title">Về chúng tôi</h1>
                            <ul class="breadcrumbs-subtitle">
                                <li><a href="./">Trang chủ >></a></li>
                                <li>Giới thiệu</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>                
        </div>
        <!-- Breadcrumbs End -->

        <!-- About Section Start -->
        <div id="rs-about-section" class="rs-about-section pt-100 pb-90">
            <div class="container">
                <div class="about-part">
<!--                    <div class="about-img mb-45">
                        <img src="./imgs/about/about-blog.jpg" alt="Chợ nổi Cái Răng">
                    </div>-->
                    <div class="about-text mb-35">
                        <h2 class="about-me-title uppercase mb-10">Chúng tôi là ai?</h2>
                        <p class="about-me-txt margin-0">Chúng tôi là SUDO Group. Nhóm sinh viên thuộc trường Đại học FPT đang thực hành môn PRJ321 của anh Khanh đẹp trai. Chúng tôi muốn truyền tải một thông điệp "Có một Việt Nam tươi đẹp như thế" - Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.</p>
                        <blockquote><span class="rotate-icon"><i class="flaticon-quote"></i></span>Chỉ có thể là Passed môn! Chỉ có thể là Passed môn! Chỉ có thể là Passed môn!<span class="last-icon"><i class="flaticon-quote"></i></span></blockquote>
                    </div>
                    <div class="about-text">
                        <p class="about-me-txt margin-0">Chúng tôi là SUDO Group. Nhóm sinh viên thuộc trường Đại học FPT đang thực hành môn PRJ321 của anh Khanh đẹp trai. Chúng tôi muốn truyền tải một thông điệp "Có một Việt Nam tươi đẹp như thế" - Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.</p>
                        <p class="about-me-txt margin-0">Chúng tôi là SUDO Group. Nhóm sinh viên thuộc trường Đại học FPT đang thực hành môn PRJ321 của anh Khanh đẹp trai. Chúng tôi muốn truyền tải một thông điệp "Có một Việt Nam tươi đẹp như thế" - Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- About Section End -->
        
        <!-- Team Section Start -->
        <div id="rs-team" class="rs-team pt-90 pb-100 md-pt-65 md-pb-70">
            <div class="container">
                <div class="sec-title text-center">
                    <h2 class="title uppercase mb-10">- Thành viên -</h2>
                    <div class="desc">3 thành viên của SUDO Team</div>
                </div>
                <div class="rs-carousel owl-carousel nav-style" data-loop="true" data-items="3" data-margin="30" data-autoplay="false" data-autoplay-timeout="8000" data-smart-speed="2000" data-dots="false" data-nav="false" data-nav-speed="false" data-mobile-device="1" data-mobile-device-nav="false" data-mobile-device-dots="false" data-ipad-device="3" data-ipad-device-nav="false" data-ipad-device-dots="false" data-ipad-device2="2" data-ipad-device-nav2="false" data-ipad-device-dots2="false" data-md-device="3" data-md-device-nav="false" data-md-device-dots="false">
                    <div class="single-team sec-bg">
                        <div class="team-img hover-shine">
                            <figure>
                                <a href="./thanh-vien?userId=dongdh"><img src="./imgs/team/dongdh.jpg" alt="Dương Hải Đông"></a>
                            </figure>                             
                        </div>
                        <div class="team-details text-center">
                            <h3 class="team-name uppercase mb-0"><a href="./thanh-vien?userId=dongdh">Dương Hải Đông</a></h3>
                            <span class="team-title">Secretary</span>
                        </div>
                    </div>
                    <div class="single-team sec-bg">
                        <div class="team-img hover-shine">
                            <figure>
                                <a href="./thanh-vien?userId=khoilq"><img src="./imgs/team/khoilq.jpg" alt="Lê Quốc Khôi"></a>
                            </figure>                             
                        </div>
                        <div class="team-details text-center">
                            <h3 class="team-name uppercase mb-0"><a href="./thanh-vien?userId=khoilq">Lê Quốc Khôi</a></h3>
                            <span class="team-title">Team Leader</span>
                        </div>
                    </div>
                    <div class="single-team sec-bg">
                        <div class="team-img hover-shine">
                            <figure>
                                <a href="./thanh-vien?userId=khoitnm"><img src="./imgs/team/khoitnm.jpg" alt="Thân Ngọc Minh Khôi"></a>
                            </figure>                             
                        </div>
                        <div class="team-details text-center">
                            <h3 class="team-name uppercase mb-0"><a href="./thanh-vien?userId=khoitnm">Thân Ngọc Minh Khôi</a></h3>
                            <span class="team-title">Content Creator</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Team Section End -->
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>
