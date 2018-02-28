package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class User_005fPanel_jsp extends org.apache.jasper.runtime.HttpJspBase
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


  String uname=(String)session.getAttribute("n");
  String mobile=(String)session.getAttribute("m");
  String email=(String)session.getAttribute("e");
  out.print("User name:- "+uname+"<br> Mobile number:- "+mobile+"<br> Email ID:- "+email+"<br><br><br>");
  out.print("Which exam do you want to take? <br>");
  int i=2,c=0;
  session.setAttribute("i", i);
  session.setAttribute("c", c);

      out.write("\n");
      out.write("<a href=\"CExam.jsp\">\n");
      out.write("    <img src=\"c_exam.jpg\" alt=\"C_Exam\">\n");
      out.write("</a>\n");
      out.write("<a href=\"JExam.jsp\">\n");
      out.write("    <img src=\"java_exam.png\" alt=\"Java_Exam\">\n");
      out.write("</a>");
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
