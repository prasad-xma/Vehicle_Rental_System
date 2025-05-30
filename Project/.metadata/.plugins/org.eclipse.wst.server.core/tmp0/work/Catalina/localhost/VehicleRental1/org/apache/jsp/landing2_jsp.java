/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/10.1.26
 * Generated at: 2024-10-16 04:39:50 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.jsp.*;

public final class landing2_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports,
                 org.apache.jasper.runtime.JspSourceDirectives {

  private static final jakarta.servlet.jsp.JspFactory _jspxFactory =
          jakarta.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.LinkedHashSet<>(4);
    _jspx_imports_packages.add("jakarta.servlet");
    _jspx_imports_packages.add("jakarta.servlet.http");
    _jspx_imports_packages.add("jakarta.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile jakarta.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public boolean getErrorOnELNotFound() {
    return false;
  }

  public jakarta.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final jakarta.servlet.http.HttpServletRequest request, final jakarta.servlet.http.HttpServletResponse response)
      throws java.io.IOException, jakarta.servlet.ServletException {

    if (!jakarta.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
    }

    final jakarta.servlet.jsp.PageContext pageContext;
    jakarta.servlet.http.HttpSession session = null;
    final jakarta.servlet.ServletContext application;
    final jakarta.servlet.ServletConfig config;
    jakarta.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    jakarta.servlet.jsp.JspWriter _jspx_out = null;
    jakarta.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"UTF-8\">\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\r\n");
      out.write("    <title>Header</title>\r\n");
      out.write("    <link href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css\" rel=\"stylesheet\" integrity=\"sha384-Hi, I'm Copilot.\r\n");
      out.write("QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH\" crossorigin=\"anonymous\">\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"styles/header.css\">\r\n");
      out.write("    \r\n");
      out.write("     <link rel=\"stylesheet\" href=\"css/style.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- link to favicon -->\r\n");
      out.write("    <link rel=\"shortcut icon\" href=\"https://img.icons8.com/?size=100&id=111270&format=png&color=000000\" type=\"image/x-icon\"> \r\n");
      out.write("\r\n");
      out.write("    <!-- link css media screen file for responsive website  -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/screen.css\">\r\n");
      out.write("\r\n");
      out.write("    <!-- link text css file for test some css parts  -->\r\n");
      out.write("    <link rel=\"stylesheet\" href=\"css/test.css\">\r\n");
      out.write("    \r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("<!--Header nav start-->\r\n");
      out.write("    <nav class=\"navbar navbar-expand-lg bg-body-tertiary p-0\">\r\n");
      out.write("        <div class=\"container-fluid bg-dark navbar-dark mb-3 p-3\">\r\n");
      out.write("          <a class=\"navbar-brand\" href=\"#\">Rent-ME!</a>\r\n");
      out.write("          <button class=\"navbar-toggler\" type=\"button\" data-bs-toggle=\"collapse\" data-bs-target=\"#navbarSupportedContent\" aria-controls=\"navbarSupportedContent\" aria-expanded=\"false\" aria-label=\"Toggle navigation\">\r\n");
      out.write("            <span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("          </button>\r\n");
      out.write("          <div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("            <ul class=\"navbar-nav me-auto mb-2 mb-lg-0\">\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link active hdr\" aria-current=\"page\" href=\"#webHome\">Home</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link active hdr\" href=\"#about\">About-Us</a>\r\n");
      out.write("              </li>\r\n");
      out.write("\r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link active hdr\" href=\"#catogeries\">Catogeries</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              \r\n");
      out.write("              <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link active hdr\" href=\"#chefs\">Rental Experts</a>\r\n");
      out.write("              </li>\r\n");
      out.write("              \r\n");
      out.write("               <li class=\"nav-item\">\r\n");
      out.write("                <a class=\"nav-link active hdr\" href=\"#contact\">Contact Us</a>\r\n");
      out.write("              </li>\r\n");
      out.write("             \r\n");
      out.write("\r\n");
      out.write("              \r\n");
      out.write("           \r\n");
      out.write("            </ul>\r\n");
      out.write("            \r\n");
      out.write("             <div class=\"mx-3\">\r\n");
      out.write("              <button type=\"button\" class=\"btn btn-primary\" type=\"submit\" data-bs-toggle=\"modal\" data-bs-target=\"#exampleModal\">Log-in</button>\r\n");
      out.write("\r\n");
      out.write("              <!--Start of the login modal-->\r\n");
      out.write("              <div class=\"modal fade\" id=\"exampleModal\" tabindex=\"-1\" aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("                <div class=\"modal-dialog modal-dialog-centered\">\r\n");
      out.write("                  <div class=\"modal-content\">\r\n");
      out.write("                    <div class=\"modal-body p-0\">\r\n");
      out.write("                      <!--Login form-->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                      <button type=\"button\" class=\"btn-close\" data-bs-dismiss=\"modal\" aria-label=\"Close\" style=\"position: absolute;right: 0;\"></button>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                      <div>\r\n");
      out.write("                        <form  method=\"post\" action=\"LoginServlet\" class=\"container p-5 bg-dark text-white\" style=\"width: 100%;\">\r\n");
      out.write("                      \r\n");
      out.write("                          <h2 class=\"text-center\">Sign in</h2>\r\n");
      out.write("                      \r\n");
      out.write("                          <label>\r\n");
      out.write("                            Email : \r\n");
      out.write("                            </label><br>\r\n");
      out.write("                            <input type=\"email\" class=\"form-control border-primary\" id=\"email\" placeholder=\"name@example.com\" name=\"email\" required><br>\r\n");
      out.write("                      \r\n");
      out.write("                            <label>\r\n");
      out.write("                              Password : \r\n");
      out.write("                              </label>\r\n");
      out.write("                              <input type=\"password\" class=\"form-control border-primary\" id=\"pass\"  placeholder=\"password\" name=\"pass\" required>\r\n");
      out.write("                      \r\n");
      out.write("                              <div class=\"my-4\">\r\n");
      out.write("                              <div class=\"row text-center\">\r\n");
      out.write("                      \r\n");
      out.write("                              <input class=\"btn btn-primary\" type = \"submit\" name = \"sub\" value=\"Log-in\"><br>\r\n");
      out.write("                              </div>\r\n");
      out.write("                              \r\n");
      out.write("                              <small style=\"float: right;\"><a href=\"forgetPass.jsp\" style=\"text-decoration: none;\">forgot-password</a></small><br>\r\n");
      out.write("                              <small class=\"text-center\" style=\"float: left;\"><a href=\"UserRegistration.jsp\"  class=\"text-center\"  style=\"text-decoration: none;\">Register user</a></small>\r\n");
      out.write("                              </div>\r\n");
      out.write("                      \r\n");
      out.write("                      \r\n");
      out.write("                      \r\n");
      out.write("                      \r\n");
      out.write("                          </form>\r\n");
      out.write("                      \r\n");
      out.write("                          </div>\r\n");
      out.write("                          \r\n");
      out.write("                          \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("                      <!--End of Login form-->\r\n");
      out.write("                    </div>\r\n");
      out.write("                  </div>\r\n");
      out.write("                </div>\r\n");
      out.write("              </div>\r\n");
      out.write("\r\n");
      out.write("              <!--End of the login-->\r\n");
      out.write("              \r\n");
      out.write("            </div>\r\n");
      out.write("          </div>\r\n");
      out.write("        </div>\r\n");
      out.write("      </nav>\r\n");
      out.write("\r\n");
      out.write("      <!--Header nav end-->\r\n");
      out.write("      \r\n");
      out.write("      \r\n");
      out.write("      <div class=\"image\" id=\"bgImage\">\r\n");
      out.write("        <div class=\"image__cont\" id=\"webHome\">\r\n");
      out.write("            <p id=\"spacialFont\">Vehicle Rental</p>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"relativep\">\r\n");
      out.write("                <p id=\"pcaption\">Rent-ME Rentals</p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <p id=\"pcaption__2\" style=\"font-variant-caps: all-petite-caps;\">Unleash your journey with our top-tier vehicle rental services!</p>\r\n");
      out.write("        </div>\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    <div class=\"main\">\r\n");
      out.write("\r\n");
      out.write("        <div class=\"aboutUS\" id=\"about\">\r\n");
      out.write("            <p class=\"aboutUS__hd\">\r\n");
      out.write("                About Us \r\n");
      out.write("            </p>\r\n");
      out.write("            <h1 class=\"aboutUS__cont\">\r\n");
      out.write("                WELCOME TO Rent-ME RENTALS\r\n");
      out.write("            </h1>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"clear\">\r\n");
      out.write("            <div class=\"about__content\">\r\n");
      out.write("                <div class=\"about__content__img\">\r\n");
      out.write("                    <img src=\"https://th.bing.com/th/id/R.358f5cc8a0ccd68e17ab4f6ced8e38da?rik=B0V9gdbqy%2bxacA&pid=ImgRaw&r=0\" alt=\"vehicle\" class=\"image__about__cont\">\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"about__content__cont\">\r\n");
      out.write("                    <h2>Rent-ME Rentals offers premium vehicle rentals that combine luxury, safety, and exceptional service.</h2>\r\n");
      out.write("\r\n");
      out.write("                    <p style=\"padding-top: 5px; font-size: 1.3rem;\">\r\n");
      out.write("                        Whether you're looking for a classic ride or modern comfort, our curated fleet caters to your every need. With a focus on customer satisfaction and high-quality standards, we strive to make every journey an unforgettable experience.\r\n");
      out.write("                    </p>\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"about__content__para\">\r\n");
      out.write("                        <div class=\"para1\">\r\n");
      out.write("                            <div class=\"orangebox\"><div class=\"orangebox__inner\"></div></div>\r\n");
      out.write("                            <h1>100% SAFETY</h1>\r\n");
      out.write("                            <p>\r\n");
      out.write("                                At Rent-ME Rentals, safety is our top priority. Each vehicle in our fleet is meticulously inspected and maintained to ensure it meets all safety regulations.\r\n");
      out.write("                                Whether you're commuting or on a weekend getaway, you can trust that our vehicles provide the security and peace of mind you deserve.\r\n");
      out.write("                            </p>\r\n");
      out.write("                        </div>\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"para2\">\r\n");
      out.write("                            <div class=\"orangebox\"><div class=\"orangebox__inner\"></div></div>\r\n");
      out.write("                            <h1>AWARD WINNING</h1>\r\n");
      out.write("                            <p>\r\n");
      out.write("                                Our service speaks for itself. EliteRide Rentals has been recognized by industry experts for excellence in customer satisfaction, vehicle quality, and innovative solutions.\r\n");
      out.write("                                Experience the best in class with our award-winning rental service.</p>\r\n");
      out.write("                        </div>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <!-- <div class=\"rating-js\">\r\n");
      out.write("             THIS PART HAVE TO PROGRAM IN FUTURE\r\n");
      out.write("        </div> -->\r\n");
      out.write("\r\n");
      out.write("        <div class=\"cake-content\" id=\"catogeries\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"cake-box card1\">\r\n");
      out.write("                <h2>LUXURY CARS</h2>\r\n");
      out.write("                <p>\r\n");
      out.write("                    Drive in style with our premium collection of luxury cars, perfect for making an impression at any event.\r\n");
      out.write("                    Experience unmatched comfort designed for those who seek the best\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"cake-box card2\">\r\n");
      out.write("                <h2>FAMILY CARS</h2>\r\n");
      out.write("                <p>\r\n");
      out.write("                    Planning a family trip? Our spacious and comfortable family cars ensure everyone enjoys the ride.\r\n");
      out.write("                    With ample room and safety features, you can travel stress-free with your loved ones.\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("            <div class=\"cake-box card3\">\r\n");
      out.write("                <h2>CUSTOM RIDES</h2>\r\n");
      out.write("                <p>\r\n");
      out.write("                    Have a specific vehicle in mind? Our custom ride options let you choose the perfect car for any occasion.\r\n");
      out.write("                    Tailor your rental experience to meet your needs, whether it’s a unique event or a special day\r\n");
      out.write("                </p>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"aboutUS\" id=\"chefs\">\r\n");
      out.write("            <p class=\"aboutUS__hd team-m\">\r\n");
      out.write("                Team Members\r\n");
      out.write("            </p>\r\n");
      out.write("            <h1 class=\"aboutUS__cont\">\r\n");
      out.write("                OUR RENTAL EXPERTS\r\n");
      out.write("            </h1>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"chefs-container\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"chef__one chefss\">\r\n");
      out.write("                <div class=\"image-chef chef1\">\r\n");
      out.write("                    <!-- <img src=\"/img/chef/team-2.jpg\" alt=\"Main chef\"> -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"caption\">\r\n");
      out.write("                    <h2>SAMAN BANDARA</h2>\r\n");
      out.write("                    <p>Saman expertly manages our fleet of vehicles, ensuring all cars, vans, and trucks are maintained and ready for your next journey.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"chef-box\">\r\n");
      out.write("                    <div class=\"chef-box__inner\">\r\n");
      out.write("                        <h2>SAMAN.B.A.H</h2>\r\n");
      out.write("                        <p>-Fleet Manager-</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"chef__two chefss\">\r\n");
      out.write("                <div class=\"image-chef chef2\">\r\n");
      out.write("                    <!-- <img src=\"/img/chef/team-2.jpg\" alt=\"Main chef\"> -->\r\n");
      out.write("                </div>\r\n");
      out.write("                \r\n");
      out.write("                <div class=\"caption\">\r\n");
      out.write("                    <h2>SHALANI HERATH</h2>\r\n");
      out.write("                    <p>Shalani ensures smooth booking and customer satisfaction, providing top-notch service for all your rental needs.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"chef-box\">\r\n");
      out.write("                    <div class=\"chef-box__inner\">\r\n");
      out.write("                        <h2>SHALANI.HN</h2>\r\n");
      out.write("                        <p>-Customer Support Specialist-</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("            <div class=\"chef__three chefss\">\r\n");
      out.write("                <div class=\"image-chef chef3\"></div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"caption\">\r\n");
      out.write("                    <h2>MIYANTHI KALHARI</h2>\r\n");
      out.write("                    <p>Miyanthi coordinates operations across all our branches, ensuring every rental goes off without a hitch, from pickup to return.</p>\r\n");
      out.write("                </div>\r\n");
      out.write("                <div class=\"chef-box\">\r\n");
      out.write("                    <div class=\"chef-box__inner\">\r\n");
      out.write("                        <h2>MAYANTHI.K</h2>\r\n");
      out.write("                        <p>-Operations Supervisor-</p>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"special-cake\">\r\n");
      out.write("            <!--background image -->\r\n");
      out.write("            <div class=\"special-cake__content\">\r\n");
      out.write("                <!-- dark opacity 0.6 background  -->\r\n");
      out.write("                <div class=\"special-cake__cont__hd\">\r\n");
      out.write("                    <!-- content  -->\r\n");
      out.write("                    <h2>Special Limited Offer</h2>\r\n");
      out.write("                    <h1>RENT 3 DAYS, GET 1 DAY FREE</h1>\r\n");
      out.write("                    <p style=\"font-size: 1.3rem;\">\r\n");
      out.write("                        Looking for unbeatable value? Rent any vehicle for 3 days\r\n");
      out.write("                        and enjoy the 4th day absolutely FREE! Don’t miss out on this exclusive offer, perfect for road trips, business travel, or a quick getaway.\r\n");
      out.write("                    </p>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"special-cake__btn\">\r\n");
      out.write("                    <!-- shop now button  -->\r\n");
      out.write("                    <div class=\"btn__inside\">\r\n");
      out.write("                        <a href=\"#\">\r\n");
      out.write("                            <span>Book Now</span>\r\n");
      out.write("                        </a>\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("            </div>\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("        <div class=\"aboutUS\" id=\"chefs\">\r\n");
      out.write("            <p class=\"aboutUS__hd team-m\">\r\n");
      out.write("                Testimonial\r\n");
      out.write("            </p>\r\n");
      out.write("            <h1 class=\"aboutUS__cont\">\r\n");
      out.write("                OUR CLIENTS SAY!!!\r\n");
      out.write("            </h1>\r\n");
      out.write("        </div>\r\n");
      out.write(" \r\n");
      out.write("        <div class=\"testimonio\">\r\n");
      out.write("\r\n");
      out.write("            <div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("                <div class=\"indicator\">\r\n");
      out.write("                    <span class=\"slid__btn slid-active\"></span>\r\n");
      out.write("                    <span class=\"slid__btn\"></span>\r\n");
      out.write("                    <span class=\"slid__btn\"></span>\r\n");
      out.write("                    <span class=\"slid__btn\"></span>\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"slider-content\">\r\n");
      out.write("\r\n");
      out.write("                    <div class=\"slider\" id=\"slide\">\r\n");
      out.write("\r\n");
      out.write("                        <div class=\"slider__inside\">\r\n");
      out.write("        \r\n");
      out.write("                            <div class=\"slider__inside__text\">\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    \"Renting with Rent-ME was a breeze! The car was in perfect condition, and the service was excellent. Will definitely use them again!\"\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <h3>SOPHIA</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"slider__inside__img slider__image1\">\r\n");
      out.write("                                <!-- <img src=\"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg\" alt=\"first Commenter\"> -->\r\n");
      out.write("                            </div>\r\n");
      out.write("        \r\n");
      out.write("                        </div>\r\n");
      out.write("        \r\n");
      out.write("                        <div class=\"slider__inside\">\r\n");
      out.write("        \r\n");
      out.write("                            <div class=\"slider__inside__text\">\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    \"I rented a van for my moving day, and it was super affordable. The team was helpful, and the whole process was seamless. Highly recommended!\"\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <h3>OLIVER</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"slider__inside__img slider__image2\">\r\n");
      out.write("                                <!-- <img src=\"https://media.istockphoto.com/id/1296158947/photo/portrait-of-creative-trendy-black-african-male-designer-laughing.jpg?s=612x612&w=0&k=20&c=1Ws_LSzWjYvegGxHYQkkgVytdpDcnmK0upJyGOzEPcg=\"> -->\r\n");
      out.write("                            </div>\r\n");
      out.write("        \r\n");
      out.write("                        </div>\r\n");
      out.write("        \r\n");
      out.write("                        <div class=\"slider__inside\">\r\n");
      out.write("        \r\n");
      out.write("                            <div class=\"slider__inside__text\">\r\n");
      out.write("                                <p>\"Great variety of cars and the best deals in town. The customer service team went above and beyond to ensure my rental went smoothly.\"</p>\r\n");
      out.write("                                <h3>ETHAN</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"slider__inside__img slider__image3\">\r\n");
      out.write("                                <!-- <img src=\"https://images4.alphacoders.com/262/262196.jpg\"> -->\r\n");
      out.write("                            </div>\r\n");
      out.write("        \r\n");
      out.write("                        </div>\r\n");
      out.write("        \r\n");
      out.write("                        <div class=\"slider__inside\">\r\n");
      out.write("        \r\n");
      out.write("                            <div class=\"slider__inside__text\">\r\n");
      out.write("                                <p>\r\n");
      out.write("                                    \"Great variety of cars and the best deals in town. The customer service team went above and beyond to ensure my rental went smoothly.\"\r\n");
      out.write("                                </p>\r\n");
      out.write("                                <h3>ISABELLA</h3>\r\n");
      out.write("                            </div>\r\n");
      out.write("                            <div class=\"slider__inside__img slider__image4\">\r\n");
      out.write("                                <!-- <img src=\"/img/Comments/testimonial-4.jpg\" alt=\"first Commenter\"> -->\r\n");
      out.write("                            </div>\r\n");
      out.write("        \r\n");
      out.write("                        </div>\r\n");
      out.write("        \r\n");
      out.write("                    </div>\r\n");
      out.write("\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("            </div>\r\n");
      out.write("\r\n");
      out.write("        </div>\r\n");
      out.write("\r\n");
      out.write("    </div>\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<script src=\"js/main.js\"></script>\r\n");
      out.write("\r\n");
      out.write("    <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js\" integrity=\"sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz\" crossorigin=\"anonymous\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof jakarta.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
