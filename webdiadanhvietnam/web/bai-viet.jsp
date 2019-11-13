<%-- 
    Document   : bai-viet
    Created on : Nov 13, 2019, 7:34:47 AM
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String guid = request.getParameter("guid");
    int postId = -1;
    boolean checkValidPost = false;

    PostModel postModel = new PostModel();
    ArrayList<Post> postArrayList = postModel.getList();

    LandscapeModel landscapeModel = new LandscapeModel();
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getList();

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

    UserModel userModel = new UserModel();
    ArrayList<User> userArrayList = userModel.getList();

    SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");

    for (int i=0; i<postArrayList.size(); i++) {
        if (guid.equals(postArrayList.get(i).getGuid())) {
            checkValidPost = true;
            postId = i;
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
        <title><%=postArrayList.get(postId).getTitle()%> - Blog Địa danh Việt Nam</title>
        <meta name="description" content="<%=postArrayList.get(postId).getDescription()%>">
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
                <img src="./imgs/post-image/white-background.jpg" style="min-height: 300px; max-height: 300px; width: 100%; overflow: hidden; position: relative;" alt="<%=postArrayList.get(postId).getTitle()%>">
                <div class="breadcrumbs-inner">
                    <div class="container">
                        <div class="breadcrumbs-text">
                            <h1 class="breadcrumbs-title"><%=postArrayList.get(postId).getTitle()%></h1>
                            <ul class="breadcrumbs-subtitle">
                                <li><a href="./">Trang chủ >> </a></li>
                                <li>Bài viết >> </li>
                                <li><%=postArrayList.get(postId).getTitle()%></li>
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
                            <img src="./imgs/post-image/<%=postArrayList.get(postId).getThumbnail()%>" alt="<%=postArrayList.get(postId).getTitle()%>">
                        </div>
                        <!-- Single Article Part Start --> 
                        <div class="single-article-part">
                            <div class="article-grid hover-shine mb-40">
                                <div class="article-content">
                                    <%=postArrayList.get(postId).getContent()%>
                                </div>
                            </div>
                        </div>
                        <!-- Single Article Part End -->

                        <!-- Article Bottom Part Start -->
                        <div class="article-bottom">
                            <div class="article-tags clearfix">
                                <div class="tag-part">
                                    <p>Tags: </p>
                                    <a href="./dia-hinh?guid=<%=landscapeModel.getGuidById(postArrayList.get(postId).getLandscape_id())%>"><%=landscapeModel.getNameById(postArrayList.get(postId).getLandscape_id())%></a>
                                    <a href="./tinh-thanh-pho?guid=<%=provinceModel.getGuidById(postArrayList.get(postId).getProvince_id())%>"><%=provinceModel.getNameById(postArrayList.get(postId).getProvince_id())%></a>
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
                                            if (postId==0) {
                                                out.print("#");
                                            } else {
                                                out.print("./bai-viet?guid=" + postArrayList.get(postId-1).getGuid());
                                            }%>">
                                            <i class="fa fa-angle-left"></i>
                                            <span>Bài viết trước</span>
                                        </a>
                                    </li>
                                    <li class="next">
                                        <a href="<%
                                            if (postId==postArrayList.size()-1) {
                                                out.print("#");
                                            } else {
                                                out.print("./bai-viet?guid=" + postArrayList.get(postId+1).getGuid());
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
                                if (postId==postArrayList.size()-1) {
                                    recentPostId = -4;
                                }
                                for (int i=0; i<3; i++) {
                                %>
                                <div class="article-grid home5style hover-shine mb-35 mr-20">
                                    <figure>
                                        <a href="./bai-viet?guid=<%=postArrayList.get(postId+recentPostId+i).getGuid()%>"><img src="./imgs/post-image/<%=postArrayList.get(postId+recentPostId+i).getThumbnail()%>" style="min-height: 160px; max-height: 160px; min-width: 230px; max-width: 230px;" alt="<%=postArrayList.get(postId+recentPostId+i).getTitle()%>"></a>
                                    </figure>
                                    <div class="article-heading">
                                        <h3 class="article-title margin-0"><a href="./bai-viet?guid=<%=postArrayList.get(postId+recentPostId+i).getGuid()%>"><%=postArrayList.get(postId+recentPostId+i).getTitle().substring(0,20) + "..."%></a></h3>
                                    </div>
                                </div>
                                
                                <%}%>
                                
                                
                            </div>
                        </div>
                        <!-- Article Bottom Part End -->

                        <!-- Comment Part Start -->
                        <div class="comment-block">
                            <h3 class="comment-title uppercase margin-0">Bình luận</h3>
                            <ul class="comment-list">
                                <!-- #comment-## -->
                                <li>
                                    <div class="single-comment no-border">
                                        <div class="comment-part mb-0">
                                            <div class="comment-img">
                                                <img alt="Avatar" src=".imgs/blog/admin.png" height="90" width="90">
                                            </div>
                                            <div class="comment-text">
                                                <div class="comment-head mb-10 clearfix">
                                                    <h3 class="comment-title margin-0">John Lamphard</h3>
                                                    <p class="comment-meta margin-0">
                                                        <i class="fa fa-calendar"></i><time datetime="2019-05-02">June 29, 2019</time>
                                                    </p>
                                                </div>
                                                <div class="comment-body">
                                                    <p class="desc">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do they eiusmod tempor incidi dunt ut labore et dolore magna aliquat enim ad minim veniam.</p>
                                                    <p class="comment-reply"><a href="#">Reply</a></p>
                                                </div>
                                            </div>
                                        </div>  
                                    </div>
                                </li>
                                <!-- #comment-## -->
                            </ul>
                            <div class="rs-contact-form comment-form pt-35">
                                <h3 class="comment-title uppercase mb-15">Leave Comment</h3>
                                <form id="contact-form" method="post" action="mailer.php">
                                    <div class="row">
                                        <div class="col-lg-12">
                                            <div class="form-field">
                                                <label>Name *</label>
                                                <input type="text" id="name" name="name" required="">
                                            </div>                              
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-field">
                                                <label>Email *</label>
                                                <input type="email" id="email" name="email" required="">
                                            </div>                              
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-field">
                                                <label>Website</label>
                                                <input type="text" id="website" name="website" required="">
                                            </div>                              
                                        </div>
                                        <div class="col-lg-12">
                                            <div class="form-field mb-30">
                                                <label>Comment</label>
                                                <textarea rows="7" id="message" name="message"></textarea>
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

        <jsp:include page="footer.jsp"/>
    </body>
</html>