<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>
<%@include file="db.jsp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>facebook</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link href="styles.css" rel="stylesheet" type="text/css" media="screen" />
		
		
		<!-- Begin JavaScript -->

		<script type="text/javascript" src="lib/jquery-1.3.2.min.js"></script>
		<script type="text/javascript" src="lib/jquery.tools.js"></script>
    	<script type="text/javascript" src="lib/jquery.custom.js"></script>

		<style>
		
		.btn {
  background: #07ed3d;
  background-image: -webkit-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -moz-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -ms-linear-gradient(top, #07ed3d, #ff0808);
  background-image: -o-linear-gradient(top, #07ed3d, #ff0808);
  background-image: linear-gradient(to bottom, #07ed3d, #ff0808);
  -webkit-border-radius: 13;
  -moz-border-radius: 13;
  border-radius: 13px;
  text-shadow: 0px 0px 0px #121211;
  font-family: Arial;
  color: #080808;
  font-size: 20px;
  padding: 10px 20px 10px 20px;
  border: solid #fcfcfc 4px;
  text-decoration: none;
}

.btn:hover {
  text-decoration: none;
}
		
		
		</style>
    </head>
    <body>
        <div id="wrap">
            <div id="logo">
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font></h1>
              
            </div>

            <div id="content_top"></div>
            <div id="content">
                <div id="menu">
                    <ul>
                       
                        
                    </ul>
                </div>
                <div id="header">
                    
					
                </div>

                <div id="index_content">
               
			 <%
String a=(String)session.getAttribute("b");
%>

			   
			  <table width="720" height="523"><tr><td width="223">
	   
         
		   <p><img src="user2.jsp" width="135" height="155"> </p>
            <p>&nbsp;</p>
            <p><font color="#00CC66"><b>Welcome:</b></font>&nbsp;<font  color="#FFCC00" face="Times New Roman, Times, serif" size="3.5"><i><%=a%></i></font></h2> &nbsp;&nbsp;</p>
            <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </p>
            <form name="s" action="search2.jsp">
 <table><tr><td><font color="#33CCFF" face="Times New Roman, Times, serif" size="4"><i><b>
 Search</b></i></font>
 <input type="text" name="v" size="14" placeholder="Search friends"></td></tr></table></form>
            <p><br>
              &nbsp;&nbsp;<a href="friends.jsp"><font color="#00CC66"><b>Friends</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="frd2.jsp"><font color="#00CC66"><b>Friends 
              Request</b></font></a> </p>
            <p><br>
             
            <p><br>
             
              &nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong> 
              LOGOUT</strong></font></a> </p></td>
	  
	  <td width="366"><p> </p>
            <p>&nbsp;</p>
            
            <table width="366" height="356">
<%
String a1=(String)session.getAttribute("a");
String b=(String)session.getAttribute("b");
String id=(String)session.getAttribute("sid");
try {

String sqlQry = "select name,email,mobile,log1,id from login where id='"+id+"'";
System.out.println("---------------------------");
System.out.println(sqlQry);
PreparedStatement stmt8 = con.prepareStatement(sqlQry);

ResultSet rs = stmt8.executeQuery();

while(rs.next()) {
String name=rs.getString(1);
session.setAttribute("sname",name);
String name1=rs.getString(2);
String name2=rs.getString(3);
String name3=rs.getString(4);
String name4=rs.getString(5);
session.setAttribute("pid",name4);
%>
<tr>
<td width="195"><h1><strong><font size="3">Profile photo:</font></strong></h1></td>
                <td width="231"><img src="friends11.jsp?<%=name4%>" height="125" width="125" /></td>
</tr>
<tr>
<tr>
<td><h1><strong><font size="3">Name:</font></strong></h1></td>
<td><h2>
<%=name%></h2></td></tr>
<tr>
<td><h1><strong><font size="3">Email id :</font></strong></h1></td>
<td><h2>
<%=name1%></h2></td></tr>
<tr>
<td><h1><strong><font color="#FFFFFF" size="3">Mobile :</font></strong></h1></td>
<td><h2>
<%=name2%></h2></td></tr>

<tr><td><h1><strong><font size="3">Gender :</font></strong></h1></td>
<td><h2>
<%=name3%></h2></td></tr>
<tr><td height="39"></td>
                <td><h2> <a href="frd4.jsp?<%=name4%>"><font color="#CC0066" ><font size="3"><strong>Accept 
                  Friend Request</strong></font></font></a></td>
              </tr>
<%
}
%>


<%
}
catch(Exception e1)
{
out.println(e1.getMessage());

}
%>
</table>
	  
	  </td>
	  
	      
	  
	  </tr></table>
                  <div style="clear: both"></div>
              </div>


                <div id="footer_box">
                    <div id="footer_box_top"></div>
                    <div id="footer_box_bg">
                    
        <p>&nbsp;</p>
        <p>&nbsp;</p>
		
			
        <p><font size="+2" color="#FFCC00"><b>
		
		&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		&nbsp;&nbsp;
		<marquee scrollamount="5" width="40">&lt;&lt;&lt;&lt;&lt;</marquee>
		Detecting Malicious Facebook Applications<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;&gt;&gt;</marquee>
			
</b></font> 
        </p>
        <div style="clear: both"></div>
                    </div>
                    <div id="footer_box_bot"></div>
                </div>
            </div>
            <div id="content_bot"></div>
        </div>
        <div id="footer">
                <div class="red_hr"></div>
                 </div>
    </body>
</html>
