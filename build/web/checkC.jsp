<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Objects"%>
<%
    int i=(Integer)session.getAttribute("i");
    int n=(Integer)session.getAttribute("n");
    String ans=request.getParameter("ans");
    ans=ans.trim();
    String cans=(String)session.getAttribute("cans");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ankit", "pathak");
    String sql="insert into result values (?,?,?)";
    PreparedStatement ps=con.prepareStatement(sql);
    ps.setString(1, ans);
    ps.setString(2, cans);
    ps.setInt(3, i);
    ps.executeUpdate();
    if(ans.equals(cans) && i<25)
    {
        n++;
        i++;
        session.setAttribute("n", n);
        session.setAttribute("i", i);
        response.sendRedirect("CExam.jsp");
    }
    else if(ans.equals(cans) && i==25)
    {
        n++;
        session.setAttribute("n", n);
        response.sendRedirect("Result.jsp");
    }
    else if(i==25)
    {
        response.sendRedirect("Result.jsp");
    }
    else
    {
         i++;
         session.setAttribute("i", i);
         response.sendRedirect("CExam.jsp");
    }
    con.close();
%>
