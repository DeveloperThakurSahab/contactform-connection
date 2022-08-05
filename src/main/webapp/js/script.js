 /** function for lname*/
function checkName(){
	var f=document.contact.name.value;
	var reg=/^[A-Za-z]+$/;
	if(f==""){
		document.getElementById("name").innerHTML="Please Enter Last Name";
	}
	else if(!reg.test(f)){
		document.getElementById("name").innerHTML="Please Enter Only Alphabets";
	}
	else{
		document.getElementById("name").innerHTML="";
	}
}

/** function for email*/
function checkEmail(){
	var f=document.contact.email.value;
	var reg=/^[A-Za-z0-9-_.]+@[A-Za-z]+\.[A-Za-z]{2,4}$/;
	if(f==""){
		document.getElementById("email").innerHTML="Please Enter Email";
	}
	else if(!reg.test(f)){
		document.getElementById("email").innerHTML="Please Enter A Valid Email";
	}
	else{
		document.getElementById("email").innerHTML="";
	}
}

/** function for mobile*/
function checkPhone(){
	var f=document.contact.phone.value;
	var reg=/^\d[10]$/;
	if(f==""){
		document.getElementById("phone").innerHTML="Please Enter Mobile";
	}
	else if(!reg.test(f)){
		document.getElementById("phone").innerHTML="Please Enter 10 Digits Only";
	}
	else{
		document.getElementById("phone").innerHTML="";
	}
}
