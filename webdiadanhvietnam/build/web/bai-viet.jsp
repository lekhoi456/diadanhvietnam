<%-- 
    Document   : bai-viet
    Created on : Nov 13, 2019, 7:34:47 AM
    Author     : KhoiLeQuoc
--%>
<%@page import="Entity.Comment"%>
<%@page import="Model.CommentModel"%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");
    String guid = request.getParameter("guid");
    int postIdObj = -1;
    long postIdDB = 0;
    boolean checkValidPost = false;

    PostModel postModel = new PostModel();
    ArrayList<Post> postArrayList = postModel.getList();

    LandscapeModel landscapeModel = new LandscapeModel();
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getList();

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

    UserModel userModel = new UserModel();
    ArrayList<User> userArrayList = userModel.getList();

    CommentModel commentModel = new CommentModel();
    ArrayList<Comment> commentArrayList = commentModel.getList();

    SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");
    SimpleDateFormat dFormatYMD = new SimpleDateFormat("yyyy-MM-dd");

    for (int i = 0; i < postArrayList.size(); i++) {
        if (guid.equals(postArrayList.get(i).getGuid())) {
            checkValidPost = true;
            postIdObj = i;
            postIdDB = postArrayList.get(i).getId();
        }
    }
    if (checkValidPost == false) {
        out.println("<script>location.href='./404'</script>");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- meta tag -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title><%=postArrayList.get(postIdObj).getTitle()%> - Blog Địa danh Việt Nam</title>
        <meta name="description" content="<%=postArrayList.get(postIdObj).getDescription()%>">
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
                <img src="./imgs/post-image/white-background.jpg" style="min-height: 300px; max-height: 300px; width: 100%; overflow: hidden; position: relative;" alt="<%=postArrayList.get(postIdObj).getTitle()%>">
                <div class="breadcrumbs-inner">
                    <div class="container">
                        <div class="breadcrumbs-text">
                            <h1 class="breadcrumbs-title"><%=postArrayList.get(postIdObj).getTitle()%></h1>
                            <ul class="breadcrumbs-subtitle">
                                <li><a href="./">Trang chủ >> </a></li>
                                <li>Bài viết >> </li>
                                <li><%=postArrayList.get(postIdObj).getTitle()%></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>                
        </div>
        <!-- Breadcrumbs End -->

        <!-- Recent Articles Start -->
        <div id="rs-articles" class="rs-articles home2style pt-100 pb-100 md-pt-70 md-pb-70">
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 md-mb-50">
                        <div class="article-grid hover-shine mb-40">
                            <figure class="image">
                                <img src="./imgs/post-image/<%=postArrayList.get(postIdObj).getThumbnail()%>" alt="<%=postArrayList.get(postIdObj).getTitle()%>">
                            </figure>
                        </div>
                        <!-- Single Article Part Start --> 
                        <div class="single-article-part">
                            <div class="article-grid hover-shine mb-40">
                                <div class="article-content">
                                    <%=postArrayList.get(postIdObj).getContent()%>
                                </div>
                            </div>
                        </div>
                        <!-- Single Article Part End -->

                        <!-- Article Bottom Part Start -->
                        <div class="article-bottom">
                            <div class="article-tags clearfix">
                                <div class="tag-part">
                                    <p>Tags: </p>
                                    <a href="./dia-hinh?guid=<%=landscapeModel.getGuidById(postArrayList.get(postIdObj).getLandscape_id())%>"><%=landscapeModel.getNameById(postArrayList.get(postIdObj).getLandscape_id())%></a>
                                    <a href="./tinh-thanh-pho?guid=<%=provinceModel.getGuidById(postArrayList.get(postIdObj).getProvince_id())%>"><%=provinceModel.getNameById(postArrayList.get(postIdObj).getProvince_id())%></a>
                                </div>
                                <div class="social-icons border-none padding-0 margin-0">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="article-nav">
                                <ul>
                                    <li class="prev">
                                        <a href="<%
                                            if (postIdObj == 0) {
                                                out.print("#");
                                            } else {
                                                out.print("./bai-viet?guid=" + postArrayList.get(postIdObj - 1).getGuid());
                                            }%>">
                                            <i class="fa fa-angle-left"></i>
                                            <span>Bài viết trước</span>
                                        </a>
                                    </li>
                                    <li class="next">
                                        <a href="<%
                                            if (postIdObj == postArrayList.size() - 1) {
                                                out.print("#");
                                            } else {
                                                out.print("./bai-viet?guid=" + postArrayList.get(postIdObj + 1).getGuid());
                                            }%>">
                                            <span>Bài tiếp theo</span>
                                            <i class="fa fa-angle-right"></i>
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="post-article-part">
                                <%
                                    int recentPostId = 1;
                                    if (postIdObj > postArrayList.size() - 3) {
                                        recentPostId = -4;
                                    }
                                    for (int i = 0; i < 3; i++) {
                                %>
                                <div class="article-grid home5style hover-shine mb-35 mr-20">
                                    <figure>
                                        <a href="./bai-viet?guid=<%=postArrayList.get(postIdObj + recentPostId + i).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(postIdObj + recentPostId + i).getThumbnail()%>" style="min-height: 160px; max-height: 160px; min-width: 230px; max-width: 230px;" alt="<%=postArrayList.get(postIdObj + recentPostId + i).getTitle()%>"></a>
                                    </figure>
                                    <div class="article-heading">
                                        <h3 class="article-title margin-0"><a href="./bai-viet?guid=<%=postArrayList.get(postIdObj + recentPostId + i).getGuid()%>"><%=postArrayList.get(postIdObj + recentPostId + i).getTitle().substring(0, 20) + "..."%></a></h3>
                                    </div>
                                </div>

                                <%}%>


                            </div>
                        </div>
                        <!-- Article Bottom Part End -->

                        <!-- Comment Part Start -->
                        <div class="comment-block" id="comment-block">
                            <h3 class="comment-title uppercase margin-0">Bình luận</h3>
                            <ul class="comment-list">
                                <%
                                    for (Comment cm : commentArrayList) {
                                        if (cm.getPost_id() == postIdDB && cm.getComment_status() == 2) {

                                %>
                                <li>
                                    <div class="single-comment border-none">
                                        <div class="comment-part mb-0">
                                            <%                                                for (User user : userArrayList) {
                                                    if (cm.getUser_id() == user.getId()) {%>
                                            <div class="comment-img">
                                                <img alt="<%=user.getDisplayname()%>" src="./imgs/blog/admin.png" height="90" width="90">
                                            </div>
                                            <div class="comment-text">
                                                <div class="comment-head mb-10 clearfix">
                                                    <p class="comment-meta margin-0">
                                                        <i class="fa fa-calendar"></i><time datetime="<%=dFormatYMD.format(cm.getComment_date())%>"><%=dFormat.format(cm.getComment_date())%></time>
                                                    </p></br>
                                                    <h3 class="comment-title margin-0"><%=user.getDisplayname()%></h3>
                                                    <%}
                                                        }
                                                    %>

                                                </div>
                                                <div class="comment-body">
                                                    <p class="desc"><%=cm.getComment_content()%></p>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </li>

                                <%}
                                    }
                                %>
                                <!-- #comment-## -->

                                <!-- #comment-## -->

                            </ul>
                            <div class="comment-success" role="alert"></div>
                            <div class="rs-contact-form comment-form pt-35">
                                <h3 class="comment-title uppercase mb-15">Để lại bình luận</h3>
                                <form id="contact-form" method="post" action="dang-binh-luan">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-field mb-30">
                                                <label>Bình luận</label>
                                                <textarea rows="7" id="message" name="message" required></textarea>
                                            </div>
                                            <div class="form-button mt-30">
                                                <button type="submit" class="uppercase">Đăng bình luận</button>
                                            </div>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <!-- Comment Part End -->
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
                                    for (int i = 0; i < 10; i++) {%>
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
        <!-- Recent Articles End -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.css">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-confirm/3.3.2/jquery-confirm.min.js"></script>
        <script>
            $(document).ready(function () {
                var url = location.search;
                if (url.indexOf('cmt-ok') !== -1) {
                    $(".comment-success").addClass("alert alert-success");
                    $(".comment-success").append("Bình luận của bạn đã được gửi thành công, vui lòng chờ kiểm duyệt!");
                } else {
                    $(".comment-success").removeClass("alert alert-success");
                    $(".comment-success").append("");
                }
            });
        </script>
        <jsp:include page="footer.jsp"/>
    </body>
</html>