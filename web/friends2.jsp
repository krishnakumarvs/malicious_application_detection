<%@ page import="java.io.*"%>
<%@include file="db.jsp" %>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>


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
                  <%@include  file="navigation_user.html" %>
                <div id="header">
                    
					
                </div>

                <div id="index_content">
            
   <table><tr><td width="268">
    <p> 
          
      <h3>&nbsp;&nbsp;&nbsp;<font color="#000000"  face="Verdana, Arial, Helvetica, sans-serif">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="index.html"></a></font></h3>
          <p>&nbsp;</p>
   </p>
    <p>&nbsp; </p>
    <div id="main"> 
     <%
	String email=(String)session.getAttribute("b");
	
	%>
	
	  <p><img src="user2.jsp" width="135" height="155"> </p>
      
          <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="friends.jsp">Friends</a>
            </div>
                
            <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="frd2.jsp">Friends Request</a>
            </div>
                
            <div class="home_page_sub_menu">
                <a class="home_page_sub_menu_a" href="all_posts.jsp">Posts</a>
            </div>
                
            <div class="home_page_sub_menu">
                <form name="s" action="search2.jsp">
                    <table>
                        <tr>
                            <td>Search
                                <input style="display: block;padding-left: 5px;color: black;" type="text" name="v" size="14" placeholder="Search friends">
                            </td>
                        </tr>
                    </table>
                </form>
            </div>
          
        &nbsp;&nbsp;<a href="logout.jsp"><font color="#FF3300" face="Times New Roman, Times, serif"><strong> 
        LOGOUT</strong></font></a> </h3></td>
	 
	 <td width="356">
	 <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <p>&nbsp;</p>
          <p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </p>
          <div style="position:absolute; left:498px; top:448px; width: 318px; height: 273px;">
<table width="439">
<%
//String a=(String)session.getAttribute("a");
String i=request.getQueryString();
String ii=request.getQueryString();
String a=(String)session.getAttribute("a");
try {


PreparedStatement stmtment = con.prepareStatement("select name,email,log1,mobile from login where id='"+i+"' AND log='"+a+"'");

ResultSet rs = stmtment.executeQuery();

while(rs.next()) {
String name=rs.getString(1);
String name1=rs.getString(2);
String name2=rs.getString(3);
String name3=rs.getString(4);
%>
<tr>
          <td><font color="#000000"><b><font color="#FF6600" size="3">Profile photo:</font></b></font></td>
          <td><img src="friends1.jsp?uid=<%=ii%>" height="124" width="201"></td>
</tr>
<tr>
<tr>
          <td><font  color="#FF6600" size="3"><b>Name:</b></font></td>
<td><font color="#666666" size="3"><%=name%></font>
</td></tr>
<tr>
<td><font color="#FF6600" size="3"><b>Email id :</font></b></td>
<td><font color="#666666" size="3">
<%=name1%></font></td></tr>
<tr>
<td><font color="#FF6600" size="3"><b>Mobile :</b></font></td>
<td><font color="#666666" size="3">
<%=name2%></font></td></tr>

<tr><td><font color="#FF6600" size="3"><b>Gender :</b></font></td>
<td><font color="#666666" size="3">
<%=name3%></font></td></tr>
<tr><td></td>
<td>
<a href="fb_page.jsp"><u><strong>BACK</strong></u></a></td></tr>
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
