<%@page import="java.util.Objects"%>
<%@page import="java.lang.String"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>

<%
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
    con.close();
    String sub=request.getParameter("sub");
    out.print("Record Inserted");
%>
<br><a href="index.html">Back</a>