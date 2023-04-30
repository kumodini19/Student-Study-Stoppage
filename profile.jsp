<html>
    <title>My profile page</title>
    <body bgcolor="green">
      
            
    
    <%@ page import="java.sql.*,java.util.*,java.net.*,oracle.jdbc.*,oracle.sql.*,oracle.jsp.dbutil.*" %>
    
    <%
     String s1=request.getParameter("user");
     String s2=request.getParameter("pass");
     
    
     session.setAttribute("username",s1);
     session.setAttribute("userpass",s2);
     
     

     try {
        Class.forName("oracle.jdbc.driver.OracleDriver");
        Connection cn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","1234");
        
        Statement st=cn.createStatement();
        ResultSet rs=st.executeQuery("select * from student where username='" + s1 + "'and password='" + s2 +"'");
           // out.println("query executed successfully\n");
            if (rs.next()) { %>
              <style>
                .outlog{
                  color: #f7f3f3;
                  background-color: rgb(255, 38, 0);
                  padding-top: 7px;
                  padding-bottom: 7px;
                  padding-left: 7px;
                  padding-right: 8px;
                }
              </style>


              <form action="logout.jsp" method="post"><button class="outlog" style="float: right;" type="submit">LOGOUT</button></form>
                <h2><font color="yellow"><%out.println(rs.getString(1));%></font></h2>
                <h3><font color="yellow"><%out.println(rs.getString(2));%></font></h3>
                <html>
            <link rel="stylesheet" href="main.css">
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
          <body>
            <nav>
              <input type="checkbox" id="check">
              <label for="check" class="checkbtn">
                <i class="fas fa-bars"></i>
              </label>
              <label class="logo">C o m p e t e !</label>
              <ul>
                <li><a href="https://www.neetprep.com/questions">NEET</a></li>
                <li><a href="https://byjus.com/jee/jee-main-question-paper/">JEE</a></li>
                <li><a href="https://www.questionpapers.net.in/gate-question-papers-download.html">GATE</a></li>
              </ul>
            </nav>
            <section>

              <div class="dropdown">
                <button class="dropbtn">CLICK FOR MORE :</button>
                <div class="dropdown-content">
                <a href="https://byjus.com/cbse-study-material/">  B O A R D S  </a>
                <a href="https://byjusexamprep.com/cds-study-material-i">  D E F E N C E-S E R V I C E S  </a>
                <a href="https://bodheeprep.com/cat-study-material">C A T</a>
                <a href="https://www.legalbites.in/clat-study-material-test-series/?infinitescroll=1">  C L A T  </a>
                </div>
              </div>
            

              

<head>
  <title>Search Bar with Autocomplete Links</title>
  <link rel="stylesheet" href="style.css">
</head>
<body>
  <div class="search-box">
    <input type="text" placeholder="Search for programming language...">
    <div class="autocomplete"></div>
  </div>
  <script src="script.js"></script>
</body>



              

</section>
          </body>
          </html>

              <%  
            }
            else {
                out.println("Invalid credential");
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
        
    </body>
</html>