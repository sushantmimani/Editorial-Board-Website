<%@language="javascript"%>
<html>
<head>
<title>Register</title>
<script language="javascript" src="validate.js"></script>
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
<center>

<div style="color:black">

<form name="registration" action="http://localhost//project//signup.asp" method="post">
<table align="center">
<tr>
	<td width="200px"><strong>Register here</strong></td>
    <td width="290px" align="right"><sup>*</sup> Mandatory</td>
</tr>
<tr>
<td colspan="2">
<fieldset>
<table>
<tr>
<td height="115" colspan="2">

<table style="background:black;">
<tr>
<td width="190">UserID<sup>*</sup><br /><font size="-1"color="red">(Letters are case sensitive)</font></td>
<td>
<input type="text" name="userid" id="1"><font size="-1">
(Max 10 characters)</font>
</td>
</tr>

<tr>
<td>Password<sup>*</sup></td>
<td><input type="password" name="pwd" /></td>
</tr>
<tr>
<td>Confirm Password<sup>*</sup></td>
<td><input type="password" name="confirmpwd" /></td>
</tr>
</table>

</td>
</tr>

<tr>
<td height="152">
<table>
<tr>
<td width="190">First Name<sup>*</sup></td>
<td><input type="text" name="fname" /></td>
</tr>
<tr>
<td>Last Name<sup>*</sup></td>
<td><input type="text" name="lname" /></td>
</tr>
<tr>
<td>Gender<sup>*</sup></td>
<td>
<select name="gender">
<option selected="selected"  disabled="disabled" > --Select--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</option>
<option>Male</option>
<option>Female</option>
</select>
</td>
</tr>
<tr>
<td>Email ID<sup>*</sup></td>
<td><input type="text" name="emailid" /></td>
</tr>
<tr>
<td>Mobile</td>
<td><input type="text" name="mobile" /></td>
</tr>
</table>
</td>
</tr>

<tr>
<td><input type="checkbox" name="acceptTerms" />I accept the terms and conditions.</td>
</tr> 


<tr>
<td height="70" colspan="2" align="center"><input type="button" value="Submit" onClick="validateAndSubmit()" />
<input type="reset" value="Reset" />
</td>
</tr>
</table>
</fieldset>
</td>
</tr>
</table>
</form>
</div>

</td>
</tr>

</center>
<p align="center">Created by <a href="http://www.facebook.com/home.php?#!/profile.php?id=631102141&ref=profile" target="_blank">Sushant Mimani</a></p>
</body>
</html>
