package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import Entity.User;
import Model.UserModel;
import java.text.SimpleDateFormat;
import Model.PostModel;
import Model.ProvinceModel;
import Model.LandscapeModel;
import Entity.Post;
import Entity.Landscape;
import Entity.Province;
import java.util.ArrayList;
import Utils.ConnectDB;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    PostModel postModel = new PostModel();
    ArrayList<Post> postArrayList = postModel.getList();

    LandscapeModel landscapeModel = new LandscapeModel();
    ArrayList<Landscape> landscapeArrayList = landscapeModel.getList();

    ProvinceModel provinceModel = new ProvinceModel();
    ArrayList<Province> provinceArrayList = provinceModel.getList();

    UserModel userModel = new UserModel();
    ArrayList<User> userArrayList = userModel.getList();



      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <!-- meta tag -->\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"ie=edge\">\n");
      out.write("        <title>Blog Địa danh Việt Nam</title>\n");
      out.write("        <meta name=\"description\" content=\"Blog cung cấp thông tin về các địa danh ở Việt Nam, cung cấp kiến thức về du lịch cho mọi người.\">\n");
      out.write("        <!-- responsive tag -->\n");
      out.write("        <meta http-equiv=\"x-ua-compatible\" content=\"ie=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <!-- favicon -->\n");
      out.write("        <link rel=\"apple-touch-icon\" href=\"./imgs/favicon.png\">\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"./imgs/favicon.png\">\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "include.jsp", out, false);
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "header.jsp", out, false);
      out.write("\n");
      out.write("        <!-- Banner Section Start -->\n");
      out.write("        <div id=\"rs-banner\" class=\"rs-banner home2banner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"banner-content\">\n");
      out.write("                    <div class=\"author-img\">\n");
      out.write("                        <img src=\"imgs/banner/logo-be.png\" alt=\"Địa danh Việt Nam logo\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"content-part\">\n");
      out.write("                        <div class=\"sub-top\">Traveling throughout Vietnam</div>\n");
      out.write("                        <h1 class=\"author-name\">Địa danh Việt Nam</h1>\n");
      out.write("                        <p class=\"author-desc\">Có một Việt Nam tươi đẹp như thế: Chúng tôi tạo ra blog này với mục đích giới thiệu cho bạn những địa điểm du dịch ở Việt Nam. Blog cũng là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp dãy đất hình chữ S.\n");
      out.write("                        </p>\n");
      out.write("                        <div class=\"banner-btn\">\n");
      out.write("                            <a class=\"readon\" href=\"./gioi-thieu\">Về chúng tôi</a>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Banner Section End -->\n");
      out.write("\n");
      out.write("        <!-- Landscape Section Start -->\n");
      out.write("        <div id=\"rs-category\" class=\"rs-category nav-style pt-70 pb-70\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"rs-carousel owl-carousel\" data-loop=\"true\" data-items=\"3\" data-margin=\"30\" data-autoplay=\"true\"\n");
      out.write("                     data-autoplay-timeout=\"8000\" data-smart-speed=\"2000\" data-dots=\"false\" data-nav=\"false\"\n");
      out.write("                     data-nav-speed=\"false\" data-mobile-device=\"1\" data-mobile-device-nav=\"false\"\n");
      out.write("                     data-mobile-device-dots=\"false\" data-ipad-device=\"2\" data-ipad-device-nav=\"true\"\n");
      out.write("                     data-ipad-device-dots=\"false\" data-ipad-device2=\"1\" data-ipad-device-nav2=\"true\"\n");
      out.write("                     data-ipad-device-dots2=\"false\" data-md-device=\"3\" data-md-device-nav=\"true\" data-md-device-dots=\"false\">\n");
      out.write("                    ");
                                for (Landscape ls : landscapeArrayList) {
                            out.println("<div class='single-category hover-grow'>");
                            out.println("<div class='category-part'>");
                            out.println("<a href='./dia-hinh?guid=" + ls.getGuid() + "'><img src='./imgs/landscape/" + ls.getThumbnail() + "' alt='" + ls.getName() + "'></a>");
                            out.println("<div class='category-title'>");
                            out.println("<h3><a href='/dia-hinh?guid=" + ls.getGuid() + "'>" + ls.getName() + "</a></h3>");
                            out.println("</div>");
                            out.println("</div>");
                            out.println("</div>");
                        }
                    
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- Landscape Section End -->\n");
      out.write("\n");
      out.write("        <!-- Recent Articles Start -->\n");
      out.write("        <div id=\"rs-articles\" class=\"rs-articles home2style pt-67 pb-61\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"sec-title text-center\">\n");
      out.write("                    <h2 class=\"title uppercase\">Địa điểm Check-in mới</h2>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    ");

                        SimpleDateFormat dFormat = new SimpleDateFormat("dd/MM/yyyy");
                        for (int i = postArrayList.size() - 1; i > postArrayList.size() - 7; i--) {
      out.write("\n");
      out.write("                    <div class=\"col-lg-4 col-md-6 col-sm-12 blogBox moreBox\">\n");
      out.write("                        <div class=\"article-grid mb-42\">\n");
      out.write("                            <div class=\"hover-grow\">\n");
      out.write("                                <a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write("\"><img src=\"./imgs/post-image/");
      out.print(postArrayList.get(i).getThumbnail());
      out.write("\" alt=\"");
      out.print(postArrayList.get(i).getTitle());
      out.write("\"></a>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"article-content\">\n");
      out.write("                                <div class=\"categories\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"./dia-hinh?guid=");
      out.print(landscapeModel.getGuidById(postArrayList.get(i).getLandscape_id()));
      out.write('"');
      out.write('>');
      out.print(landscapeModel.getNameById(postArrayList.get(i).getLandscape_id()));
      out.write("</a></li>\n");
      out.write("                                        <li><a href=\"./tinh-thanh-pho?guid=");
      out.print(provinceModel.getGuidById(postArrayList.get(i).getProvince_id()));
      out.write('"');
      out.write('>');
      out.print(provinceModel.getNameById(postArrayList.get(i).getProvince_id()));
      out.write("</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"post-date-author\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><i class=\"fa fa-calendar\"></i>");
      out.print(dFormat.format(postArrayList.get(i).getPost_date()));
      out.write("</li>\n");
      out.write("                                        <li><a href=\"./thanh-vien?userId=");
      out.print(userModel.getUsernameById(postArrayList.get(i).getPost_author()));
      out.write("\"><i class=\"fa fa-user-o\"></i>");
      out.print(userModel.getDisplaynameById(postArrayList.get(i).getPost_author()));
      out.write("</a></li>\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <h3 class=\"article-title\"><a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write('"');
      out.write('>');
      out.print(postArrayList.get(i).getTitle());
      out.write("</a></h3>\n");
      out.write("                                <div class=\"desc\">\n");
      out.write("                                    ");
      out.print(postArrayList.get(i).getDescription());
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    ");
}
      out.write("\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        <div id=\"rs-articles\" class=\"rs-articles home2style pb-60\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-8 md-mb-30\">\n");
      out.write("                        <div class=\"article-grid hover-shine mb-40\">\n");
      out.write("                            <figure>\n");
      out.write("                                <a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(postArrayList.size() - 7).getGuid());
      out.write("\"><img src=\"./imgs/post-image/");
      out.print(postArrayList.get(postArrayList.size() - 7).getThumbnail());
      out.write("\" alt=\"");
      out.print(postArrayList.get(postArrayList.size() - 7).getTitle());
      out.write("\"></a>\n");
      out.write("                            </figure>\n");
      out.write("                            <div class=\"article-content\">\n");
      out.write("                                <div class=\"categories\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><a href=\"./dia-hinh?guid=");
      out.print(landscapeModel.getGuidById(postArrayList.get(postArrayList.size() - 7).getLandscape_id()));
      out.write('"');
      out.write('>');
      out.print(landscapeModel.getNameById(postArrayList.get(postArrayList.size() - 7).getLandscape_id()));
      out.write("</a></li>\n");
      out.write("                                        <li><a href=\"./tinh-thanh-pho?guid=");
      out.print(provinceModel.getGuidById(postArrayList.get(postArrayList.size() - 7).getProvince_id()));
      out.write('"');
      out.write('>');
      out.print(provinceModel.getNameById(postArrayList.get(postArrayList.size() - 7).getProvince_id()));
      out.write("</a></li>\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"post-date-author\">\n");
      out.write("                                    <ul>\n");
      out.write("                                        <li><i class=\"fa fa-calendar\"></i>");
      out.print(dFormat.format(postArrayList.get(6).getPost_date()));
      out.write("</li>\n");
      out.write("                                        <li><a href=\"./thanh-vien?userId=");
      out.print(userModel.getUsernameById(postArrayList.get(6).getPost_author()));
      out.write("\"><i class=\"fa fa-user-o\"></i>");
      out.print(userModel.getDisplaynameById(postArrayList.get(6).getPost_author()));
      out.write("</a></li>\n");
      out.write("\n");
      out.write("                                    </ul>\n");
      out.write("                                </div>\n");
      out.write("                                <h2 class=\"article-title title-single-style\"><a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(6).getGuid());
      out.write('"');
      out.write('>');
      out.print(postArrayList.get(6).getTitle());
      out.write("</a></h2>\n");
      out.write("\n");
      out.write("                                <p class=\"desc\">\n");
      out.write("                                    ");
      out.print(postArrayList.get(6).getDescription());
      out.write("\n");
      out.write("                                </p>\n");
      out.write("                                <div class=\"continue-btn\">\n");
      out.write("                                    <a class=\"readon\" href=\"./bai-viet?guid=");
      out.print(postArrayList.get(6).getGuid());
      out.write("\">Đọc thêm</a>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"row\">\n");
      out.write("                                    ");

                                        for (int i = postArrayList.size() - 8; i > postArrayList.size() - 20; i--) {
      out.write("\n");
      out.write("                                    <div class=\"col-lg-6 col-md-6 blogBox moreBox\">\n");
      out.write("                                        <div class=\"article-grid mb-42\">\n");
      out.write("                                            <div class=\"hover-grow\">\n");
      out.write("                                                <a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write("\"><img src=\"./imgs/post-image/");
      out.print(postArrayList.get(i).getThumbnail());
      out.write("\" alt=\"");
      out.print(postArrayList.get(i).getTitle());
      out.write("\"></a>\n");
      out.write("                                            </div>\n");
      out.write("                                            <div class=\"article-content\">\n");
      out.write("                                                <div class=\"categories\">\n");
      out.write("                                                    <ul>\n");
      out.write("                                                        <li><a href=\"./dia-hinh?guid=");
      out.print(landscapeModel.getGuidById(postArrayList.get(i).getLandscape_id()));
      out.write('"');
      out.write('>');
      out.print(landscapeModel.getNameById(postArrayList.get(i).getLandscape_id()));
      out.write("</a></li>\n");
      out.write("                                                        <li><a href=\"./tinh-thanh-pho?guid=");
      out.print(provinceModel.getGuidById(postArrayList.get(i).getProvince_id()));
      out.write('"');
      out.write('>');
      out.print(provinceModel.getNameById(postArrayList.get(i).getProvince_id()));
      out.write("</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                                <div class=\"post-date-author\">\n");
      out.write("                                                    <ul>\n");
      out.write("                                                        <li><i class=\"fa fa-calendar\"></i>");
      out.print(dFormat.format(postArrayList.get(i).getPost_date()));
      out.write("</li>\n");
      out.write("                                                        <li><a href=\"./thanh-vien?userId=");
      out.print(userModel.getUsernameById(postArrayList.get(i).getPost_author()));
      out.write("\"><i class=\"fa fa-user-o\"></i>");
      out.print(userModel.getDisplaynameById(postArrayList.get(i).getPost_author()));
      out.write("</a></li>\n");
      out.write("                                                    </ul>\n");
      out.write("                                                </div>\n");
      out.write("                                                <h3 class=\"article-title\"><a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write('"');
      out.write('>');
      out.print(postArrayList.get(i).getTitle());
      out.write("</a></h3>\n");
      out.write("                                                <div class=\"desc\">\n");
      out.write("                                                    ");
      out.print(postArrayList.get(i).getDescription());
      out.write("\n");
      out.write("                                                </div>\n");
      out.write("                                            </div>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                    ");
}
      out.write("\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-lg-4\">\n");
      out.write("                        <div class=\"article-sidebar\">\n");
      out.write("                            <div class=\"author-part mb-40\">\n");
      out.write("                                <div class=\"sidebar-title text-center\">\n");
      out.write("                                    <h3 class=\"title uppercase mb-50\">Về chúng tôi</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"author-img hover-shine text-center\">\n");
      out.write("                                    <figure>\n");
      out.write("                                        <a href=\"./gioi-thieu\"><img src=\"imgs/logo.png\" alt=\"Địa Danh Việt Nam\"></a>\n");
      out.write("                                    </figure>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"author-desc text-center\">\n");
      out.write("                                    <p>Blog Địa danh Việt Nam là nơi cộng đồng đam mê du lịch chia sẻ những địa điểm mới, tươi đẹp trên khắp Việt Nam.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"sidebar-newsletter mb-40\">\n");
      out.write("                                <div class=\"sidebar-title text-center\">\n");
      out.write("                                    <h3 class=\"uppercase margin-0\">Đăng ký nhận bài viết</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <form class=\"news-form\">\n");
      out.write("                                    <input type=\"text\" class=\"form-input\" placeholder=\"Email của bạn\" required>\n");
      out.write("                                    <button type=\"submit\" class=\"form-button\">Đăng ký</button>\n");
      out.write("                                </form>\n");
      out.write("                                <div class=\"newsletter-text\">\n");
      out.write("                                    <p class=\"bold margin-0\">Nhận bài viết mới thông qua email của bạn.</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"popular-post mb-50\">\n");
      out.write("                                <div class=\"sidebar-title text-center\">\n");
      out.write("                                    <h3 class=\"title uppercase\">Địa điểm được quan tâm</h3>\n");
      out.write("                                </div>\n");
      out.write("                                ");

                                    for (int i = 1; i < 10; i++) {
      out.write("\n");
      out.write("                                <div class=\"single-post mb-18\">\n");
      out.write("                                    <div class=\"post-image hover-grow\">\n");
      out.write("                                        <a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write("\"><img src=\"./imgs/post-image/");
      out.print(postArrayList.get(i).getThumbnail());
      out.write("\" alt=\"");
      out.print(postArrayList.get(i).getTitle());
      out.write("\"></a>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"post-desc\">\n");
      out.write("                                        <ul>\n");
      out.write("                                            <li><i class=\"fa fa-calendar\"></i>");
      out.print(dFormat.format(postArrayList.get(i).getPost_date()));
      out.write("</li>\n");
      out.write("                                            <li><a href=\"./thanh-vien?userId=");
      out.print(userModel.getUsernameById(postArrayList.get(i).getPost_author()));
      out.write("\"><i class=\"fa fa-user-o\"></i>");
      out.print(userModel.getDisplaynameById(postArrayList.get(i).getPost_author()));
      out.write("</a></li>\n");
      out.write("                                        </ul>\n");
      out.write("                                        <div class=\"post-title\">\n");
      out.write("                                            <h5 class=\"margin-0\"><a href=\"./bai-viet?guid=");
      out.print(postArrayList.get(i).getGuid());
      out.write('"');
      out.write('>');
      out.print(postArrayList.get(i).getTitle());
      out.write("</a></h5>\n");
      out.write("                                        </div>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                ");
}
      out.write("\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"add-banner mb-40\">\n");
      out.write("                                <div class=\"sidebar-title text-center\">\n");
      out.write("                                    <h3 class=\"uppercase margin-0\">ADS</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <div class=\"add-img hover-shine text-center\">\n");
      out.write("                                    <figure>\n");
      out.write("                                        <a href=\"#\"><img src=\"imgs/ads.jpg\"\n");
      out.write("                                                         alt=\"Ads here\"></a>\n");
      out.write("                                    </figure>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"sidebar-categories\">\n");
      out.write("                                <div class=\"sidebar-title text-center\">\n");
      out.write("                                    <h3 class=\"title uppercase mb-20\">Địa hình</h3>\n");
      out.write("                                </div>\n");
      out.write("                                <ul class=\"category-tags\">\n");
      out.write("                                    ");
 for (Landscape ls : landscapeArrayList) {
      out.write("\n");
      out.write("                                    <li><a href=\"./dia-hinh?guid=");
      out.print(ls.getGuid());
      out.write("\"># ");
      out.print(ls.getName());
      out.write("</a></li>\n");
      out.write("                                    ");
}
                                    
      out.write("\n");
      out.write("                                </ul>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "footer.jsp", out, false);
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
