<%@language="javascript"%>
<html>
<head>
<title>Home</title>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
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
Session("user")="";
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
          <h2 class="head">Welcome: <%Response.write(Session("user"))%></h2>  
     <p class="center">Ever thought what life is all about? Is it just waking up every morning  and catching up with the regular hustle and bustle? Is there a life  beyond this? <br />
              Entangled in the cobwebs of life we have little time to ponder  over this. Consequences are dreary and the whole meaning of life glides by unnoticed. 
              This necessitates a LIFE alongside life, full of  revelations and promises to meet a blissful end. 
              This is what we strive  to achieve an endeavour to reawaken the muse in every  individual that has been hibernating since ages.
              This is an effort to  enliven the spirit of our college and project it to the world outside. And we  expect each one of you to be a part of this prolific journey. 
              We wish  to showcase a bouquet where all of you blossom and spread the fragrance  of your thoughts to every passersby. 
              The bouquet would need a perfect combination and harmony to create a fragrance of its own and that is  why we crave for a sense of unity that brings us all on a common  ground. 
              And through the Ed Board we wish to create one such platform where  all think and all hone their thoughts; where all converse their minds  and where ideas crystallize into accomplishments.
              This is a clarion  call. Believe in your belief. Think with us; Think beyond the mundane  matters of life.
              We promise an exhilarating experience that will add a  new dimension to your persona and will open new vistas of life! </p><br />
              <br />
            <h3>Sushant Mimani <br/>
            (EDITOR)</h3></p>
         
<hr/>
<br/>
     <p align="center">Created by <a href="http://www.facebook.com/profile.php?v=feed&story_fbid=363753439727&id=740050544#!/profile.php?ref=profile&id=740050544" target="_blank">Sushant Mimani</a></p>

   </body>
</html>
