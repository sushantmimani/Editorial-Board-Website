<%@language="javascript"%>
<html>
<body>
<link rel="shortcut icon" href="symbol.ico">
<%
var con=new ActiveXObject("ADODB.Connection");
con.Provider="Microsoft.Jet.OLEDB.4.0";
con.Open("C:\\Inetpub\\wwwroot\\project\\users.mdb");
rs=Server.CreateObject("ADODB.recordset");

rs.Open("select * from Users",con);
	rs.MoveFirst();
	var flag=0;
	var uid=Request.Form('userid');
	if((uid+"")!="undefined")
	{ 
	flag=1;
	Session("IdAvailable")="yes";
		while(!rs.EOF)
		{
			name=rs.Fields('UserId')+"";
			if(uid==name)
			{
				flag=2;
				Session("IdAvailable")="no";
				break;
			}
			rs.MoveNext();
		}
	}


if(flag==1)
{
var phoneNo=Request.Form('mobile');
if(phoneNo=="")
	phoneNo=0;

var str="insert into Users values(\'"+Request.Form('userid')+"\',\'"+Request.Form('pwd')+"\',\'"+Request.Form('fname')+"\',\'"+Request.Form('lname')+"\',\'"+Request.Form('gender')+"\',\'"+Request.Form('emailid')+"\',"+phoneNo+")";
con.Execute(str);
Response.write("<b><h1>Thank you for registering!!!</h1></b> ");

}
else
Response.redirect("register.asp");
%>
</body>
</html>