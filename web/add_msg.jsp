<%@ page import="java.sql.* "%>
<%@include file="db.jsp" %>
<%@ page import="java.io.*"%>
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" import = "java.util.Date,java.text.SimpleDateFormat,java.text.ParseException" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="content-type" content="text/html; charset=utf-8" />
        <title>facebook</title>
        <meta name="keywords" content="" />
        <meta name="description" content="" />
        <link rel="stylesheet" href="lib/bootstrap.min.css">
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
				<%
				String email=(String)session.getAttribute("emailid");
				
				%>
				
               <table width="774"><tr><td width="362">
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
            
            <!--<p><br>
              <font color="#CC3366">&nbsp;&nbsp;<b>FAVOURITES</b></font></p>
            <p><br>
              &nbsp;&nbsp;<a href="ga.jsp"><font color="#009933"><b>My Gallery</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="user.jsp"><font color="#009933"><b>Add Messages</b></font></a></p>
            <p><br>
              &nbsp;&nbsp;<a href="add.jsp"><font color="#009933"><b>Add Photos</b></font></a> 
            </p>-->
            
            </td>
          <td width="400"><p><a href="add.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2">POST</font></a> </a> </p>
            <p>&nbsp; </p>
   <form name="s1" method="post" action="post.jsp"  >

<table bgcolor="#666666" height="150" width="150">
<tr><td></td><td><textarea rows="5"  cols="50" placeholder="Say something about this...." name="msg"></textarea></td></tr>
<tr><td></td><td>
<select name="to_uid" class="form-control">
<% 
ResultSet rs = null;
String uid = (String)session.getAttribute("uid");
rs = stmt.executeQuery("select * from login where id != "+uid+" ");
while(rs.next()){
    String to_uid = rs.getString(1);
    String to_name = rs.getString(2);

    %>
    <option value="<%=to_uid%>"><%=to_name%></option>
    <%
}
   %>
    
    
</select>        
</td></tr>
<tr><td>
        
    </td>
        <td> 
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name="submit" class="form-control" type="submit" value="  post  ">
        </td>
      </tr>
     </table></form>
</td></tr></table>
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
