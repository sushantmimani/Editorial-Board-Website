<%@language="javascript" %>
<html>
<head>
<title>Incorrect Login</title>
<link href="default.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" href="symbol.ico">
<style type="text/css">
a.enter
{
color:WHITE;
font-size:25px;
text-decoration:none;
}
h1.enter
{
color:WHITE;
font-size:15px;
}

h1.head1
{
color:RED;
}
h1.head2
{
color:blue;
text-decoration:underline;
}
</style>
</head>
<body>
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
<br/><br/>
<%
	var con=new ActiveXObject("ADODB.Connection");
	con.Provider="Microsoft.Jet.OLEDB.4.0";
	con.Open("C:\\Inetpub\\wwwroot\\project\\users.mdb");
	rs=Server.CreateObject("ADODB.recordset");
	rs.Open("select * from Users",con);
	rs.MoveFirst();

	var flag=0;
	var uid=Request.Form('user');
	var pwd=Request.Form('pass');

	while(!rs.EOF)
	{
		flag=0;
		name=rs.Fields('UserId')+"";
		if(uid==name)
		{
			passwd=rs.Fields('Password')+"";
			if(pwd==passwd)
			{
				flag=1;
				break;
			}
		}
		rs.MoveNext();
	}
if((uid+"")!="undefined" &&(uid!=""))
{
if(flag==1)
{
	Session("user")=rs.Fields('FirstName')+" "+rs.Fields("LastName");
	Response.redirect("home.asp");
}
else
{
Response.write("<center><font color=red size=4px><i>Incorrect userId and password..Sign in again...</i></font></center><br/>");
Response.write("<br/><br/><center><a class='enter'  href='loginform.asp'><h1class='enter'>Go Back</h1></a></center> ");
}
}

%>
</body>
</html>