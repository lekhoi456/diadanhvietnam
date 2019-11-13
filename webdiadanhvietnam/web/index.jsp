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
    
    SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

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
        <link rel="apple-touch-icon" href="./imgs/favicon.png">
        <link rel="shortcut icon" type="image/x-icon" href="./imgs/favicon.png">
        <jsp:include page="include.jsp"/>
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <!-- Banner Section Start -->
        <div id="rs-banner" class="rs-banner home2banner">
            <div class="container">
                <div class="banner-content">
                    <div class="author-img">
                        <img src="imgs/banner/logo-be.png" alt="Địa danh Việt Nam logo">
                    </div>
                    <div class="content-part">
                        <div class="sub-top">Traveling throughout Vietnam</div>
                        <h1 class="author-name">Địa danh Việt Nam</h1>
                        <p class="author-desc">Có một Việt Nam tươi đẹp như thế: Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.
                        </p>
                        <div class="banner-btn">
                            <a class="readon" href="./gioi-thieu">Về chúng tôi</a>
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
                            out.println("<a href='./dia-hinh?guid=" + ls.getGuid() + "'><img src='./imgs/landscape/" + ls.getThumbnail() + "' alt='" + ls.getName() + "'></a>");
                            out.println("<div class='category-title'>");
                            out.println("<h3><a href='/dia-hinh?guid=" + ls.getGuid() + "'>" + ls.getName() + "</a></h3>");
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
                    <h2 class="title uppercase">Địa điểm Check-in mới</h2>
                </div>
                <div class="row">
                    <%
                        for (int i = postArrayList.size() - 1; i > postArrayList.size() - 7; i--) {
                            if (postArrayList.get(i).getStatus()==2)
    {%>
                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(i).getThumbnail()%>" alt="<%=postArrayList.get(i).getTitle()%>"></a>
                            </div>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="./dia-hinh?guid=<%=landscapeModel.getGuidById(postArrayList.get(i).getLandscape_id())%>"><%=landscapeModel.getNameById(postArrayList.get(i).getLandscape_id())%></a></li>
                                        <li><a href="./tinh-thanh-pho?guid=<%=provinceModel.getGuidById(postArrayList.get(i).getProvince_id())%>"><%=provinceModel.getNameById(postArrayList.get(i).getProvince_id())%></a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i><%=dFormat.format(postArrayList.get(i).getPost_date())%></li>
                                        <li><a href="./thanh-vien?userId=<%=userModel.getUsernameById(postArrayList.get(i).getPost_author())%>"><i class="fa fa-user-o"></i><%=userModel.getDisplaynameById(postArrayList.get(i).getPost_author())%></a></li>
                                    </ul>
                                </div>
                                <h3 class="article-title"><a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><%=postArrayList.get(i).getTitle()%></a></h3>
                                <div class="desc">
                                    <%=postArrayList.get(i).getDescription()%>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%}}%>
                </div>
            </div>
        </div>

        <div id="rs-articles" class="rs-articles home2style pb-60">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 md-mb-30">
                        <div class="article-grid hover-shine mb-40">
                            <figure>
                                <a href="./bai-viet?guid=<%=postArrayList.get(postArrayList.size() - 7).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(postArrayList.size() - 7).getThumbnail()%>" alt="<%=postArrayList.get(postArrayList.size() - 7).getTitle()%>"></a>
                            </figure>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="./dia-hinh?guid=<%=landscapeModel.getGuidById(postArrayList.get(postArrayList.size() - 7).getLandscape_id())%>"><%=landscapeModel.getNameById(postArrayList.get(postArrayList.size() - 7).getLandscape_id())%></a></li>
                                        <li><a href="./tinh-thanh-pho?guid=<%=provinceModel.getGuidById(postArrayList.get(postArrayList.size() - 7).getProvince_id())%>"><%=provinceModel.getNameById(postArrayList.get(postArrayList.size() - 7).getProvince_id())%></a></li>

                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i><%=dFormat.format(postArrayList.get(postArrayList.size() - 7).getPost_date())%></li>
                                        <li><a href="./thanh-vien?userId=<%=userModel.getUsernameById(postArrayList.get(postArrayList.size() - 7).getPost_author())%>"><i class="fa fa-user-o"></i><%=userModel.getDisplaynameById(postArrayList.get(postArrayList.size() - 7).getPost_author())%></a></li>

                                    </ul>
                                </div>
                                <h2 class="article-title title-single-style"><a href="./bai-viet?guid=<%=postArrayList.get(postArrayList.size() - 7).getGuid()%>"><%=postArrayList.get(postArrayList.size() - 7).getTitle()%></a></h2>

                                <p class="desc">
                                    <%=postArrayList.get(postArrayList.size() - 7).getDescription()%>
                                </p>
                                <div class="continue-btn">
                                    <a class="readon" href="./bai-viet?guid=<%=postArrayList.get(postArrayList.size() - 7).getGuid()%>">Đọc thêm</a>
                                </div>
                                <div class="row">
                                    <%
                                        for (int i = postArrayList.size() - 8; i > postArrayList.size() - 16; i--) {
                                            if (postArrayList.get(i).getStatus()==2) {%>
                                    <div class="col-lg-6 col-md-6 blogBox moreBox">
                                        <div class="article-grid mb-42">
                                            <div class="hover-grow">
                                                <a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(i).getThumbnail()%>" alt="<%=postArrayList.get(i).getTitle()%>"></a>
                                            </div>
                                            <div class="article-content">
                                                <div class="categories">
                                                    <ul>
                                                        <li><a href="./dia-hinh?guid=<%=landscapeModel.getGuidById(postArrayList.get(i).getLandscape_id())%>"><%=landscapeModel.getNameById(postArrayList.get(i).getLandscape_id())%></a></li>
                                                        <li><a href="./tinh-thanh-pho?guid=<%=provinceModel.getGuidById(postArrayList.get(i).getProvince_id())%>"><%=provinceModel.getNameById(postArrayList.get(i).getProvince_id())%></a></li>
                                                    </ul>
                                                </div>
                                                <div class="post-date-author">
                                                    <ul>
                                                        <li><i class="fa fa-calendar"></i><%=dFormat.format(postArrayList.get(i).getPost_date())%></li>
                                                        <li><a href="./thanh-vien?userId=<%=userModel.getUsernameById(postArrayList.get(i).getPost_author())%>"><i class="fa fa-user-o"></i><%=userModel.getDisplaynameById(postArrayList.get(i).getPost_author())%></a></li>
                                                    </ul>
                                                </div>
                                                <h3 class="article-title"><a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><%=postArrayList.get(i).getTitle()%></a></h3>
                                                <div class="desc">
                                                    <%=postArrayList.get(i).getDescription()%>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}}%>
                                </div>
                            </div>
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
                                        <a href="./gioi-thieu"><img src="imgs/logo.png" alt="Địa Danh Việt Nam"></a>
                                    </figure>
                                </div>
                                <div class="author-desc text-center">
                                    <p>Blog Địa danh Việt Nam là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp Việt Nam.</p>
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
                                    <h3 class="title uppercase">Địa điểm được quan tâm</h3>
                                </div>
                                <%
                                    for (int i = 1; i < 6; i++) {%>
                                <div class="single-post mb-18">
                                    <div class="post-image hover-grow">
                                        <a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(i).getThumbnail()%>" alt="<%=postArrayList.get(i).getTitle()%>"></a>
                                    </div>
                                    <div class="post-desc">
                                        <ul>
                                            <li><i class="fa fa-calendar"></i><%=dFormat.format(postArrayList.get(i).getPost_date())%></li>
                                            <li><a href="./thanh-vien?userId=<%=userModel.getUsernameById(postArrayList.get(i).getPost_author())%>"><i class="fa fa-user-o"></i><%=userModel.getDisplaynameById(postArrayList.get(i).getPost_author())%></a></li>
                                        </ul>
                                        <div class="post-title">
                                            <h5 class="margin-0"><a href="./bai-viet?guid=<%=postArrayList.get(i).getGuid()%>"><%=postArrayList.get(i).getTitle()%></a></h5>
                                        </div>
                                    </div>
                                </div>
                                <%}%>
                            </div>
                            <div class="add-banner mb-40">
                                <div class="sidebar-title text-center">
                                    <h3 class="uppercase margin-0">ADS</h3>
                                </div>
                                <div class="add-img hover-shine text-center">
                                    <figure>
                                        <a href="#"><img src="imgs/ads.jpg"
                                                         alt="Ads here"></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="sidebar-categories">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase mb-20">Địa hình</h3>
                                </div>
                                <ul class="category-tags">
                                    <% for (Landscape ls : landscapeArrayList) {%>
                                    <li><a href="./dia-hinh?guid=<%=ls.getGuid()%>"># <%=ls.getName()%></a></li>
                                    <%}
                                    %>
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