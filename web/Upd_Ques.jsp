<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.Objects"%>
<form action="Upd_Ques.jsp" method="post">
    You want to add ques in :<select name="name">
        <option value="c">C</option>
        <option value="j">Java</option>
    </select>
    Enter the ques no. you want to update: <input type="number" name="no"><br>
    What do you want to update: <select name="upd">
        <option value="ques">Question</option>
        <option value="ans">Answer</option>
    </select><br>
    <input type="submit" name="s"><br>
</form>

<%
    String name=request.getParameter("name");
    String choice=request.getParameter("upd");
    String no=request.getParameter("no");
    session.setAttribute("non", no);
    if(Objects.equals(name,"c"))
    {
        if(Objects.equals(choice, "ques"))
        {
            %>
            <form action="Upd_Ques1.jsp" method="post">
            Enter new question:<textarea name="nques"></textarea>
            <input type="submit" name="s1">
            </form>
            <%
        }
        else if(Objects.equals(choice, "ans"))
        {
            %>
            <form action="Upd_AnsC.jsp" method="post">
                Enter the answer number you want to update:<input type="number" name="ans_no"><br>
                Enter the new answer:<input type="text" name="ans"><br>
                <input type="submit" name="sub">
            </form>
            <%
        }
    }
    else if(Objects.equals(name, "j"))
    {
        if(Objects.equals(choice, "ques"))
        {
            %>
            <form action="Upd_Ques2.jsp" method="post">
            Enter new question:<textarea name="nques"></textarea>
            <input type="submit" name="s1">
            </form>
            <%
        }
        else if(Objects.equals(choice, "ans"))
        {
            %>
            <form action="Upd_AnsJ.jsp" method="post">
                Enter the answer number you want to update:<input type="number" name="ans_no"><br>
                Enter the new answer:<input type="text" name="ans"><br>
                <input type="submit" name="sub">
            </form>
            <%
        }
    }
%>
