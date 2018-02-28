<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
        String mob=request.getParameter("mob");
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
        String sql="select username,mobile_number,email,c_marks,java_marks from user_login where mobile_number=?";
        PreparedStatement ps=conn.prepareStatement(sql);
        ps.setString(1,mob);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            String u=rs.getString("username");
            String m=rs.getString("mobile_number");
            String e=rs.getString("email");
            int c=rs.getInt("c_marks");
            int j=rs.getInt("java_marks");
            out.println("<b>username = "+u+" mobile number = "+m+" email id="+e+" c marks = "+c+" java marks = "+j+"</b>");
        }
        conn.close();  
%>
<br><a href="Admin_Panel.jsp">Back</a> 