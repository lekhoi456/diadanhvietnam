<%-- 
    Document   : province
    Created on : Oct 17, 2019, 11:11:37 AM
    Author     : KhoiLeQuoc
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList" %>
<%@page import="Model.ProvinceModel" %>
<%@page import="Entity.Province" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Province</title>
    </head>
    <body>
        <h1>List Province</h1>
        <ul>
            <%
                try {
                    ProvinceModel provinceModel = new ProvinceModel();
                    ArrayList<Province> provinceList = provinceModel.getListProvince();
                    for (Province pl : provinceList) {
                            out.println("<li>" + pl.getName() + "</li>");
                        }
                } catch (Exception e) {
                    out.println("Error: " + e);
                }       
            %>

        </ul>

    </body>
</html>
