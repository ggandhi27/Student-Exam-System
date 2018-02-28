<html>
<head>
<title>C Exam</title>
</head>
<style>
    .heading{
            color:red;
            padding:40px;
            margin:auto 10px;
            background-color:blue;
            border-radius:100px;
    }
    .question{
            padding:50px;
            margin:30px 20%;
            background-color:pink;    
    }
</style>
<body>
    <div class="heading">
        <h1 align="center">Exam Time</h1>
    </div>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Objects"%>
<%
  int c=1;
  session.setAttribute("c", c);
  int i=(Integer)session.getAttribute("i");
  Class.forName("oracle.jdbc.OracleDriver");
  Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
  if(i<25)
  {
      String sql="select question,ans1,ans2,ans3,ans4,c_ans from c_exam where question_no=?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setInt(1, i);
      ResultSet rs=ps.executeQuery();
      if(rs.next())
      {
          String qu=rs.getString("question");
          String ans1=rs.getString("ans1");
          String ans2=rs.getString("ans2");
          String ans3=rs.getString("ans3");
          String ans4=rs.getString("ans4");
          String cans=rs.getString("c_ans");
          session.setAttribute("cans", cans);
          %>
          <div class="question" align="left">
          <%        
          out.print("Question"+i+":-"+qu);
          %> 
          <br>
      <form action="checkC.jsp" method="post">
          <% 
              out.print("<br>a) "+ans1);
          %>    
          <input type="radio" name="ans" value=" <% out.print(ans1); %> " ><br>
          <%
              out.print("b) "+ans2);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans2); %> " ><br>
          <%
              out.print("c) "+ans3);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans3); %> " ><br>
          <%
              out.print("d) "+ans4);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans4); %> " > <br><br>
          <input type="submit" name="Next" value="Next">
      </form>    
          </div>    
      <%     
      }      
  }
  else if(i==25)
  {
    String sql="select question,ans1,ans2,ans3,ans4,c_ans from c_exam where question_no=?";
      PreparedStatement ps=con.prepareStatement(sql);
      ps.setInt(1, i);
      ResultSet rs=ps.executeQuery();
      if(rs.next())
      {
          String qu=rs.getString("question");
          String ans1=rs.getString("ans1");
          String ans2=rs.getString("ans2");
          String ans3=rs.getString("ans3");
          String ans4=rs.getString("ans4");
          String cans=rs.getString("c_ans");
          session.setAttribute("cans", cans);
          %>
          <div class="question" align="left">
          <%
          out.print("Question"+i+":-"+qu);
          %> 
          
      <form action="checkC.jsp" method="post">
          <% 
              out.print("<br>a) "+ans1);
          %>    
          <input type="radio" name="ans" value=" <% out.print(ans1); %> " ><br>
          <%
              out.print("b) "+ans2);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans2); %> " ><br>
          <%
              out.print("c) "+ans3);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans3); %> " ><br>
          <%
              out.print("d) "+ans4);
          %>
          <input type="radio" name="ans" value=" <% out.print(ans4); %> " > <br>
          <input type="submit" name="Next" value="Submit">
      </form>
          </div>
      <%     
      }
}
%>
</body>
</html>