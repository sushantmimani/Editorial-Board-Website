<%@ language=javascript %>
<html>
<head>
<link rel="shortcut icon" href="symbol.ico"></head>
<body>

<%
	var d =new Date();
	var day=d.getDate();
	var mon=d.getMonth()+1;
	var y=d.getFullYear();
	var h=d.getHours();
	var m=d.getMinutes();
	var s=d.getSeconds();
	var fname="wall.txt";
	fname=Server.MapPath(""+fname);
	var fso=Server.CreateObject("Scripting.FileSystemObject");
	var ts=fso.OpenTextFile(fname,8,0);
	if(Request.QueryString("txt") != " ")
	   {
    	        ts.writeLine(Request.QueryString("txt"));
	        ts.writeLine("By:"+Session("user"));
	        ts.writeLine("		Date:     "+day+"/"+mon+"/"+y+"		Time:  "+d+":"+m+":"+s);
	        ts.writeLine("-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------");
	    }
		ts.close();
Response.Redirect("wall1.asp");
%>