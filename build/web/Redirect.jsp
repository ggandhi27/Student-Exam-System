<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ankit", "pathak");
  String sql="delete from result";
  PreparedStatement ps=con.prepareStatement(sql);
  ps.executeUpdate();
  response.sendRedirect("index.html");
%>