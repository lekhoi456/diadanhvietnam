<%-- 
    Document   : approve-process
    Created on : Nov 13, 2019, 3:17:16 PM
    Author     : duong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Utils.ConnectDB"%>
<%@page import="Model.PostModel"%>
<%@page import="Entity.Post"%>
<%
    long id = 0;
    byte status = 0;
    request.setCharacterEncoding("UTF-8");
    if (request.getParameter("id") != null) {
        id = Long.parseLong(request.getParameter("id"));
    }
    if (request.getParameter("status") != null) {
        status = Byte.parseByte(request.getParameter("status"));
    }
    PostModel post = new PostModel();
    post.setStatus(id, status);
    response.sendRedirect("all-post.jsp");
%>