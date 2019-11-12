package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Entity.Province;
import java.util.ArrayList;
import Model.ProvinceModel;
import Utils.ConnectDB;
import java.sql.Connection;

public final class tinh_002dthanh_002dpho_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("    <head>\r\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("        <title>Địa danh Việt Nam >> Tỉnh/Thành phố</title>\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include.jsp", out, false);
      out.write("\r\n");
      out.write("    </head>\r\n");
      out.write("    <body class=\"vertical-layout vertical-menu-modern 2-columns  navbar-floating footer-static  \" data-open=\"click\" data-menu=\"vertical-menu-modern\" data-col=\"2-columns\">\r\n");
      out.write("\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\r\n");
      out.write("        <!-- BEGIN: Content-->\r\n");
      out.write("        <div class=\"app-content content\">\r\n");
      out.write("            <div class=\"content-overlay\"></div>\r\n");
      out.write("            <div class=\"header-navbar-shadow\"></div>\r\n");
      out.write("            <div class=\"content-wrapper\">\r\n");
      out.write("                <div class=\"content-header row\">\r\n");
      out.write("                    <div class=\"content-header-left col-md-12 col-12 mb-2\">\r\n");
      out.write("                        <div class=\"row breadcrumbs-top\">\r\n");
      out.write("                            <div class=\"col-12\">\r\n");
      out.write("                                <h2 class=\"content-header-title float-left mb-0\">Địa hình</h2>\r\n");
      out.write("                                <div class=\"breadcrumb-wrapper col-12\">\r\n");
      out.write("                                    <ol class=\"breadcrumb\">\r\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\">Bảng điều khiển</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\">Chuyên mục</a>\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                        <li class=\"breadcrumb-item\">Địa hình\r\n");
      out.write("                                        </li>\r\n");
      out.write("                                    </ol>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"content-body\">\r\n");
      out.write("                    <!-- Data list view starts -->\r\n");
      out.write("                    <section id=\"data-thumb-view\" class=\"data-thumb-view-header\">\r\n");
      out.write("                        <div class=\"action-btns d-none\">\r\n");
      out.write("                            <div class=\"btn-dropdown mr-1 mb-1\">\r\n");
      out.write("                                <div class=\"btn-group dropdown actions-dropodown\">\r\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-white px-1 py-1 dropdown-toggle waves-effect waves-light\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\r\n");
      out.write("                                        Hành động\r\n");
      out.write("                                    </button>\r\n");
      out.write("                                    <div class=\"dropdown-menu dropdown-menu-right\">\r\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Xóa</a>\r\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Lưu trữ</a>\r\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Xuất</a>\r\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Khác</a>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- dataTable starts -->\r\n");
      out.write("                        <div class=\"table-responsive\">\r\n");
      out.write("                            <table class=\"table data-thumb-view\">\r\n");
      out.write("                                <thead>\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <th></th>\r\n");
      out.write("                                        <th>#</th>\r\n");
      out.write("                                        <th>Ảnh đại diện</th>\r\n");
      out.write("                                        <th>Tên vùng</th>\r\n");
      out.write("                                        <th>Mô tả</th>\r\n");
      out.write("                                        <th>Đường dẫn tĩnh</th>\r\n");
      out.write("                                        <th>Quản trị</th>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                </thead>\r\n");
      out.write("                                <tbody>\r\n");
      out.write("                                    ");

                                        int numeric = 0;
                                        for (Province ls : provinceArrayList) {
                                            ++numeric;
                                    
      out.write("\r\n");
      out.write("                                    <tr>\r\n");
      out.write("                                        <td></td>\r\n");
      out.write("                                        <td>");
      out.print(numeric);
      out.write("\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                        <td class=\"product-img\"><img src=\"../imgs/province/");
      out.print(ls.getThumbnail());
      out.write("\">\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getName());
      out.write("</td>\r\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getContent());
      out.write("</td>\r\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getGuid());
      out.write("</td>\r\n");
      out.write("                                        <td style=\"align:center;\">\r\n");
      out.write("                                            <a href=\"#\"><i class=\"ficon feather icon-edit\"></i></a>\r\n");
      out.write("                                            <a href=\"#\"><i class=\"ficon feather icon-trash\"></i></a>\r\n");
      out.write("                                        </td>\r\n");
      out.write("                                    </tr>\r\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\r\n");
      out.write("                                </tbody>\r\n");
      out.write("                            </table>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- dataTable ends -->\r\n");
      out.write("\r\n");
      out.write("                        <!-- add new sidebar starts -->\r\n");
      out.write("                        <div class=\"add-new-data-sidebar\">\r\n");
      out.write("                            <div class=\"overlay-bg\"></div>\r\n");
      out.write("                            <div class=\"add-new-data\">\r\n");
      out.write("                                <div class=\"div mt-2 px-2 d-flex new-data-title justify-content-between\">\r\n");
      out.write("                                    <div>\r\n");
      out.write("                                        <h4>Thêm mới vùng</h4>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"hide-data-sidebar\">\r\n");
      out.write("                                        <i class=\"feather icon-x\"></i>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"data-items pb-3\">\r\n");
      out.write("                                    <div class=\"data-fields px-2 mt-3\">\r\n");
      out.write("                                        <div class=\"row\">\r\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\r\n");
      out.write("                                                <label for=\"data-name\">Tên vùng</label>\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"data-name\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\r\n");
      out.write("                                                <label for=\"data-name\">Mô tả</label>\r\n");
      out.write("                                                <input type=\"textarea\" class=\"form-control\" id=\"data-name\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("\r\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\r\n");
      out.write("                                                <label for=\"data-name\">Đường dẫn tĩnh</label>\r\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"data-name\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col data-list-upload\">\r\n");
      out.write("                                                <form action=\"#\" class=\"dropzone dropzone-area\" id=\"dataListUpload\">\r\n");
      out.write("                                                    <div class=\"dz-message\">Ảnh đại diện</div>\r\n");
      out.write("                                                </form>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"add-data-footer d-flex justify-content-around px-5\">\r\n");
      out.write("                                    <div class=\"add-data-btn\">\r\n");
      out.write("                                        <button class=\"btn btn-primary\">Thêm mới</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                    <div class=\"cancel-data-btn\">\r\n");
      out.write("                                        <button class=\"btn btn-outline-danger\">Hủy bỏ</button>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- add new sidebar ends -->\r\n");
      out.write("                    </section>\r\n");
      out.write("                    <!-- Data list view end -->\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("        <!-- END: Content-->\r\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\r\n");
      out.write("    </body>\r\n");
      out.write("</html>\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
