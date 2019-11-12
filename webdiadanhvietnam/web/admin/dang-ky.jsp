<%-- 
    Document   : dang-ky
    Created on : Nov 8, 2019, 1:08:49 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="loading" lang="en" data-textdirection="ltr">
    <!-- BEGIN: Head-->

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Đăng ký</title>
        <link rel="shortcut icon" type="image/x-icon" href="../admin/app-assets/images/ico/favicon.ico">
        <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600" rel="stylesheet">

        <!-- BEGIN: Vendor CSS-->
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/vendors/css/vendors.min.css">
        <!-- END: Vendor CSS-->

        <!-- BEGIN: Theme CSS-->
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/bootstrap-extended.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/colors.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/components.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/themes/dark-layout.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/themes/semi-dark-layout.css">

        <!-- BEGIN: Page CSS-->
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/core/menu/menu-types/vertical-menu.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/core/colors/palette-gradient.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/css/pages/authentication.css">
        <!-- END: Page CSS-->

        <!-- BEGIN: Custom CSS-->
        <link rel="stylesheet" type="text/css" href="../admin/assets/css/style.css">
        <!-- END: Custom CSS-->
    </head>
    <!-- END: Head-->

    <!-- BEGIN: Body-->

    <body class="vertical-layout vertical-menu-modern 1-column  navbar-floating footer-static bg-full-screen-image  blank-page blank-page" data-open="click" data-menu="vertical-menu-modern" data-col="1-column">
        <!-- BEGIN: Content-->
        <div class="app-content content">
            <div class="content-overlay"></div>
            <div class="header-navbar-shadow"></div>
            <div class="content-wrapper">
                <div class="content-header row">
                </div>
                <div class="content-body">
                    <section class="row flexbox-container">
                        <div class="col-xl-8 col-10 d-flex justify-content-center">
                            <div class="card bg-authentication rounded-0 mb-0">
                                <div class="row m-0">
                                    <div class="col-lg-6 d-lg-block d-none text-center align-self-center pl-0 pr-3 py-0">
                                        <img src="../admin/app-assets/images/pages/register.jpg" alt="branding logo">
                                    </div>
                                    <div class="col-lg-6 col-12 p-0">
                                        <div class="card rounded-0 mb-0 p-2">
                                            <div class="card-header pt-50 pb-1">
                                                <div class="card-title">
                                                    <h4 class="mb-0">Tạo tài khoản</h4>
                                                </div>
                                            </div>
                                            <p class="px-2">Chào mừng một thành viên mới.</p>
                                            <div class="card-content">
                                                <div class="card-body pt-0">
                                                    <form action="index.html">
                                                        <div class="form-label-group">
                                                            <input type="text" name="inputName" id="inputName" class="form-control" placeholder="Tên của bạn" required>
                                                            <label for="inputName">Tên của bạn</label>
                                                        </div>
                                                        <div class="form-label-group">
                                                            <input type="email" name="inputEmail" id="inputEmail" class="form-control" placeholder="Email" required>
                                                            <label for="inputEmail">Email</label>
                                                        </div>
                                                        <div class="form-label-group">
                                                            <input type="password" name="inputPassword" id="inputPassword" class="form-control" placeholder="Mật khẩu" required>
                                                            <label for="inputPassword">Mật khẩu</label>
                                                        </div>
                                                        <div class="form-label-group">
                                                            <input type="password" id="inputConfPassword" class="form-control" placeholder="Xác nhận mật khẩu" required>
                                                            <label for="inputConfPassword">Xác nhận mật khẩu</label>
                                                        </div>
                                                        <div class="form-group row">
                                                            <div class="col-12">
                                                                <fieldset class="checkbox">
                                                                    <span class="vs-checkbox-con vs-checkbox-primary">
                                                                        <input type="checkbox">
                                                                        <span class="vs-checkbox">
                                                                            <span class="vs-checkbox--check">
                                                                                <i class="vs-icon feather icon-check"></i>
                                                                            </span>
                                                                        </span>
                                                                        <span class=""> Tôi đồng ý với <a href="../dieu-khoan-su-dung">điều khoản sử dụng</a>.</span>
                                                                    </span>
                                                                    
                                                                </fieldset>
                                                            </div>
                                                        </div>
                                                        <a href="./dang-nhap" class="btn btn-outline-primary float-left btn-inline mb-50">Đăng nhập</a>
                                                        <button type="submit" class="btn btn-primary float-right btn-inline mb-50">Đăng ký</a>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>

                </div>
            </div>
        </div>
        <!-- END: Content-->


        <!-- BEGIN: Vendor JS-->
        <script src="../admin/app-assets/vendors/js/vendors.min.js"></script>
        <!-- BEGIN Vendor JS-->

        <!-- BEGIN: Page Vendor JS-->
        <!-- END: Page Vendor JS-->

        <!-- BEGIN: Theme JS-->
        <script src="../admin/app-assets/js/core/app-menu.js"></script>
        <script src="../admin/app-assets/js/core/app.js"></script>
        <script src="../admin/app-assets/js/scripts/components.js"></script>
        <!-- END: Theme JS-->

        <!-- BEGIN: Page JS-->
        <!-- END: Page JS-->

    </body>
    <!-- END: Body-->

</html>
