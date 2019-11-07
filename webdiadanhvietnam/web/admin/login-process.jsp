<%-- 
    Document   : login-process
    Created on : Nov 7, 2019, 3:08:05 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String username = request.getParameter("username");
    String password = request.getParameter("password");
    if (username.equals(password)) {
        session.setAttribute("user", username);
    } else if (session.getAttribute("user") != null) {
        session.removeAttribute("user");
    }
    response.sendRedirect("./");
%>