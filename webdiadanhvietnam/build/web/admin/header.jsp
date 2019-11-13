<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!-- BEGIN: Header-->
<nav class="header-navbar navbar-expand-lg navbar navbar-with-menu floating-nav navbar-light navbar-shadow">
    <div class="navbar-wrapper">
        <div class="navbar-container content">
            <div class="navbar-collapse" id="navbar-mobile">
                <div class="mr-auto float-left bookmark-wrapper d-flex align-items-center">

                    <ul class="nav navbar-nav bookmark-icons">
                        <li class="nav-item d-none d-lg-block"><a class="nav-link" href="../admin/add-post.jsp" data-toggle="tooltip" data-placement="top" title="Thêm bài viết mới"><i class="ficon feather icon-edit"></i></a></li>
                        <li class="nav-item d-none d-lg-block"><a class="nav-link" href="../" target="_blank" data-toggle="tooltip" data-placement="top" title="Xem trang chủ"><i class="ficon feather icon-external-link"></i></a></li>
                    </ul>
                </div>
                <ul class="nav navbar-nav float-right">
                    <li class="nav-item nav-search"><a class="nav-link nav-link-search"><i class="ficon feather icon-search"></i></a>
                        <div class="search-input">
                            <div class="search-input-icon"><i class="feather icon-search primary"></i></div>
                            <input class="input" type="text" placeholder="Thử tìm một thứ gì đó..." tabindex="-1" data-search="template-list">
                            <div class="search-input-close"><i class="feather icon-x"></i></div>
                            <ul class="search-list"></ul>
                        </div>
                    </li>
                    <li class="dropdown dropdown-user nav-item"><a class="dropdown-toggle nav-link dropdown-user-link" href="#" data-toggle="dropdown">
                            <div class="user-nav d-sm-flex d-none"><span class="user-name text-bold-600">Admin</span><span class="user-status">Available</span></div><span><img class="round" src="../imgs/blog/admin.png" alt="avatar" height="40" width="40"></span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-right"><a class="dropdown-item" href="page-user-profile.html"><i class="feather icon-user"></i> Edit Profile</a><a class="dropdown-item" href="app-email.html"><i class="feather icon-mail"></i> My Inbox</a><a class="dropdown-item" href="app-todo.html"><i class="feather icon-check-square"></i> Task</a><a class="dropdown-item" href="app-chat.html"><i class="feather icon-message-square"></i> Chats</a>
                            <div class="dropdown-divider"></div><a class="dropdown-item" href="dang-xuat"><i class="feather icon-power"></i> Logout</a>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</nav>
<!-- END: Header-->


