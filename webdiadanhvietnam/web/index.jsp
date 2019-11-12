<%-- 
    Document   : trang-chu
    Created on : Nov 11, 2019, 9:44:32 AM
    Author     : KhoiLeQuoc
--%>
<%@page import="Entity.User"%>
<%@page import="Model.UserModel"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="Model.PostModel"%>
<%@page import="Model.ProvinceModel"%>
<%@page import="Model.LandscapeModel"%>
<%@page import="Entity.Post"%>
<%@page import="Entity.Landscape"%>
<%@page import="Entity.Province"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Utils.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<%
    PostModel postModel = new PostModel();
    ArrayList<Post> postArrayList = postModel.getList();

    LandscapeModel landscapeModel = new LandscapeModel();
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getList();

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

    UserModel userModel = new UserModel();
    ArrayList<User> userArrayList = userModel.getList();


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">

    <head>
        <!-- meta tag -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Blog Địa danh Việt Nam</title>
        <meta name="description" content="Blog cung cấp thông tin về các địa danh ở Việt Nam, cung cấp kiến thức về du lịch cho mọi người.">
        <!-- responsive tag -->
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon -->
        <link rel="apple-touch-icon" href="apple-touch-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="imgs/fav.png">
        <jsp:include page="include.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <!-- Banner Section Start -->
        <div id="rs-banner" class="rs-banner home2banner">
            <div class="container">
                <div class="banner-content">
                    <div class="author-img">
                        <img src="imgs/banner/logo.png" alt="Author Image">
                    </div>
                    <div class="content-part">
                        <div class="sub-top">Traveling throughout Vietnam</div>
                        <h1 class="author-name">Địa danh Việt Nam</h1>
                        <p class="author-desc">Có một Việt Nam tươi đẹp như thế: Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.
                        </p>
                        <div class="banner-btn">
                            <a class="readon" href="#">Về chúng tôi</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Banner Section End -->

        <!-- Landscape Section Start -->
        <div id="rs-category" class="rs-category nav-style pt-70 pb-70">
            <div class="container">
                <div class="rs-carousel owl-carousel" data-loop="true" data-items="3" data-margin="30" data-autoplay="true"
                     data-autoplay-timeout="8000" data-smart-speed="2000" data-dots="false" data-nav="false"
                     data-nav-speed="false" data-mobile-device="1" data-mobile-device-nav="false"
                     data-mobile-device-dots="false" data-ipad-device="2" data-ipad-device-nav="true"
                     data-ipad-device-dots="false" data-ipad-device2="1" data-ipad-device-nav2="true"
                     data-ipad-device-dots2="false" data-md-device="3" data-md-device-nav="true" data-md-device-dots="false">
                    <%                                for (Landscape ls : landscapeArrayList) {
                            out.println("<div class='single-category hover-grow'>");
                            out.println("<div class='category-part'>");
                            out.println("<a href='/dia-hinh?dh=" + ls.getGuid() + "'><img src='./imgs/landscape/" + ls.getThumbnail() + "' alt='" + ls.getName() + "'></a>");
                            out.println("<div class='category-title'>");
                            out.println("<h3><a href='/dia-hinh?dh=" + ls.getGuid() + "'>" + ls.getName() + "</a></h3>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                        }
                    %>
                </div>
            </div>
        </div>
        <!-- Landscape Section End -->

        <!-- Recent Articles Start -->
        <div id="rs-articles" class="rs-articles home2style pt-67 pb-61">
            <div class="container">
                <div class="sec-title text-center">
                    <h2 class="title uppercase">Bài viết mới</h2>
                </div>
                <div class="row">

                    <%
                        int numPostGrid = 0;
                        for (Post ls : postArrayList) {
                            if (ls.getStatus() == 1) {
                                ++numPostGrid;
                                if (numPostGrid < 7) {
                                    out.println("<div class='col-lg-4 col-md-6 col-sm-12 blogBox moreBox'>");
                                    out.println("<div class='article-grid mb-42'>");
                                    out.println("<div class='hover-grow'>");
                                    out.println("<a href='" + ls.getGuid() + "'><img src='imgs/post-image/" + ls.getThumbnail() + "' alt='" + ls.getTitle() + "'></a>");
                                    out.println("</div>");
                                    out.println("<div class='article-content'>");
                                    out.println("<div class='categories'>");
                                    out.println("<ul>");
                                    out.println("<li><a href='./dia-hinh?dh=" + provinceModel.getGuidById(ls.getLandscape_id()) + "'>" + provinceModel.getNameById(ls.getLandscape_id()) + "</a></li>");
                                    out.println("<li><a href='./tinh-thanh-pho?ttp=" + landscapeModel.getGuidById(ls.getProvince_id()) + "'>" + landscapeModel.getNameById(ls.getProvince_id()) + "</a></li>");
                                    out.println("</ul>");
                                    out.println("</div>");
                                    out.println("<div class='post-date-author'>");
                                    out.println("<ul>");
                                    SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");
                                    out.println("<li><i class='fa fa-calendar'></i>" + dFormat.format(ls.getPost_date()) + "</li>");
                                    out.println("<li><a href='./user?user=" + userModel.getUsernameById(ls.getPost_author()) + "'><i class='fa fa-user-o'></i>" + userModel.getDisplaynameById(ls.getPost_author()) + "</a></li>");
                                    out.println("</ul>");
                                    out.println("</div>");
                                    out.println("<h3 class='article-title'><a href='" + ls.getGuid() + "'>" + ls.getTitle() + "</a></h3>");
                                    out.println("<div class='desc'> " + ls.getDescription() + "</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                } else if (numPostGrid == 7) {

                                }
                            }
                        }%>
                </div>
            </div>
        </div><!-- .rs-articles -->
        <!-- Recent Aricle End -->

        <!-- Recent Articles Start -->
        <div id="rs-articles" class="rs-articles home2style pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 md-mb-30">
                        <div class="article-grid hover-shine mb-40">
                            <figure>
                                <a href="standard-post.html"><img src="imgs/recent-articles/single-article/1.jpg"
                                                                  alt="Single Articles"></a>
                            </figure>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="categories.html">Business</a></li>
                                        <li><a href="categories.html">Lifestyle</a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>June 28, 2019</li>
                                        <li><a href="#"><i class="fa fa-user-o"></i>Yammi Guan</a></li>
                                        <li><a href="#">10 Comments</a></li>
                                    </ul>
                                </div>
                                <h2 class="article-title title-single-style"><a href="standard-post.html">Turned on MacBook
                                        Pro Near Black Framed Eyeglasses</a></h2>
                                <p class="desc">
                                    On the other hand, we denounce with righteous indignation the foult anuals dislike men
                                    who are so beguiled and demoralized by the nuhaiicharms of pleasure of the moment, so
                                    blinded by desire, that they cannot foresee the pain and trouble that are bound toen
                                    sue; and equal blame belongs to those who fail in their duty.
                                </p>
                                <div class="continue-btn">
                                    <a class="readon" href="#">Continue Reading</a>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine mb-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/13.jpg"
                                                                          alt="Recent Articles"></a>
                                    </figure>
                                    <div class="article-content">
                                        <div class="categories">
                                            <ul>
                                                <li><a href="categories.html">Business</a></li>
                                                <li><a href="categories.html">Lifestyle</a></li>
                                            </ul>
                                        </div>
                                        <div class="post-date-author">
                                            <ul>
                                                <li><i class="fa fa-calendar"></i>June 28, 2019</li>
                                                <li><a href="#"><i class="fa fa-user-o"></i>Yammi Guan</a></li>
                                            </ul>
                                        </div>
                                        <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt
                                                Talking Phone on Terrace</a></h3>
                                        <div class="desc">
                                            On the other hand, we denounce with righteous indig nation the foult anuals
                                            dislike men who are so be guiled and demoralized
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div id="loadMore" class="loadmore-btn text-center mt-40">
                            <a class="readon loadmore" href="#">Load More</a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="article-sidebar">
                            <div class="author-part mb-40">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase mb-50">Về chúng tôi</h3>
                                </div>
                                <div class="author-img hover-shine text-center">
                                    <figure>
                                        <a href="#"><img src="imgs/banner/logo.png" alt="Địa Danh Việt Nam"></a>
                                    </figure>
                                </div>
                                <div class="author-desc text-center">
                                    <p>Có một Việt Nam tươi đẹp như thế: Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.</p>
                                </div>
                            </div>
                            <div class="sidebar-newsletter mb-40">
                                <div class="sidebar-title text-center">
                                    <h3 class="uppercase margin-0">Đăng ký nhận bài viết</h3>
                                </div>
                                <form class="news-form">
                                    <input type="text" class="form-input" placeholder="Email của bạn" required>
                                    <button type="submit" class="form-button">Đăng ký</button>
                                </form>
                                <div class="newsletter-text">
                                    <p class="bold margin-0">Nhận bài viết mới thông qua email của bạn.</p>
                                </div>
                            </div>
                            <div class="popular-post mb-50">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase">Bài viết được xem nhiều</h3>
                                </div>
                                <div class="single-post mb-18">
                                    <div class="post-image hover-grow">
                                        <a href="standard-post.html"><img src="imgs/blog/1.jpg" alt="post image"></a>
                                    </div>
                                    <div class="post-desc">
                                        <ul>
                                            <li><i class="fa fa-calendar"></i>June 28, 2019</li>
                                            <li><a href="#"><i class="fa fa-user-o"></i>Admin</a></li>
                                        </ul>
                                        <div class="post-title">
                                            <h5 class="margin-0"><a href="standard-post.html">Duo Scripta An The Ditos
                                                    Prieirmod...</a></h5>
                                        </div>
                                    </div>
                                </div>

                            </div>
                            <div class="add-banner mb-40">
                                <div class="add-img hover-shine text-center">
                                    <figure>
                                        <a href="#"><img src="imgs/banner/add-banner.jpg"
                                                         alt="Add Banner Image"></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="sidebar-categories">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase mb-20">Địa hình</h3>
                                </div>
                                <ul class="category-tags">
                                    <li><a href="categories.html"># Business <span>(05)</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <jsp:include page="footer.jsp"/>
    </body>

</html>