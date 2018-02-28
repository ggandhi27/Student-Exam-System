<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<style>
    .heading{
            color:red;
            padding:40px;
            margin:auto 10px;
            background-color:blue;
            border-radius:100px;
    }
</style>
<body bgcolor="buttonface">
<div class="heading" align="center">
    <h1 align="center">RESULT!!</h1>
</div>
<%
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "ankit", "pathak");
  String name=(String)session.getAttribute("na");
  String mobile=(String)session.getAttribute("m");
  String email=(String)session.getAttribute("e");
  out.print("Name:- "+name+"<br>Mobile number:- "+mobile+"<br>Email:- "+email+"<br><br>");
  out.print("<table border=2 align=center>");
  out.print("<tr><td>Question number</td><td>Your Answer</td><td>Correct Answer</td></tr>");
    int i=1;
    while(i<=25)
    {
        String sql="select answer,c_ans from result where question_no=?";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setInt(1,i);
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            String ans=rs.getString("answer");
            String cans=rs.getString("c_ans");
            out.print("<tr><td>"+i+"</td><td>"+ans+"</td><td>"+cans+"</td></tr>");
        }
        i++;
    }
    int n=(Integer)session.getAttribute("n");
    out.print("<tr><td>Total Correct Answer </td><td> </td><td>"+n+"</td></tr>");
    out.print("<tr><td>Total Questions</td><td></td><td>25</td></tr>");
    out.print("<tr><td>Percentage</td><td></td><td>"+(n*100/25)+"%</td></tr>");
  out.print("</table><br>");
  java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
  int c=(Integer)session.getAttribute("c");
  if(c==1)
  {
    String sql1="update user_login set c_marks=?,exam_date=? where mobile_number=?";
    PreparedStatement ps1=con.prepareStatement(sql1);
    ps1.setInt(1, n);
    ps1.setDate(2, sqlDate);
    ps1.setString(3, mobile);
    ps1.executeUpdate();
  }
  else if(c==2)
  {
    String sql1="update user_login set java_marks=?,exam_date=? where mobile_number=?";
    PreparedStatement ps1=con.prepareStatement(sql1);
    ps1.setInt(1, n);
    ps1.setDate(2, sqlDate);
    ps1.setString(3, mobile);
    ps1.executeUpdate();
  }
  con.close();
%>
</body>
<a href="Redirect.jsp";>Back</a>
    