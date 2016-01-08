// JavaScript Document
function validateAndSubmit()
{
	var form=window.document.registration;
	var item;
	for(var i=0;i<form.elements.length-4;i++)
	{
		item=form.elements[i];
		if(item.value=="")
		{
			var str="";
			var name=item.name;
			if(name=="userid")
				str="UserID"
			else
			if(name=="pwd")
				str="Password"
			else
			if(name=="confirmpwd")
				str="Confirm Password"
			else
			if(name=="fname")
				str="First Name"
			else
			if(name=="lname")
				str="Last Name"
			else
			if(name=="emailid")
				str="Email ID"
			alert(str+" field is mandatory, must not be left empty");
			item.focus();
			return;
		}
		else
		if(item.name=="userid")
		{
			if(item.value.length>10)
			{
				alert("User Id should be of maximum 10 characters");
				return;
			}
		}
			
	}
	
	item=form.gender;
	if(item.selectedIndex==0)
	{
		alert("Please select a gender");
		item.focus();
		return;
	}
	
	item=form.acceptTerms;
	if(item.checked==false)
	{
		alert("You must accept the Terms and Conditions to register");
		item.focus();
		return;
	}
	
	if(form.pwd.value!=form.confirmpwd.value)
	{
		alert("Passwords do not match");
		form.pwd.focus();
	}
	else
	{
		form.action="signup.asp";
		form.submit();
	}
}

function validateSignInForm()
{
	var form=document.login;
	if(form.user.value=="")
		alert("Please enter your UserId");
	else
	if(form.pass.value=="")
		alert("Enter your password");
	else
		form.submit();
}