
<%@page import="javax.swing.JOptionPane"%>
<%@page import="java.util.Scanner"%>
<%@page import="java.util.Objects"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
    String n=(String)session.getAttribute("uname");
    out.println("Admin :"+n);
%>

<form action="Admin_Panel.jsp" method="post">
    <b>Select:</b><select name="select">
        <option value="users">Show users</option>
        <option value="mob">Find user by mobile number</option>
        <option value="add">Add question</option>
        <option value="upd">Update question</option>
        <option value="delq">Delete question</option>
        <option value="delu">Delete user</option>
    </select>
    <input type="submit" name="sub">
</form>

<%
    String choice=request.getParameter("select");
    if(Objects.equals(choice, "users"))
    {
        Class.forName("oracle.jdbc.OracleDriver");
        Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
        String sql="select username,mobile_number,email,c_marks,java_marks from user_login";
        PreparedStatement ps=conn.prepareStatement(sql);
        ResultSet rs=ps.executeQuery();
        while(rs.next())
        {
            String u=rs.getString("username");
            String m=rs.getString("mobile_number");
            String e=rs.getString("email");
            int c=rs.getInt("c_marks");
            int j=rs.getInt("java_marks");
            out.println("<b>username = "+u+" mobile number = "+m+" email id="+e+" c marks = "+c+" java marks = "+j+"</b><br> \n");
        }
        conn.close();
    }
    else if(Objects.equals(choice, "mob"))
    {
%>

<form action="User_Mobile.jsp" method="post">
    <b>Enter mobile number:</b><input type="number" name="mob">
    <input type="submit" name="s" value="s">
</form>

<%
    }
else if(Objects.equals(choice, "add"))
{
    response.sendRedirect("Add_Ques.jsp");
}
else if(Objects.equals(choice, "upd"))
{
    response.sendRedirect("Upd_Ques.jsp");
}
else if(Objects.equals(choice, "delq"))
{
    %>
    
    <form action="Del_Ques.jsp" method="post">
        <b>Choose Language: </b><select name="c">
            <option value="c">C</option>
            <option value="j">Java</option>
        </select>
        <b>Enter the question number you want to delete :</b><input type="number" name="ques">
        <input type="submit" name="s">
    </form>
    
    <%
}
else if(Objects.equals(choice, "delu"))
{
    %>

    <form action="Del_User.jsp">
        <b>Enter the mobile number of user you want to delete : </b><input type="number" name="mob">
        <input type="submit" name="s">
    </form>
    
    <%
}
%>
<a href="index.html">Log out</a>