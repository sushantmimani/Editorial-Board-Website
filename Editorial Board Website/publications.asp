<%@ language="javascript" %>
<%  var conn=new ActiveXObject("ADODB.connection");
      conn.Provider="Microsoft.JET.OLEDB.4.0"
       conn.open("C:\\Inetpub\\wwwroot\\project\\publications.mdb");
        var rs=new ActiveXObject("ADODB.recordset");
        
 %>
<html>
<head>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
<title>Publications</title>
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
</head>
<form name="f1" action="publications_display.asp" method=post>
<center><pre>	Search:<input type="text" name="txt1">     <select name="val">
<option>Author's Name</option>
<option>Book's Name</option>
<option>Book Type</option>
<option>Year</option>
</select><input type="submit" value="Submit"><input type="reset" calue="cancel"></center></pre>
<br/><br/>
<table align="center" border=4 cellpadding="10" cellspacing="2">
<tr>
  <th>Publication Name</th>
  <th>Author</th>
  <th>Description</th>
  <th>Year of Publication</th>
  <%  rs=conn.Execute("Select * from publications"); %>
<%  while(!rs.Eof) 
    {  %>
<tr>
<% for(var i=0;i<(rs.Fields.Count);i++){ %>
	<td><%=rs(i) %>
<% } %>
<% rs.MoveNext %>
<% } %> 
</table><br/>
<hr/>
<br/>
     <p align="center">Created by <a href="http://www.facebook.com/profile.php?v=feed&story_fbid=363753439727&id=740050544#!/profile.php?ref=profile&id=740050544" target="_blank">Sushant Mimani</a></p>
   </body>
</html>