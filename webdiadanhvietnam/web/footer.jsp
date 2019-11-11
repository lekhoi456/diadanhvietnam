<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                        <li class="menu-item"> <a href="./" class="home">Trang chủ</a></li>
                        <li class="menu-item"><a href="./gioi-thieu">Giới thiệu</a></li>
                        <li class="menu-item"> <a href="./dia-hinh">Địa hình</a></li>
                        <li class="menu-item"> <a href="./tinh-thanh-pho">Tỉnh/Thành phố</a></li>
                        <li class="menu-item"> <a href="https://www.saigontourist.net/tour-trong-nuoc" target="_blank">Tour Du Lịch</a></li>
                        <li class="menu-item"><a href="./lien-he">Liên hệ</a></li>
                    </ul>
                    <ul class="footer-social-icon">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest-p"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                    <div class="copyright-text">
                        <p>&copy; Copyrights 2019 Địa Danh Việt Nam. All Rights Reserved. </p>
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
                        <input class="form-control" placeholder="Tìm kiếm..." type="text">
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- Search Modal End -->

<!-- modernizr js -->
<script src="app-assets/js/modernizr-2.8.3.min.js"></script>
<!-- jquery latest version -->
<script src="app-assets/js/jquery.min.js"></script>
<!-- counter top js -->
<script src="app-assets/js/jquery.counterup.min.js"></script>
<script src="app-assets/js/waypoints.min.js"></script>
<!-- bootstrap js -->
<script src="app-assets/js/bootstrap.min.js"></script>
<!-- owl.carousel js -->
<script src="app-assets/js/owl.carousel.min.js"></script>
<!-- slick js -->
<script src="app-assets/js/slick.min.js"></script>
<!-- magnific popup js -->
<script src="app-assets/js/jquery.magnific-popup.min.js"></script>
<!-- isotope.pkgd.min js -->
<script src="app-assets/js/isotope.pkgd.min.js"></script>
<!-- imagesloaded.pkgd.min js -->
<script src="app-assets/js/imagesloaded.pkgd.min.js"></script>
<!-- wow js -->
<script src="app-assets/js/wow.min.js"></script>
<!-- rsmenu js -->
<script src="app-assets/js/rsmenu-main.js"></script>
<!-- plugins js -->
<script src="app-assets/js/plugins.js"></script>
<!-- main js -->
<script src="app-assets/js/main.js"></script>
<script>
    $(document).ready(function () {
        var currentURL = window.location.href;
        var listHref = $('li a');
        for (var i = 0; i < listHref.length; i++) {
            var href = listHref[i].href;
            if (currentURL == href) {
                var parent = listHref[i].parentElement;
                parent.className = "current-menu-item current_page_item menu-item";
            }
        }
    });
</script>