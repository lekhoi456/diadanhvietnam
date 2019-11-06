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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    int p = 1;
    String s = "";
    String sortColumn = "";
    if (request.getParameter("page") != null) {
        p = Integer.parseInt(request.getParameter("page"));
    }
    Connection conn = ConnectDB.getConnection();
    ProvinceModel provinceModel = new ProvinceModel(conn);
    ArrayList<Province> provinceArrayList = provinceModel.getPaging(p, s, sortColumn);

      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Địa danh Việt Nam >> Tỉnh/Thành phố</title>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body class=\"vertical-layout vertical-menu-modern 2-columns  navbar-floating footer-static  \" data-open=\"click\" data-menu=\"vertical-menu-modern\" data-col=\"2-columns\">\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- BEGIN: Content-->\n");
      out.write("        <div class=\"app-content content\">\n");
      out.write("            <div class=\"content-overlay\"></div>\n");
      out.write("            <div class=\"header-navbar-shadow\"></div>\n");
      out.write("            <div class=\"content-wrapper\">\n");
      out.write("                <div class=\"content-header row\">\n");
      out.write("                    <div class=\"content-header-left col-md-12 col-12 mb-2\">\n");
      out.write("                        <div class=\"row breadcrumbs-top\">\n");
      out.write("                            <div class=\"col-12\">\n");
      out.write("                                <h2 class=\"content-header-title float-left mb-0\">Địa hình</h2>\n");
      out.write("                                <div class=\"breadcrumb-wrapper col-12\">\n");
      out.write("                                    <ol class=\"breadcrumb\">\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\">Bảng điều khiển</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"breadcrumb-item\"><a href=\"#\">Chuyên mục</a>\n");
      out.write("                                        </li>\n");
      out.write("                                        <li class=\"breadcrumb-item\">Địa hình\n");
      out.write("                                        </li>\n");
      out.write("                                    </ol>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"content-body\">\n");
      out.write("                    <!-- Data list view starts -->\n");
      out.write("                    <section id=\"data-thumb-view\" class=\"data-thumb-view-header\">\n");
      out.write("                        <div class=\"action-btns d-none\">\n");
      out.write("                            <div class=\"btn-dropdown mr-1 mb-1\">\n");
      out.write("                                <div class=\"btn-group dropdown actions-dropodown\">\n");
      out.write("                                    <button type=\"button\" class=\"btn btn-white px-1 py-1 dropdown-toggle waves-effect waves-light\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">\n");
      out.write("                                        Hành động\n");
      out.write("                                    </button>\n");
      out.write("                                    <div class=\"dropdown-menu dropdown-menu-right\">\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Xóa</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Lưu trữ</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Xuất</a>\n");
      out.write("                                        <a class=\"dropdown-item\" href=\"#\">Khác</a>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- dataTable starts -->\n");
      out.write("                        <div class=\"table-responsive\">\n");
      out.write("                            <table class=\"table data-thumb-view\">\n");
      out.write("                                <thead>\n");
      out.write("                                    <tr>\n");
      out.write("                                        <th></th>\n");
      out.write("                                        <th>#</th>\n");
      out.write("                                        <th>Ảnh đại diện</th>\n");
      out.write("                                        <th>Tên vùng</th>\n");
      out.write("                                        <th>Mô tả</th>\n");
      out.write("                                        <th>Đường dẫn tĩnh</th>\n");
      out.write("                                        <th>Quản trị</th>\n");
      out.write("                                    </tr>\n");
      out.write("                                </thead>\n");
      out.write("                                <tbody>\n");
      out.write("                                    ");

                                        int numberOfProvince = (p - 1) * ProvinceModel.numberInPaging;
                                        for (Province ls : provinceArrayList) {
                                            ++numberOfProvince;

                                    
      out.write("\n");
      out.write("                                    <tr>\n");
      out.write("                                        <td></td>\n");
      out.write("                                        <td>");
      out.print(numberOfProvince);
      out.write("\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"product-img\"><img src=\"../imgs/landscape/");
      out.print(ls.getThumbnail());
      out.write("\">\n");
      out.write("                                        </td>\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getName());
      out.write("</td>\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getContent());
      out.write("</td>\n");
      out.write("                                        <td class=\"product-name\">");
      out.print(ls.getGuid());
      out.write("</td>\n");
      out.write("                                        <td style=\"align:center;\">\n");
      out.write("                                            <a href=\"#\"><i class=\"ficon feather icon-edit\"></i></a>\n");
      out.write("                                            <a href=\"#\"><i class=\"ficon feather icon-trash\"></i></a>\n");
      out.write("                                        </td>\n");
      out.write("                                    </tr>\n");
      out.write("                                    ");

                                        }
                                    
      out.write("\n");
      out.write("                                </tbody>\n");
      out.write("                            </table>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- dataTable ends -->\n");
      out.write("\n");
      out.write("                        <!-- add new sidebar starts -->\n");
      out.write("                        <div class=\"add-new-data-sidebar\">\n");
      out.write("                            <div class=\"overlay-bg\"></div>\n");
      out.write("                            <div class=\"add-new-data\">\n");
      out.write("                                <div class=\"div mt-2 px-2 d-flex new-data-title justify-content-between\">\n");
      out.write("                                    <div>\n");
      out.write("                                        <h4>Thêm mới vùng</h4>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"hide-data-sidebar\">\n");
      out.write("                                        <i class=\"feather icon-x\"></i>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"data-items pb-3\">\n");
      out.write("                                    <div class=\"data-fields px-2 mt-3\">\n");
      out.write("                                        <div class=\"row\">\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\n");
      out.write("                                                <label for=\"data-name\">Tên vùng</label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"data-name\">\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\n");
      out.write("                                                <label for=\"data-name\">Mô tả</label>\n");
      out.write("                                                <input type=\"textarea\" class=\"form-control\" id=\"data-name\">\n");
      out.write("                                            </div>\n");
      out.write("\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col\">\n");
      out.write("                                                <label for=\"data-name\">Đường dẫn tĩnh</label>\n");
      out.write("                                                <input type=\"text\" class=\"form-control\" id=\"data-name\">\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"col-sm-12 data-field-col data-list-upload\">\n");
      out.write("                                                <form action=\"#\" class=\"dropzone dropzone-area\" id=\"dataListUpload\">\n");
      out.write("                                                    <div class=\"dz-message\">Ảnh đại diện</div>\n");
      out.write("                                                </form>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"add-data-footer d-flex justify-content-around px-5\">\n");
      out.write("                                    <div class=\"add-data-btn\">\n");
      out.write("                                        <button class=\"btn btn-primary\">Thêm mới</button>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"cancel-data-btn\">\n");
      out.write("                                        <button class=\"btn btn-outline-danger\">Hủy bỏ</button>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                        <!-- add new sidebar ends -->\n");
      out.write("                    </section>\n");
      out.write("                    <!-- Data list view end -->\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- END: Content-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
