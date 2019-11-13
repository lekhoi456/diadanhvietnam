<%-- 
    Document   : error-404
    Created on : Nov 13, 2019, 8:25:25 AM
    Author     : KhoiLeQuoc
--%>
<%@ page isErrorPage="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- meta tag -->
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Lỗi 404 Không tìm thấy trang - Blog Địa danh Việt Nam</title>
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
        
        <!-- Erro 404 Page Start Here -->
        <div id="rs-page-error" class="rs-page-error">
            <div class="container">
                <div class="error-text">
                    <h1 class="error-code">Lỗi 404</h1>
                    <h3 class="error-message">Không tìm thấy trang</h3>
                    <form>
                        <input type="search" placeholder="Tìm kiếm..." name="s" class="search-input" value="">
                        <button type="submit" value="Search"><i class="fa fa-search"></i></button>
                    </form>
                    <div class="back-home-btn">
                        <a class="readon" href="./" title="Trang chủ">Trở về trang chủ</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- Erro 404 Page End Here -->
        
        <jsp:include page="footer.jsp"/>
    </body>
</html>