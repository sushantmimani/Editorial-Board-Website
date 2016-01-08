<%@language="javascript"%>
<html>
<head>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
<title>Campus Buzz</title>
<style type="text/css">
h1.note
{
color:cyan;
text-align:center;
}
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
a.camp {
	text-decoration: none;
	color: RED;
}
a.info {
	text-decoration: underline;
	color: #6633FF;
}
a.camp:hover {
	text-decoration: none;
	color: White;
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
<ul>
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
<marquee  scrollamount="8" behavior="alternate" height="50%" width="100%"> 
<img src="freshers.png" width="200" height="200">
<img src="debate.gif" width="200" height="200">
<img src="kidsnight.gif" width="200" height="200">
<img src="sports.jpg" width="200" height="200">
<img src="oh.jpg" width="200" height="200">
</marquee>
<a name="top"></a>
<h1 class="note">EVENTS COMING UP</h1>
<center><marquee  onMouseOver="this.stop()" onMouseOut="this.start()"scrollamount="2" direction="down" loop="true" height="40%" width="25%"> 
<b><a class="camp" href="#sports">Apr 23-30 Sports Week</a><br/><br/>
<a class="camp" href="#oh">Apr 3rd Open House</a><br/><br/>
<a class="camp" href="#mn">May 31st  Movie Night</a><br/><br/>
<a class="camp" href="#ibd">May 16th  Inter-Branch Debate</a><br/><br/>
<a class="camp" href="#fn">May 1st  Fresher's Night</a></b><br/> 
<br/></font> </center> </marquee></li> </a>

<br/><br/><br/>
<h2><a class="info" name="fn">Fresher's Night</a></h2>
<img src="freshers.jpg" align="right" width="200" height="200">
<p style="color:white"><br/><br/><br/>
This is the event thats students look forward to each year.The Fresher's Party!Its party all night and a really nice 
opportunity to make new friends.
</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center><a href="#top" class="camp">Back to Top</a></center>
<br/><br/><br/>
<h2><a class="info" name="ibd">Inter Branch Debate</a></h2>
<img src="debate.jpg" align="left" width="200" height="200">
<p style="color:white"><br/><br/><br/>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
The Battle of the Speakers.Its a chance to show everyone that you can 
SPEAK.The winning team gains the respect of the Debating Club of MIT.
</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center><a href="#top" class="camp">Back to Top</a></center>
<br/><br/><br/>
<h2><a class="info" name="mn">Movie Night</a></h2>
<img src="movie-night.jpg" align="right" width="200" height="200"><br/><br/><br/>
<p style="color:white">This one is for all the movie addicts out there.The best movies in your very own COLLEGE AUDITORIUM!!
What can be better than this!!</p>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center><a href="#top" class="camp">Back to Top</a></center>
<br/><br/><br/>
<h2><a class="info" name="oh">Open House</a></h2>
<img src="openhs2.gif" align="left" width="200" height="200"><br/><br/><br/>
<p style="color:white">
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
Choose the topics.Choose the speakers.Let the discussions begin!</p><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center><a href="#top" class="camp">Back to Top</a></center>
<br/><br/><br/>
<h2><a class="info" name="sports">Sports Week</a></h2>
<img src="sports.gif" align="right" width="200" height="200"><br/><br/><br/>
<p style="color:white">Like sports?We have lots in store for you.A week long atheletic meet for the sportsman in you.Let the competiton begin!
</p>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<center><a href="#top" class="camp">Back to Top</a></center>
<br/><br/><br/><br/><br/><br/><br/><br/><br/>
<hr/>
<br/>
<p align="center">Created by <a href="http://www.facebook.com/profile.php?v=feed&story_fbid=363753439727&id=740050544#!/profile.php?ref=profile&id=740050544" target="_blank">Sushant Mimani</a></p>
   </body>
      </html>
