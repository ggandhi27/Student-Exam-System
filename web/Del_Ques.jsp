<%@page import="java.util.Objects"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String c=request.getParameter("c");
    String ques=request.getParameter("ques");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
    if(Objects.equals(c,"c"))
    {
        String sql="delete from c_exam where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ques);
        ps.executeUpdate();
    }
    else if(Objects.equals(c, "j"))
    {
        String sql="delete from java_exam where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ques);
        ps.executeUpdate();
    }
        out.print("Question deleted");
        con.close();
%>
<a href="Admin_Panel.jsp">Back</a>