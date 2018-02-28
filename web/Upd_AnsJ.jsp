<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Objects"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%
    String ans_no=request.getParameter("ans_no");
    String ans=request.getParameter("ans");
    String no=(String)session.getAttribute("non");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ankit", "pathak");
    
    if(Objects.equals(ans_no, "1"))
    {
        String sql="update java_exam set ans1=? where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ans);
        ps.setString(2,no);
        ps.executeUpdate();
    }
    else if(Objects.equals(ans_no, "2"))
    {
        String sql="update java_exam set ans2=? where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ans);
        ps.setString(2,no);
        ps.executeUpdate();
    }
    else if(Objects.equals(ans_no, "3"))
    {
        String sql="update java_exam set ans3=? where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ans);
        ps.setString(2,no);
        ps.executeUpdate();
    }
    else if(Objects.equals(ans_no, "4"))
    {
        String sql="update java_exam set ans4=? where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ans);
        ps.setString(2,no);
        ps.executeUpdate();
    }
    else if(Objects.equals(ans_no, "5"))
    {
        String sql="update java_exam set c_ans=? where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, ans);
        ps.setString(2,no);
        ps.executeUpdate();
    }
    out.print("Answer Updated");
%>
<a href="Admin_Panel.jsp">Back</a>

