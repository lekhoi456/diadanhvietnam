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
    request.setCharacterEncoding("UTF-8");
    String guid = request.getParameter("guid");
    long landscapeId = -1;
    String landscapeName = "";
    String landscapeDescription = "";
    PostModel postModel = new PostModel();
    ArrayList<Post> postArrayList = postModel.getList();

    LandscapeModel landscapeModel = new LandscapeModel();
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getList();

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

    UserModel userModel = new UserModel();
    ArrayList<User> userArrayList = userModel.getList();

    SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");

    for (int i = 0; i < landscapeArrayList.size(); i++) {
        if (guid.equalsIgnoreCase(landscapeArrayList.get(i).getGuid())) {
            landscapeId = landscapeArrayList.get(i).getId();
            landscapeName = landscapeArrayList.get(i).getName();
            landscapeDescription = landscapeArrayList.get(i).getDescription();
        }
    }

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <!-- meta tag -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title><%=landscapeName%> - Địa danh Việt Nam</title>
        <meta name="description" content="<%=landscapeDescription%>">
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
                <img src="./imgs/post-image/white-background.jpg" style="min-height: 300px; max-height: 300px; width: 100%; overflow: hidden; position: relative;" alt="<%=landscapeName%>">
                <div class="breadcrumbs-inner">
                    <div class="container">
                        <div class="breadcrumbs-text">
                            <h1 class="breadcrumbs-title"><%=landscapeName%></h1>
                            <ul class="breadcrumbs-subtitle">
                                <li><a href="./">Trang chủ >> </a></li>
                                <li>Địa hình >> </li>
                                <li><%=landscapeName%></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>                
        </div>
        <!-- Breadcrumbs End -->



        <!-- Recent Articles Start -->
        <div id="rs-articles" class="rs-articles home2style pt-67 pb-61">
            <div class="container">
                <div class="sec-title text-center">
                    <h2 class="title uppercase"><%=landscapeName%></h2>
                    <div class="desc">
                        <%=landscapeDescription%>
                    </div>
                </div>
                <div class="row">
                    <%
                        for (int i = postArrayList.size() - 1; i > postArrayList.size() - 10; i--) {
                            if (postArrayList.get(i).getLandscape_id() == landscapeId && postArrayList.get(i).getStatus() == 2) {%>
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
                    <%}
                        }%>
                </div>
            </div>
        </div>
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
                            out.println("<a href='./dia-hinh?guid=" + ls.getGuid() + "'><img src='./imgs/landscape/" + ls.getThumbnail() + "' alt='" + ls.getName() + "' width='200' height='200'></a>");
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
        <jsp:include page="footer.jsp"/>
    </body>

</html>