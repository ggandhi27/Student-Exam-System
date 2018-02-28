<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Objects"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<form action="Add_Ques.jsp" method="post">
    You want to add ques in :<select name="name">
        <option value="c">C</option>
        <option value="j">Java</option>
    </select>
    Enter the question number:<input type="number" name="no"><br>
    Enter the question:<textarea name="ques" width="30" height="30"></textarea><br>
    Enter answer 1:<input type="text" name="ans1"><br>
    Enter answer 2:<input type="text" name="ans2"><br>
    Enter answer 3:<input type="text" name="ans3"><br>
    Enter answer 4:<input type="text" name="ans4"><br>
    Enter correct answer:<input type="text" name="c"><br>
    <input type="submit" name="sub">
</form>
<%
    String name=request.getParameter("name");
    String quesno=request.getParameter("no");
    String ques=request.getParameter("ques");
    String ans1=request.getParameter("ans1");
    String ans2=request.getParameter("ans2");
    String ans3=request.getParameter("ans3");
    String ans4=request.getParameter("ans4");
    String cans=request.getParameter("c");
    Class.forName("oracle.jdbc.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ankit","pathak");
    if(Objects.equals(name,"c"))
    {
        String sql="insert into c_exam(question,ans1,ans2,ans3,ans4,c_ans,question_no) values(?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1,ques);
        ps.setString(2,ans1);
        ps.setString(3,ans2);
        ps.setString(4,ans3);
        ps.setString(5,ans4);
        ps.setString(6,cans);
        ps.setString(7,quesno);
        ps.executeUpdate();
    }
    else if(Objects.equals(name, "j"))
    {
        String sql="insert into java_exam(question,ans1,ans2,ans3,ans4,c_ans,question_no) values(?,?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(sql);
        ps.setString(1,ques);
        ps.setString(2,ans1);
        ps.setString(3,ans2);
        ps.setString(4,ans3);
        ps.setString(5,ans4);
        ps.setString(6,cans);
        ps.setString(7,quesno);
        ps.executeUpdate();
    }
    con.close();
%>

<br><a href="Admin_Panel.jsp">Back</a>
