<%@ language=javascript %>
<head>
<title>Login</title>
<noframes></noframes>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
<style type="text/css">
<style type="text/css">
p.center
{
color:red;
text-align:justify;
}
h1.head1
{
color:RED;
}
h2.head
{
color:green;
text-decoration:underline;
}

h1.head2
{
color:blue;
text-decoration:underline;
}
p.center
{
color:red;
text-align:justify;
}
h2.head
{
color:green;
text-decoration:underline;
}
h2.as
{
color:blue;
text-decoration:underline;
}
</style>
</head>
<table bgcolor="black" width=100% border=5> 
<tr>   
<td width=15%> 
     <img src="logo2.gif" height=150 width=150> 
   </td>  
   <td width=70%> 
     <center><marquee scrollamount="5" direction="left" loop="true"><h1 class="head1">Manchester Institute of Technology</h1></marquee>
<center ><marquee scrollamount="5" direction="right" loop="true"><h1 class="head2">Official Site Of The Editorial Board</h1></marquee>	
</td>
<td width=15%> 
     <img src="logo2.gif" height=150 width=150> 
   </td> 
   </tr> 
</table> 
     <div id="menu">
    <ul>
      <li><a href="home.asp">Home</a></li>
<%
if(Session("user")!="undefined" && Session("user")!="")
	Response.Write("<li><a href='wall1.asp'>Wall</a></li>");
else
	 Response.Write("<li><a href='freewall.asp'>Wall</a></li>");
      
%>

      <li><a href="campus.asp">CampusBuzz</a></li>
<%
if(Session("user")!="undefined" && Session("user")!="")
     Response.Write("<li><a href='publications.asp'>Publications</a></li>");
else
     Response.Write("<li><a href='freepublications.asp'>Publications</a></li>");
%>
<%
if(Session("user")=="undefined" ||Session("user")=="")
   Response.Write("<li><a href='register.asp'>Register</a></li>");
if(Session("user")=="undefined" ||Session("user")=="")
            Response.Write("<li><a href='loginform.asp'>Log in</a></li>");
if(Session("user")!="undefined" && Session("user")!="")
Response.write("<li><a href='signout.asp'>Log Out</a></li>");
%>
        </ul>
  </div><br/><br/>
<body><center>
<%
var frm="<form action='login.asp' method='post' name='login'><table cellpadding='0px' cellspacing='0px'><tr><td><fieldset><legend><b><i><font color='#cc3300'>Sign In</font></i></b></legend><table cellpadding='0px'><tr><td width='61'><label for='user' >Username:</label></td><td width='160'><input type='text' id='user' name='user' /></td></tr><tr>";
frm+="<td><label for='pass'>Password:</label></td><td><input type='password' id='pass' name='pass' /></td></tr><tr><td colspan='2' align='center'><input type='submit' value='Sign In'/><input type='reset' value='Reset' /></td></tr><tr><td colspan='2' align='center'>If you are a new user :&nbsp;<a href='register.asp' ><b><i><font color='ORANGE'>Sign Up</font></i></b></a></table>";
frm+="</fieldset></td></tr></table></form>";
Response.write(frm);
%>
</center>
<br/><br/>

<p align="center">Created by <a href="http://www.facebook.com/profile.php?v=feed&story_fbid=363753439727&id=740050544#!/profile.php?ref=profile&id=740050544" target="_blank">Sushant Mimani</a></p>
</body>
</html>