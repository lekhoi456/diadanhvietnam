<%-- 
    Document   : lien-he
    Created on : Nov 13, 2019, 7:25:42 AM
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
        <title>Liên hệ - Blog Địa danh Việt Nam</title>
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
                            <h1 class="breadcrumbs-title">Liên hệ</h1>
                            <ul class="breadcrumbs-subtitle">
                                <li><a href="./">Trang chủ >></a></li>
                                <li>Liên hệ</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>                
        </div>
        <!-- Breadcrumbs End -->

        <!-- Contact Us Section Start -->
        <div id="rs-contact" class="rs-contact rs-articles pt-100 pb-100 md-pt-70 md-pb-70">
            <div class="container">
                <div class="contact-content">
                    <div class="information-contact pt-40 pb-45">
                        <div class="row">
                            <div class="col-lg-6 md-mb-30">
                                <div class="grid-box text-center">
                                    <div class="items-wrap">
                                        <i class="fa fa-map-marker"></i>
                                        <h3 class="title uppercase">Văn phòng</h3>
                                        <p class="some-text mb-0">
                                            Số 600, đường Nguyễn Văn Cừ nối dài, phường An Bình, quận Ninh Kiều, thành phố Cần Thơ.</br>
                                            Số điện thoại: <a href="tel:+84379168797"> +84379168797</a>
                                            <a href="mailto:khoilqce130023@fpt.edu.vn"> khoilqce130023@fpt.edu.vn</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="grid-box text-center">
                                    <div class="items-wrap">
                                        <i class="flaticon-comment"></i>
                                        <h3 class="title uppercase">Hỗ trợ 24/24</h3>
                                        <p class="some-text mb-0">
                                            Chúng tôi vẫn ở đây sẵn sàng hỗ trợ bạn trong tất cả trường hợp lỗi dối với website này. Vui lòng liên hệ với chúng tôi theo form bên dưới.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="rs-contact-form">
                        <h3 class="comment-title uppercase">Liên hệ ngay</h3>
                        <form id="contact-form" method="post" action="mailer.php">
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div class="form-field">
                                        <label>Tên của bạn *</label>
                                        <input type="text" id="name" name="name" required>
                                    </div>                              
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="form-field">
                                        <label>Email *</label>
                                        <input type="email" id="email" name="email" required>
                                    </div>                              
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-6 col-md-12">
                                    <div class="form-field">
                                        <label>Số điện thoại *</label>
                                        <input type="text" id="phone_number" name="phone_number" required>
                                    </div>                             
                                </div>
                                <div class="col-lg-6 col-md-12">
                                    <div class="form-field">
                                        <label>Website *</label>
                                        <input type="text" id="website" name="website" required>
                                    </div>                              
                                </div>
                            </div> 
                            <div class="row">
                                <div class="col-lg-12">                       
                                    <div class="form-field mb-30">
                                        <label>Nội dung</label>
                                        <textarea rows="7" id="message" name="message"></textarea>
                                    </div>
                                    <div class="form-button mt-30">
                                        <button type="submit">Gửi đi</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact Us Section End -->

        <jsp:include page="footer.jsp"/>
    </body>
</html>
