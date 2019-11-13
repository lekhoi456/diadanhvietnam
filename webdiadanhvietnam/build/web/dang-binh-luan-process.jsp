<%-- 
    Document   : dang-binh-luan-process
    Created on : Nov 13, 2019, 2:51:06 PM
    Author     : KhoiLeQuoc
--%>

<%@page import="java.sql.Date"%>
<%@page import="Entity.Comment"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.CommentModel"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    
    request.setCharacterEncoding("UTF-8");
    long post_id = 16;
    long user_id = 2;
    String comment_content = "";
    comment_content = request.getParameter("message");
    String guid = "";
    guid = "cau-trang-tien-hue";
    CommentModel commentModel = new CommentModel();
        commentModel.addComment(post_id, user_id, comment_content);
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Đã thêm bình luận</title>
    </head>
    <body>
        <p>Đã thêm bình luận, chờ duyệt...</p>
        <%response.sendRedirect("./bai-viet?guid=" + guid + "&cmt=cmt-ok#comment-block");%>
    </body>
</html>
