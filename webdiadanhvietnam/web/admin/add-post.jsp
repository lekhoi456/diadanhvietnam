<%-- 
    Document   : newjsp
    Created on : Nov 11, 2019, 4:40:52 PM
    Author     : duong
--%>

<%@page import="Entity.Post"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.PostModel"%>
<%@page import="Utils.ConnectDB"%>
<%@page import="java.sql.Connection"%>
<%
    int p = 1;
    String s = "";
    String sortColumn = "";
    if (request.getParameter("page") != null) {
        p = Integer.parseInt(request.getParameter("page"));
    }
    PostModel postApproveModel = new PostModel();
    ArrayList<Post> postApproveArrayList = postApproveModel.getPostApproveList();
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://cdn.ckeditor.com/ckeditor5/15.0.0/classic/ckeditor.js"></script>
        <script src="https://code.jquery.com/jquery-1.12.3.min.js"></script>
        <title>Địa danh Việt Nam >> Bài viết chờ duyệt</title>
        <jsp:include page="include.jsp"/>
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/vendors/css/editors/quill/katex.min.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/vendors/css/editors/quill/monokai-sublime.min.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/vendors/css/editors/quill/quill.snow.css">
        <link rel="stylesheet" type="text/css" href="../admin/app-assets/vendors/css/editors/quill/quill.bubble.css">
    </head>
    <body class="vertical-layout vertical-menu-modern 2-columns  navbar-floating footer-static  " data-open="click" data-menu="vertical-menu-modern" data-col="2-columns">

        <jsp:include page="header.jsp"/>
        <!-- BEGIN: Content-->
        <div class="app-content content">
            <div class="content-overlay"></div>
            <div class="header-navbar-shadow"></div>
            <div class="content-wrapper">
                <div class="content-header row">
                    <div class="content-header-left col-md-12 col-12 mb-2">
                        <div class="row breadcrumbs-top">
                            <div class="col-12">
                                <h2 class="content-header-title float-left mb-0">Bài viết</h2>
                                <div class="breadcrumb-wrapper col-12">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="#">Bảng điều khiển</a>
                                        </li>
                                        <li class="breadcrumb-item"><a href="#">Bài viết</a>
                                        </li>
                                        <li class="breadcrumb-item active">Thêm bài viết mới
                                        </li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="content-body">
                    <!-- Data list view starts -->
                    <section id="data-thumb-view" class="data-thumb-view-header">
                        <div class="action-btns d-none">
                            <div class="btn-dropdown mr-1 mb-1">
                                <div class="btn-group dropdown actions-dropodown">
                                    <button type="button" class="btn btn-white px-1 py-1 dropdown-toggle waves-effect waves-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Hành động
                                    </button>
                                </div>
                            </div>
                        </div>
                        <!-- dataTable starts -->



                        <section id="basic-tabs-components">
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="card overflow-hidden">
                                        <div class="card-content">
                                            <div class="card-body">
                                                <ul class="nav nav-tabs" role="tablist">
                                                    <li class="nav-item">
                                                        <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" aria-controls="home" role="tab" aria-selected="true">Trình soạn thảo</a>
                                                    </li>
                                                    <li class="nav-item">
                                                        <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" aria-controls="profile" role="tab" aria-selected="false">Plain code</a>
                                                    </li>
                                                </ul>
                                                <div class="tab-content">
                                                    <div class="tab-pane active" id="home" aria-labelledby="home-tab" role="tabpanel">
                                                        <!-- full Editor start -->
                                                        <section class="full-editor">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <div class="card">
                                                                        <div class="card-content collapse show">
                                                                            <div class="card-body">
                                                                                <div class="row">
                                                                                    <div class="col-sm-12">
                                                                                        <div id="full-wrapper">
                                                                                            <div id="full-container">
                                                                                                <div class="editor">
                                                                                                    </br></br></br></br></br></br></br></br></br></br></br>
                                                                                                    </br></br></br></br></br></br></br></br></br></br></br>
                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </section>
                                                        <!-- full Editor end -->


                                                    </div>
                                                    <div class="tab-pane" id="profile" aria-labelledby="profile-tab" role="tabpanel">
                                                        <textarea  name="editor2" id="editor2" rows="10" cols="180" width="100%"></textarea>

                                                    </div>
                                                    <button type="button" class="btn bg-gradient-primary mr-1 mb-1 waves-effect waves-light">Đăng bài viết</button>
                                                    <button type="button" class="btn bg-gradient-danger mr-1 mb-1 waves-effect waves-light">Hủy bỏ</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </section>
                </div>

            </div>
            <!-- dataTable ends -->
        </section>
        <!-- Data list view end -->

    </div>
</div>
</div>
<!-- END: Content-->
<jsp:include page="footer.jsp"/>
</body>
</html>
