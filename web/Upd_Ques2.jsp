<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%
            String ques=request.getParameter("nques");
            String no=(String)session.getAttribute("non");
            Class.forName("oracle.jdbc.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak"); 
            String sql="update java_exam set question=? where question_no=?";
            PreparedStatement ps=con.prepareStatement(sql);
            ps.setString(1, ques);
            ps.setString(2, no);
            ps.executeUpdate();  
            out.print("Question Updated");
            
%>
<a href="Admin_Panel.jsp">Back</a>