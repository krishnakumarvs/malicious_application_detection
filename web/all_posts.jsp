
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
                <font size="6"    color="#000000"><b>Detecting Malicious Facebook Applications</b></font>

            </div>

            <div id="content_top"></div>
            <div id="content">
                <%@include  file="navigation_user.html" %>
                <div id="header">


                </div>

                <div id="index_content">

                    <%
                        String email = (String) session.getAttribute("emailid");

                        String name = (String) session.getAttribute("name");
                    %>


                    <table><tr><td width="309" style="display: block">

                                <div id="main"> 

                                    <p><img src="user2.jsp" width="135" height="155">
                                            <a style="display: block;margin-left: 15px;" href="changeUserImage.jsp">Change image</a>
                                    </p>

                                    <!--<p><img src="images/defaultusr.png" width="135" height="155"></p>-->
                                    <p>&nbsp;</p>
                                    <p><font size="+1" color="#CC0099"><b>Welcome:</b></font>&nbsp;<font class="home_page_user_name"><b><%=name%></b></font> </p>
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

                                    <td width="629"><table><tr><td>
                                                    <p>&nbsp;</p>
                                                    <p><a href="post_code_emailsend.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2"></font></a>
                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="post_code_emailsend1.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2"></font></a>  

                                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                        <a href="graph1.jsp"><font color="#33CC33" face="Times New Roman, Times, serif" size="+2"></font></a>  

                                                    </p>
                                                    <br>

                                                        <table> 
                                                            <br>
                                                                <%

                                                                    String id = (String) session.getAttribute("uid");
                                                                    String q, r, s;
                                                                    String a = (String) session.getAttribute("a");
                                                                    try {

                                                                        PreparedStatement stmt1 = con.prepareStatement("select name,msg,id1 from message where to_uid=" + id + " or id1=" + id + "   order by id desc");

                                                                        ResultSet rs1 = stmt1.executeQuery();

                                                                        while (rs1.next()) {
                                                                            q = rs1.getString(1);
                                                                            r = rs1.getString(2);
                                                                            s = rs1.getString(3);
                                                                            //kekes
%>
                                                                <tr class="each-post-in-all-post">
                                                                    <td>
                                                                        <img src="friends1.jsp?uid=<%=s%>" height="55" width="55">
                                                                    </td>
                                                                    <td>
                                                                        <font color="#006699"><b>&nbsp;&nbsp;&nbsp;&nbsp;<%=q%>&nbsp;&nbsp;&nbsp;&nbsp;</b>
                                                                        </font>
                                                                        <font  color="#FFCC00">shared  &nbsp;&nbsp;&nbsp;&nbsp;
                                                                        </font>
                                                                        <font color="#006699"><b>a post -->
                                                                        </font> 
                                                                        <%

                                                                            if (r.endsWith("jpg") || r.endsWith("png") || r.endsWith("gif")) {
                                                                        %>
                                                                        <img src="<%=r%>" height="200" width="200"></img>
                                                                        <%                                                                                    }
                                                                                                                                                       else {
                                                                        %>
                                                                        <font   color="#CC33FF"><%=r%>
                                                                        </font>
                                                                        <%
                                                                                                                                                       }
                                                                        %>
                                                                        
                                                                    </td>
                                                                </tr>

                                                                <%
                                                                        }

                                                                    } catch (Exception e3) {
                                                                        out.println(e3.getMessage());

                                                                    }

                                                                    try {

                                                                        PreparedStatement stmt1 = con.prepareStatement("select name,msg,id1,video from videos where log='" + a + "'");

                                                                        ResultSet rs1 = stmt1.executeQuery();

                                                                        while (rs1.next()) {
                                                                            q = rs1.getString(1);
                                                                            r = rs1.getString(2);
                                                                            s = rs1.getString(3);
                                                                            String video = rs1.getString(4);
                                                                %>
                                                                <tr><td><img src="friends1.jsp?uid=<%=s%>" height="55" width="55"></td><td><font color="#006699"><b>&nbsp;&nbsp;&nbsp;&nbsp;<%=q%>&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
                                                                        <font  color="#FFCC00">shared  &nbsp;&nbsp;&nbsp;&nbsp;</font>
                                                                        <font color="#006699"><b>a message --></font> <td> <video width="400" height="320"  > <source src="documents/<%=video%>" type="video/ogg"> 
                                                                                    <source src="documents/<%=video%>" type="video/mp4"> <source src="documents/<%=video%>" type="video/webm"> 
                                                                                            <object data="documents/<%=video%>" width="320" height="240">
                                                                                                <embed src="documents/<%=video%>" width="320" height="240"></embed> 
                                                                                                <embed width="320" height="240" src="documents/<%=video%>"></embed> 
                                                                                            </object>
                                                                                            </video></td></b> </td>
                                                                                            </tr>

                                                                                            <%
                                                                                                    }

                                                                                                } catch (Exception e3) {
                                                                                                    out.println(e3.getMessage());

                                                                                                }







                                                                                            %>
                                                                                            <%

                                                                                                try {


                                                                                                    PreparedStatement stmt1 = con.prepareStatement("select application_shared.*,login.name from  application_shared left join login on login.id=shared_userid where to_userid=" + id + " or shared_userid=" + id + "   order by application_shared.id desc");

                                                                                                    ResultSet rs1 = stmt1.executeQuery();

                                                                                                    while (rs1.next()) {
                                                                                                        q = rs1.getString("name");
                                                                                                        r = rs1.getString("app_name");
                                                                                                        s = rs1.getString("shared_userid");
                                                                                            %>
                                                                                            <tr class="each-post-in-all-post" ><td><img src="friends1.jsp?uid=<%=s%>" height="55" width="55"></td><td><font color="#006699"><b>&nbsp;&nbsp;&nbsp;&nbsp;<%=q%>&nbsp;&nbsp;&nbsp;&nbsp;</b></font>
                                                                                                    <font  color="#FFCC00">shared  &nbsp;&nbsp;&nbsp;&nbsp;</font><font color="#006699"><b>Application --></font><img style="width:56px" src="images/app-icon.png"></img> <font   color="#CC33FF"><%=r%></font></b> </td>
                                                                                            </tr>

                                                                                            <%
                                                                                                    }

                                                                                                } catch (Exception e3) {
                                                                                                    out.println(e3.getMessage());

                                                                                                }
                                                                                            %>
                                                                                            </table>

                                                                                            </td>


                                                                                            <td>&nbsp; </td>

                                                                                            </tr></table>



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
