<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>REGISTRATION PAGE</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery-3.4.1.min.js"></script>

</head>
<body style="text-align:center">
<br>
<jsp:include page="Header.jsp"></jsp:include>

<!-- <h2>Register For New User</h2>
<form>
<script type="text/javascript">
function login()
{
alert("Registered successfully");
window.location.href = "?pageName=login.jsp";
}
</script>



</form>
<!-- 
<form  onsubmit="register()">

<label>UserName:</label>
<input type="text" name="UserName" id="UserName"   required autofocus />
<br/>
<label>PhoneNo:</label>
<input type="text" name="PhoneNo" id="PhoneNo"   required  />

<br/>

<input type = "submit" value = "Submit" class="btn btn-success"  >
<button type="reset" class="btn btn-danger" value="clear">clear </button>
<br/>
<a  href="login.jsp">Existing user</a>
 
 
 </form>
 -->
 <script type="text/javascript">
	function validation()
	{
		var phone_no=document.getElementById("PhoneNo").value;
		var regex=/^[(0/91)?[7-9][0-9]{9}]*$/;
		 //Pattern p = Pattern.compile("(0/91)?[7-9][0-9]{9}"); 
		if(regex.test(phone_no))
		{
		document.getElementById("phone_noError").innerHTML="";
		}
	else
		{
		document.getElementById("phone_noError").innerHTML="Invalid Phone Number";
		
		
		}
		}

	function validateName()
	{
		var name=document.getElementById("UserName").value;
		var nameRegex=/^[A-Za-z]*$/;
		if(nameRegex.test(name))
		{
		document.getElementById("nameError").innerHTML="";
		}
	else
		{
		document.getElementById("nameError").innerHTML="Name should contain alphabets only";
		
		}
	}
	
	

function register()
{
  // alert(' register');
	event.preventDefault(); 	
   
   var name = document.getElementById("UserName").value;
   var phone_no=document.getElementById("PhoneNo").value;
   var formData = "UserName=" + name+ "&PhoneNo="+phone_no;
   console.log(formData);

    var url="http://localhost:8080/webcharity-servlet/Register?"+ formData;
    console.log(url);
    //alert(url);
    var formData = {};
   // alert (fromData);
    $.get(url, function(response){
            console.log(response);
      //      alert(response);

            if (response == null || response == "null") {
            	alert("Invalid Username/Password");
            }
                else{

               	 alert('Registered Successfully');
                	window.location.href="?pageName=donoractivity.jsp";
                	
                }

            });
}
</script>
<body class="img">
    <div class="row justify-content-center align-items-center"
        style="height: 80vh; margin: 0;">
        
        
        
        <div class="col-md-6 col-lg-3 text-center"
            style="box-shadow: 5px 8px 18px -8px rgba(0, 0, 0, 0.5); border-radius: 10px">
            <form class="mx-auto formstyle" method="get" onsubmit="register()" style="font: message-box;">
                
                <div id="messageBody"></div>
                <br>
                <h2>Donor Registration</h2>
                <br> 
                  UserName   :<input type="text" id="UserName" placeholder="UserName" onkeyup="validateName()" required autofocus><span style="color:red" id="nameError"></span><br><br>
                PhoneNumber:<input type="text" id="PhoneNo" placeholder="Enter PhoneNumber"  maxlength="10" onkeyup="validation()"><span style="color:red" id="phone_noError"></span><br> <br>
                <input type="submit" class="btn btn-primary" value="Login"> 
                <input type="reset" class="btn btn-primary"> <br><br>
                <a  href="login.jsp">Existing user</a>
            </form>
        </div>
    </div>
   
</body>
</body>
</html>