<!-- BEGIN: Main Menu-->
<div class="main-menu menu-fixed menu-light menu-accordion menu-shadow" data-scroll-to-active="true">
    <div class="navbar-header">
        <ul class="nav navbar-nav flex-row">
            <li class="nav-item mr-auto"><a class="navbar-brand" href="$">
                    <div class="brand-logo"></div>
                    <h2 class="brand-text mb-0">ĐDVN</h2>
                </a></li>
            <li class="nav-item nav-toggle"><a class="nav-link modern-nav-toggle pr-0" data-toggle="collapse"><i class="feather icon-x d-block d-xl-none font-medium-4 primary toggle-icon"></i><i class="toggle-icon feather icon-disc font-medium-4 d-none d-xl-block collapse-toggle-icon primary" data-ticon="icon-disc"></i></a></li>
        </ul>
    </div>
    <div class="shadow-bottom"></div>
    <div class="main-menu-content">
        <ul class="navigation navigation-main" id="main-menu-navigation" data-menu="menu-navigation">
            <li class=" nav-item"><a href="../admin/bang-dieu-khien.jsp"><i class="feather icon-home"></i><span class="menu-title">Bảng điều khiển</span></a></li>
            <li class=" navigation-header"><span>Quản trị nội dung</span>
            </li>

            <li class=" nav-item"><a href="#"><i class="feather icon-edit"></i><span class="menu-title">Bài viết</span></a>
                <ul class="menu-content">
                    <li class=" nav-item"><a href="../admin/"><i class="feather icon-list"></i><span class="menu-title">Bài viết đã đăng</span></a>
                    </li>
                    <li class=" nav-item"><a href="../admin/add-post.jsp"><i class="feather icon-upload"></i><span class="menu-title">Thêm bài viết mới</span></a>
                    </li>
                    <li class=" nav-item"><a href="../admin/approve-post.jsp"><i class="feather icon-edit"></i><span class="menu-title">Bài viết chờ duyệt</span></a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="../admin/all-page.jsp"><i class="feather icon-book"></i><span class="menu-title">Trang</span></a>
                <ul class="menu-content">
                    <li class=" nav-item"><a href="../admin/all-page.jsp"><i class="feather icon-book"></i><span class="menu-title">Tất cả Trang</span></a>
                    </li>
                    <li class=" nav-item"><a href="../admin/add-page.jsp"><i class="feather icon-edit"></i><span class="menu-title">Trang mới</span></a>
                    </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="../admin/galery.jsp"><i class="feather icon-image"></i><span class="menu-title">Thư viện</span></a>
                <ul class="menu-content">
                    <li class=" nav-item"><a href="../admin/galery.jsp"><i class="feather icon-image"></i><span class="menu-title">Thư viện</span></a>
                    </li>
                    <li class=" nav-item"><a href="../admin/upload.jsp"><i class="feather icon-upload"></i><span class="menu-title">Tải lên</span></a>
                    </li>
                </ul>
            </li>

            <li class=" nav-item"><a href="#"><i class="feather icon-message-square"></i><span class="menu-title">Bình luận</span></a>
                <ul class="menu-content">
                     <li class=" nav-item"><a href="../admin/comment.jsp"><i class="feather icon-list"></i><span class="menu-title">Bình luận đã duyệt</span></a>
                     </li>
                     <li class=" nav-item"><a href="../admin/approve-comment.jsp"><i class="feather icon-edit"></i><span class="menu-title">Bình luận chờ duyệt</span></a>
                     </li>
                </ul>
            </li>
            <li class=" nav-item"><a href="#"><i class="feather icon-list"></i><span class="menu-title">Chuyên mục</span></a>
                <ul class="menu-content">
                    <li><a class="dd-menu" href="../admin/dia-hinh"><i class="feather icon-map"></i><span class="menu-item">Địa hình</span></a>
                    </li>
                    <li><a class="dd-menu" href="../admin/tinh-thanh-pho"><i class="feather icon-map-pin"></i><span class="menu-item">Tỉnh/Thành phố</span></a>
                    </li>
                </ul>
            </li>
            <li class=" navigation-header"><span>Cài đặt</span>
            </li>

            <li class=" nav-item"><a href="../admin/cai-dat-chung"><i class="feather icon-layout"></i><span class="menu-title" data-i18n="Content">Cài đặt chung</span></a>
                <ul class="menu-content">
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Tổng quan</span></a>
                    </li>
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Viết</span></a>
                    </li>
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Đọc</span></a>
                    </li>
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Galery</span></a>
                    </li>
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Đường dẫn tĩnh</span></a>
                    </li>
                    <li><a href="../admin/setting-number.jsp"><i class="feather icon-circle"></i><span class="menu-item">Quyền riêng tư</span></a>
                    </li>
                </ul>
            </li>

            <li class=" nav-item"><a href="../admin/users.jsp"><i class="feather icon-users"></i><span class="menu-title">Người dùng</span></a>
                <ul class="menu-content">
                    <li><a href="../admin/users.jsp"><i class="feather icon-users"></i><span class="menu-item">Tất cả người dùng</span></a>
                    </li>
                    <li><a href="../admin/add-user.jsp"><i class="feather icon-user-plus"></i><span class="menu-item">Thêm người dùng</span></a>
                    </li>
                </ul>
            </li>

        </ul>
    </div>
</div>
<!-- END: Main Menu-->