<%-- 
    Document   : approve-process
    Created on : Nov 13, 2019, 3:17:16 PM
    Author     : duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Utils.ConnectDB"%>
<%@page import="Model.CommentModel"%>
<%@page import="Entity.Comment"%>
<%
    long id = 0;
    byte status = 0;
    request.setCharacterEncoding("UTF-8");
    if (request.getParameter("id") != null) {
        id = Long.parseLong(request.getParameter("id"));
    } else {
        response.sendRedirect("approve-comment.jsp");
    }
    if (request.getParameter("comment_status") != null) {
        status = Byte.parseByte(request.getParameter("comment_status"));
    }
    CommentModel comment = new CommentModel();
    comment.setStatus(id, status);
    response.sendRedirect("comment.jsp");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Duyệt bình luận</title>
    </head>
    <body>
        <h1>chào</h1>
        
    </body>
</html>
