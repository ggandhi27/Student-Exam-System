<html>
    <head>
        <title>User Panel</title>
    </head>
    <style>
        .heading{
            color:crimson;
            padding:30px;
            margin:auto 10px;
            background-color:blue;
            border-radius:50px;
        }
        .body1{
            padding:50px;
            margin:30px 30%;
            background-color:pink;
            border-radius:20px;
        }
        .body2{
            padding:50px;
            background-color: buttonface;
            margin:30px 15%;
            border-radius: 40px;
        }
    </style>
    <body bgcolor="#D8F0EF">
        <div class="heading" align="center">
            <h1 align="center">WELCOME</h1>
            <h2 align="center">Student Evaluation System</h2>
        </div>
<%
  String uname=(String)session.getAttribute("na");
  String mobile=(String)session.getAttribute("m");
  String email=(String)session.getAttribute("e");
  int cm=(Integer)session.getAttribute("cm");
  int jm=(Integer)session.getAttribute("jm");
  %>
  <div class="body1" align="left">
  <%
    out.print("<b>User name:- </b>"+uname+"<br> <b>Mobile number:- </b>"+mobile+"<br> <b>Email ID:- </b>"+email+"<br><b>C Marks:- </b>"+cm+"<br><b>Java Marks:- </b>"+jm+"<br>");
  %>
  </div>
  <div class="body2" align="center">
  <%
  out.print("<h3><b>Which exam do you want to take? </b></h3><br>");
  int i=1  ,n=0;
  session.setAttribute("i", i);
  session.setAttribute("n", n);
%>
<p>
<a href="CExam.jsp">
    <img src="c_exam.jpg" alt="C_Exam">
</a>&nbsp;&nbsp; Or &nbsp;&nbsp;&nbsp;
<a href="JExam.jsp">
    <img src="java_exam.png" alt="Java_Exam">
</a>
</p>>
  </div>
<p align="center"><a href="index.html">Log Out</a></p>
</body>
</html>