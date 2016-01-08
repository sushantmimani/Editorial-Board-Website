<%@ language=javascript %>
<html>
<head>
</head>
<body>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
<title>Wall</title>
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
h2.as
{
color:purple;
text-decoration:underline;
}
</style>
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
<form name=form1 action="wall.asp" method=get>
 <center>
<textarea name="txt" rows=5 cols=44>
</textarea><br/>
<br/>
&nbsp&nbsp&nbsp<input type="submit" value="Submit">
<input type="reset" value="Cancel">
</center>
</form>
<%
                 
	

                 	var fname="wall.txt"
                 fname=Server.MapPath(""+fname);
	var fso=Server.CreateObject("Scripting.FileSystemObject");
	if(fso.FileExists(fname))
	{
		var ts=fso.OpenTextFile(fname,1);
		
		while(!(ts.AtEndOfStream))
		{
			var val="";
			val+=ts.readLine();
			Response.Write(val);
			Response.Write("<br/>");
			
			
		}
		
	}
Response.Write("<hr/>");
 %>
<br/>
     <p align="center">Created by <a href="http://www.facebook.com/profile.php?v=feed&story_fbid=363753439727&id=740050544#!/profile.php?ref=profile&id=740050544" target="_blank">Sushant Mimani</a></p>
</head>
</html>