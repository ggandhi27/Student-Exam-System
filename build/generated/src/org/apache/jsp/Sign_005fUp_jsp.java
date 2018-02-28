package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.lang.String;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.sql.Connection;
import java.sql.DriverManager;

public final class Sign_005fUp_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("        <form action=\"Sign_Up.jsp\" method=\"post\">\n");
      out.write("            Mobile Number:<input type=\"number\" name=\"mobile\"><br>\n");
      out.write("            Email-ID:<input type=\"text\" name=\"email\"><br>\n");
      out.write("            Username:<input type=\"text\" name=\"uname\"><br>\n");
      out.write("            Password:<input type=\"password\" name=\"pass\"><br>\n");
      out.write("            <input type=\"submit\" name=\"sub\"><br>\n");
      out.write("        </form>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

    Class.forName("oracle.jdbc.OracleDriver");
    Connection con =DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
    String name=request.getParameter("uname");
    String mobile=request.getParameter("mobile");
    String email=request.getParameter("email");
    String pass=request.getParameter("pass");
    String query="insert into user_login (mobile_number,email,username,password) values (?,?,?,?)";
    PreparedStatement ps=con.prepareStatement(query);
    ps.setString(1, mobile);
    ps.setString(2, email);
    ps.setString(3, name);
    ps.setString(4, pass);
    ps.executeUpdate();
    out.print("Record inserted");

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
