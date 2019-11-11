<%-- 
    Document   : trang-chu
    Created on : Nov 11, 2019, 9:44:32 AM
    Author     : KhoiLeQuoc
--%>
<%@page import="Entity.Landscape"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.LandscapeModel"%>
<%@page import="Utils.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<%
    int p = 1;
    String s = "";
    String sortColumn = "";
    if (request.getParameter("page") != null) {
        p = Integer.parseInt(request.getParameter("page"));
    }
    Connection conn = ConnectDB.getConnection();
    LandscapeModel landscapeModel = new LandscapeModel(conn);
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getPaging(p, s, sortColumn);
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
        <meta name="description"
              content="Blog cung cấp thông tin về các địa danh ở Việt Nam, cung cấp kiến thức về du lịch cho mọi người.">
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

        <!-- Category Section Start -->
        <div id="rs-category" class="rs-category nav-style pt-70 pb-70">
            <div class="container">
                <div class="rs-carousel owl-carousel" data-loop="true" data-items="3" data-margin="30" data-autoplay="true"
                     data-autoplay-timeout="8000" data-smart-speed="2000" data-dots="false" data-nav="false"
                     data-nav-speed="false" data-mobile-device="1" data-mobile-device-nav="false"
                     data-mobile-device-dots="false" data-ipad-device="2" data-ipad-device-nav="true"
                     data-ipad-device-dots="false" data-ipad-device2="1" data-ipad-device-nav2="true"
                     data-ipad-device-dots2="false" data-md-device="3" data-md-device-nav="true" data-md-device-dots="false">
                    
                        
                            <%
                                for (Landscape ls : landscapeArrayList) {
                                    out.println("<div class='single-category hover-grow'>");
                                    out.println("<div class='category-part'>");
                                    out.println("<a href='./dia-hinh?dh=" + ls.getGuid() +"'><img src='./imgs/landscape/" + ls.getThumbnail() + "' alt='" + ls.getName() + "'></a>");
                                    out.println("<div class='category-title'>");
                                    out.println("<h3><a href='./dia-hinh?dh=" + ls.getGuid() + "'>" + ls.getName() + "</a></h3>");
                                    out.println("</div>");
                                    out.println("</div>");
                                    out.println("</div>");
                                }
                            %>
                            

                    
                </div>
            </div>
        </div>
        <!-- Category Section End -->

        <!-- Recent Articles Start -->
        <div id="rs-articles" class="rs-articles home2style pt-67 pb-61">
            <div class="container">
                <div class="sec-title text-center">
                    <h2 class="title uppercase">Recent Articles</h2>
                </div>
                <div class="row">
                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/1.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
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
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 1 end -->

                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/2.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="categories.html">Business</a></li>
                                        <li><a href="categories.html">Food</a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>Nov 28, 2018</li>
                                        <li><a href="#"><i class="fa fa-user-o"></i>Stive Jobs</a></li>
                                    </ul>
                                </div>
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 2 end -->

                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/3.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="categories.html">Lifestyle</a></li>
                                        <li><a href="categories.html">Racing</a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>Dec 17, 2018</li>
                                        <li><a href="#"><i class="fa fa-user-o"></i>Rafian Sagar</a></li>
                                    </ul>
                                </div>
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 3 end -->

                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/4.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
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
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 4 end -->

                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/5.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="categories.html">Business</a></li>
                                        <li><a href="categories.html">Food</a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>Nov 28, 2018</li>
                                        <li><a href="#"><i class="fa fa-user-o"></i>Stive Jobs</a></li>
                                    </ul>
                                </div>
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 5 end -->
                    <div class="col-lg-4 col-md-6 col-sm-12 blogBox moreBox">
                        <div class="article-grid mb-42">
                            <div class="hover-grow">
                                <a href="standard-post.html"><img src="imgs/recent-articles/5.jpg"
                                                                  alt="Recent Articles"></a>
                            </div>
                            <div class="article-content">
                                <div class="categories">
                                    <ul>
                                        <li><a href="categories.html">Business</a></li>
                                        <li><a href="categories.html">Food</a></li>
                                    </ul>
                                </div>
                                <div class="post-date-author">
                                    <ul>
                                        <li><i class="fa fa-calendar"></i>Nov 28, 2018</li>
                                        <li><a href="#"><i class="fa fa-user-o"></i>Stive Jobs</a></li>
                                    </ul>
                                </div>
                                <h3 class="article-title"><a href="standard-post.html">Man in Red Plaid Shirt Talking Phone
                                        on Terrace</a></h3>
                                <div class="desc">
                                    On the other hand, we denounce with righteous indig nation the foult anuals dislike men
                                    who are so be guiled and demoralized
                                </div>
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div><!-- Item 5 end -->
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
                                <div class="social-icons">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine mb-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/14.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine mb-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/15.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine mb-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/16.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine sm-mb-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/17.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox">
                                <div class="article-grid hover-shine">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/18.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox article-load">
                                <div class="article-grid hover-shine mt-40">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/18.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox article-load">
                                <div class="article-grid hover-shine mt-40">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/17.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox article-load">
                                <div class="article-grid hover-shine mt-45">
                                    <figure>
                                        <a href="standard-post.html"><img src="imgs/recent-articles/16.jpg"
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
                            <div class="col-lg-6 col-md-6 blogBox moreBox article-load">
                                <div class="article-grid hover-shine mt-45">
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
                                    <h3 class="title uppercase mb-50">About Us</h3>
                                </div>
                                <div class="author-img hover-shine text-center">
                                    <figure>
                                        <a href="#"><img src="imgs/author/sidebar-author.jpg" alt="Author Image"></a>
                                    </figure>
                                </div>
                                <div class="author-desc text-center">
                                    <p>The other hand, we denounce with righteous indig nation the foult anuals dislike men
                                        who are so be guiled and demoralized</p>
                                </div>
                                <div class="author-sign text-center">
                                    <img src="imgs/author/sign.png" alt="Author Sign">
                                </div>
                                <div class="social-icons text-center">
                                    <ul>
                                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                                        <li><a href="#"><i class="fa fa-behance"></i></a></li>
                                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                        <li><a href="#"><i class="fa fa-vk"></i></a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="sidebar-newsletter mb-40">
                                <div class="sidebar-title text-center">
                                    <h3 class="uppercase margin-0">Subscribe to Newsletter</h3>
                                </div>
                                <form class="news-form">
                                    <input type="text" class="form-input" placeholder="Email Address" required>
                                    <button type="submit" class="form-button">Subscribe</button>
                                </form>
                                <div class="newsletter-text">
                                    <p class="bold margin-0">Get the latest news stories in your inbox</p>
                                </div>
                            </div>
                            <div class="popular-post mb-50">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase">Popular Post</h3>
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
                                <div class="single-post mb-18">
                                    <div class="post-image hover-grow">
                                        <a href="standard-post.html"><img src="imgs/blog/2.jpg" alt="post image"></a>
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
                                <div class="single-post mb-18">
                                    <div class="post-image hover-grow">
                                        <a href="standard-post.html"><img src="imgs/blog/3.jpg" alt="post image"></a>
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
                                <div class="single-post mb-18">
                                    <div class="post-image hover-grow">
                                        <a href="standard-post.html"><img src="imgs/blog/4.jpg" alt="post image"></a>
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
                                <div class="single-post">
                                    <div class="post-image hover-grow">
                                        <a href="standard-post.html"><img src="imgs/blog/5.jpg" alt="post image"></a>
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
                                        <a href="standard-post.html"><img src="imgs/banner/add-banner.jpg"
                                                                          alt="Add Banner Image"></a>
                                    </figure>
                                </div>
                            </div>
                            <div class="sidebar-categories">
                                <div class="sidebar-title text-center">
                                    <h3 class="title uppercase mb-20">Categories</h3>
                                </div>
                                <ul class="category-tags">
                                    <li><a href="categories.html"># Business <span>(05)</span></a></li>
                                    <li><a href="categories5.html"># Lifestyle <span>(05)</span></a></li>
                                    <li><a href="categories5.html"># Fashion <span>(05)</span></a></li>
                                    <li><a href="categories4.html"># Pro Food <span>(05)</span></a></li>
                                    <li><a href="categories3.html"># Tour & Travel <span>(05)</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>




        <!-- Footer Start -->
        <footer id="rs-footer" class="rs-footer sec-spacer2">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="footer-content text-center">
                            <div class="footer-logo">
                                <a href="index.html"><img src="imgs/logo.png" alt="logo"></a>
                            </div>
                            <ul class="footer-menu">
                                <!-- Home -->
                                <li class="current-menu-item menu-item-has-children"> <a href="index.html"
                                                                                         class="home">Home</a></li>
                                <!-- End Home -->

                                <!--About Start-->
                                <li><a href="about.html">About</a></li>
                                <!--About End-->

                                <!--Categories Menu Start -->
                                <li class="menu-item-has-children"> <a href="categories.html">Categories</a></li>
                                <!--Categories Menu End -->

                                <!--Single Post Start-->
                                <li class="menu-item-has-children"> <a href="standard-post.html">Single Post</a></li>
                                <!--Single Post End-->

                                <!--Contact Menu Start-->
                                <li class="menu-item-has-children"><a href="contact.html">Contact</a></li>
                                <!--Contact Menu End-->
                            </ul>
                            <ul class="footer-social-icon">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                            </ul>
                            <div class="copyright-text">
                                <p>&copy; Copyrights 2019 Vlogrex. All Rights Reserved. </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Footer End -->

        <!-- Scrool to Top Start -->
        <div id="scrollUp">
            <i class="fa fa-angle-up"></i>
        </div>
        <!-- Scrool to Top End -->

        <!-- Search Modal Start -->
        <div aria-hidden="true" class="modal fade search-modal" role="dialog" tabindex="-1">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="flaticon-cross-out"></span>
            </button>
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="search-block clearfix">
                        <form>
                            <div class="form-group">
                                <input class="form-control" placeholder="Search Here.." type="text">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Search Modal End -->

        <jsp:include page="footer.jsp"/>
    </body>

</html>