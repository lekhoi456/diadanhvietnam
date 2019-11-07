<%-- 
    Document   : login.jsp
    Created on : Nov 7, 2019, 2:45:28 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Đăng nhập</title>
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
                        <div class="col-xl-8 col-11 d-flex justify-content-center">
                            <div class="card bg-authentication rounded-0 mb-0">
                                <div class="row m-0">
                                    <div class="col-lg-6 d-lg-block d-none text-center align-self-center px-1 py-0">
                                        <img src="../admin/app-assets/images/pages/login.png" alt="branding logo">
                                    </div>
                                    <div class="col-lg-6 col-12 p-0">
                                        <div class="card rounded-0 mb-0 px-2">
                                            <div class="card-header pb-1">
                                                <div class="card-title">
                                                    <h4 class="mb-0">Đăng nhập</h4>
                                                </div>
                                            </div>
                                            <p class="px-2">Chào mừng bạn đã quay lại trang quản trị.</p>
                                            <div class="card-content">
                                                <div class="card-body pt-1">
                                                    <form method="POST" action="login-process.jsp">
                                                        <fieldset class="form-label-group form-group position-relative has-icon-left">
                                                            <input type="text" class="form-control" name="username" id="user-name" placeholder="Tên đăng nhập" required>
                                                            <div class="form-control-position">
                                                                <i class="feather icon-user"></i>
                                                            </div>
                                                            <label for="user-name">Tên đăng nhập</label>
                                                        </fieldset>

                                                        <fieldset class="form-label-group position-relative has-icon-left">
                                                            <input type="password" class="form-control" name="password" id="user-password" placeholder="Mật khẩu" required>
                                                            <div class="form-control-position">
                                                                <i class="feather icon-lock"></i>
                                                            </div>
                                                            <label for="user-password">Mật khẩu</label>
                                                        </fieldset>
                                                        <div class="form-group d-flex justify-content-between align-items-center">
                                                            <div class="text-left">
                                                                <fieldset class="checkbox">
                                                                    <div class="vs-checkbox-con vs-checkbox-primary">
                                                                        <input type="checkbox">
                                                                        <span class="vs-checkbox">
                                                                            <span class="vs-checkbox--check">
                                                                                <i class="vs-icon feather icon-check"></i>
                                                                            </span>
                                                                        </span>
                                                                        <span class="">Tự động đăng nhập</span>
                                                                    </div>
                                                                </fieldset>
                                                            </div>
                                                            <div class="text-right"><a href="auth-forgot-password.html" class="card-link">Quên mật khẩu?</a></div>
                                                        </div>
                                                        <a href="#" class="btn btn-outline-primary float-left btn-inline">Đăng ký</a>
                                                        <button type="submit" class="btn btn-primary float-right btn-inline">Đăng nhập</button>
                                                    </form>
                                                </div>
                                            </div>
                                            <div class="login-footer">
                                                <div class="divider">
                                                    <div class="divider-text">Hoặc đăng nhập bằng</div>
                                                </div>
                                                <div class="footer-btn d-inline">
                                                    <a href="#" class="btn btn-facebook"><span class="fa fa-facebook"></span></a>
                                                    <a href="#" class="btn btn-twitter white"><span class="fa fa-twitter"></span></a>
                                                    <a href="#" class="btn btn-google"><span class="fa fa-google"></span></a>
                                                    <a href="#" class="btn btn-github"><span class="fa fa-github-alt"></span></a>
                                                    <a href="#" class="btn btn-microsoft"><span class="fa fa-windows"></span></a>
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
    </body>
</html>
