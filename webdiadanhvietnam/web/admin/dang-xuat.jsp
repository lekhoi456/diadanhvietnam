<%-- 
    Document   : dang-xuat
    Created on : Nov 7, 2019, 10:58:08 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") != null) {
        session.removeAttribute("user");
    }
    response.sendRedirect("./");
%>