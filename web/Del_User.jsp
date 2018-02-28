<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
  String mob=request.getParameter("mob");
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ankit","pathak");
  String sql="delete from user_login where mobile_number=?";
  PreparedStatement ps=con.prepareStatement(sql);
  ps.setString(1, mob);
  ps.executeUpdate();
  out.print("User Deleted");
  con.close();
%>
<a href="Admin_Panel.jsp">Back</a>