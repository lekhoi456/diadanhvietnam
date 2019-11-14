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
                        
                            <h1>Classic editor</h1>
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tabs" href="#content">Nội dung bài viết</a></li>
                                <li><a data-toggle="tabs" href="#code">Code html</a></li>
                            </ul>
                            
                               
<<<<<<< Updated upstream
                                    <textarea name="content" id="editor" placeholder="This is some sample content">
                                    </textarea>
                                

                                
=======
                            <textarea name="content" id="editor"  rows="10" placeholder="This is some sample content">
                                    </textarea>
                            <br><br>
>>>>>>> Stashed changes
                                    <textarea  name="editor2" id="editor2" rows="10" cols="80"></textarea>
                               
                            <button type="button" id="submit">Get Data</button>
                            <script>
                                let editor;

                                ClassicEditor
                                        .create(document.querySelector('#editor'))
                                        .then(newEditor => {
                                            editor = newEditor;
                                        })
                                        .catch(error => {
                                            console.error(error);
                                        });

                                // Assuming there is a <button id="submit">Submit</button> in your application.
                                document.querySelector('#submit').addEventListener('click', () => {
                                    const editorData = editor.getData();
                                    $("#editor2").val(editorData);
                                    // ...
                                });
                            </script>
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
