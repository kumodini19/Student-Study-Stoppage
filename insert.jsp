<html>
    <title>My registration page</title>
    <body bgcolor="red">
    
    <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*" %>
    
    <%
     String s1=request.getParameter("fname");
     String s2=request.getParameter("uname");
     String s3=request.getParameter("pass");
     String s4=request.getParameter("email");

     out.println("data received");

     try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        out.println("DRIVER LOADED SUCESSFULLY\n");
        Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
        PreparedStatement pst=cn.prepareStatement("insert into student values(?,?,?,?)");
        pst.setString(1,s1);
        pst.setString(2,s2);
        pst.setString(3,s3);
        pst.setString(4,s4);
        int x=pst.executeUpdate();
        if(x>0)
        {
            out.println("User created successfully"); %>
            <html><button><a href="login.html">CLICK TO LOGIN</a></button></html><%
        }
    } 
    catch (ClassNotFoundException e) 
    {
        out.println("Driver problem"+e.getMessage());
    }
    catch (SQLException e) 
{
    out.println("Connection problem"+e.getMessage());
}   
catch (Exception e) 
{
    out.println("data insertion problem"+e.getMessage());
}   
out.close();
%>
<h1><font color="yellow"><%out.println("data received");%></font></h1>
<h1><font color="green"><%out.println(s1);%></font></h1>
    </body>
</html>