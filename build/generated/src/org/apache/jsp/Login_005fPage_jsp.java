package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Login_005fPage_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>Login Page</title>\n");
      out.write("    </head>\n");
      out.write("    <style>\n");
      out.write("        .login{\n");
      out.write("            color:red;\n");
      out.write("            padding:40px;\n");
      out.write("            margin:auto 10px;\n");
      out.write("            background-color:blue;\n");
      out.write("            border-radius:100px;\n");
      out.write("        \n");
      out.write("        }\n");
      out.write("        .access{\n");
      out.write("            padding:50px;\n");
      out.write("            margin:30px 30%;\n");
      out.write("            background-color:pink;    \n");
      out.write("        }\n");
      out.write("    </style>\n");
      out.write("    <body>\n");
      out.write("        <div class=\"login\" align=\"center\">\n");
      out.write("            <h1>  Welcome to Student Login Page</h1>\n");
      out.write("        </div>\n");
      out.write("        <div id=\"nav\">\n");
      out.write("            <ul>\n");
      out.write("                <li><a href=\"Login_Page.jsp\">Home</a></li>\n");
      out.write("                <li><a href=\"Sign_Up.jsp\">Sign Up</li>\n");
      out.write("                <li><a href=\"About.html\">About Us</a></li>\n");
      out.write("                <li><a href=\"Contact.html\">Contact</a></li>\n");
      out.write("            \n");
      out.write("            </ul>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"access\" align=\"center\">\n");
      out.write("            <form action=\"Login.jsp\" method=\"post\">\n");
      out.write("                <b>Login As:</b><select name=\"login\">\n");
      out.write("                    <option value=\"admin\">Admin</option>\n");
      out.write("                    <option value=\"user\">User</option>\n");
      out.write("                </select><br><br><br>\n");
      out.write("                <b>Username:</b><input type=\"text\" name=\"id\"><br><br>\n");
      out.write("                <b>Password:</b><input type=\"password\" name=\"pass\"><br><br>\n");
      out.write("                <input type=\"submit\" name=\"sub\">\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
