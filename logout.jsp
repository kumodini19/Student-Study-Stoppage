<html>
    <body bgcolor="red">
        <html>
            <style>
                .button{
                    color: rgb(243, 243, 243);
                    padding: 15px 32px;
                    text-align: center;
                    display: inline-block;
                    font-size: 20px;
                    margin: 4px 2px;
                    cursor: pointer;
                    background-color: rgb(12, 148, 202);
                    text-decoration-color: rgb(242, 242, 241);
                }
            </style>
    <a class="button" href="index.html">CLICK HERE TO GO BACK TO MAIN PAGE</a><br></html>
    <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*" %>
    <% 
    
    session.invalidate();
    
    out.println("You are successfully logged out");
    out.close();
    %>
    
    
    </body>
</html>