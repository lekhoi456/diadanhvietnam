<%-- 
    Document   : index
    Created on : Nov 7, 2019, 3:06:26 AM
    Author     : KhoiLeQuoc
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("user") == null) {%>
<jsp:include page = "../admin/dang-nhap.jsp"/>
<%} else {%>
<jsp:include page = "../admin/dia-hinh.jsp"/>
<%}%>