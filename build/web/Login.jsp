
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.Objects"%>
<%
    String uname=request.getParameter("uname") ;
    String pass=request.getParameter("pass") ;
    String login=request.getParameter("login");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
    if(Objects.equals(login,"admin"))
    {
        String sql="select * from admin_info where username=? AND password=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, uname);
        ps.setString(2, pass);
        ResultSet r=ps.executeQuery();
        if(r.next())
        {
            String n=r.getString("username");
            String p=r.getString("password");
            session.setAttribute("uname", n);
            response.sendRedirect("Admin_Panel.jsp");
        }
        else{
            out.print("Wrong username/password!!!");
            %>
            <a href="index.html">Back</a>
            <%
        }
    }
    else if(Objects.equals(login,"user"))
    {
        String sql="select * from user_login where username=? AND password=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1, uname);
        ps.setString(2, pass);
        ResultSet r=ps.executeQuery();
        if(r.next())
        {
            String n=r.getString("username");
            String p=r.getString("password");
            String m=r.getString("mobile_number");
            String e=r.getString("email");
            int cm=r.getInt("c_marks");
            int jm=r.getInt("java_marks");
            session.setAttribute("cm", cm);
            session.setAttribute("jm", jm);
            session.setAttribute("na", n);
            session.setAttribute("m", m);
            session.setAttribute("e", e);
            response.sendRedirect("User_Panel.jsp");
        }
        else{
            out.print("Wrong username/password!!!");
            %>
            <a href="index.html">Back</a>
            <%
        }
    }
    con.close();
%>