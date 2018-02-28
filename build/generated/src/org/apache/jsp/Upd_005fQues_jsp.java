package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Objects;

public final class Upd_005fQues_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<form action=\"Upd_Ques.jsp\" method=\"post\">\n");
      out.write("    Enter the ques no. you want to update: <input type=\"number\" name=\"no\"><br>\n");
      out.write("    What do you want to update: <select name=\"upd\">\n");
      out.write("        <option value=\"ques\">Question</option>\n");
      out.write("        <option value=\"ans1\">Answer 1</option>\n");
      out.write("        <option value=\"ans2\">Answer 2</option>\n");
      out.write("        <option value=\"ans3\">Answer 3</option>\n");
      out.write("        <option value=\"ans4\">Answer 4</option>\n");
      out.write("        <option value=\"cans\">Correct Answer </option>\n");
      out.write("    </select><br>\n");
      out.write("    <input type=\"submit\" name=\"s\"><br>\n");
      out.write("</form>\n");
      out.write("\n");

  String name=request.getParameter("upd");
  String no=request.getParameter("no");
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
  if(Objects.equals(name, "ques"))
  {
      
  }

      out.write("\n");
      out.write("<input type=\"text\" name=\"a\">\n");
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
