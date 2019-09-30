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
<jsp:include page="DonorHeader.jsp"></jsp:include>

<script type="text/javascript">

function validation()
{
	var phone_no=document.getElementById("PhoneNo").value;
	var regex=/^[(0/91)?[7-9][0-9]{9}]*$/;
	if(regex.test(phone_no))
	{
	document.getElementById("phone_noError").innerHTML="";
	}
else
	{
	document.getElementById("phone_noError").innerHTML="Invalid Phone Number";
	}
	}
function validationID()
{
	var phone_no=document.getElementById("PhoneNo").value;
	var regex=/^[(0/91)?[7-9][0-9]{9}]*$/;
	if(regex.test(phone_no))
	{
	document.getElementById("phone_noError").innerHTML="";
	}
else
	{
	document.getElementById("phone_noError").innerHTML="Invalid Request_ID";
	}
	}
function validationAmount()
{
	var phone_no=document.getElementById("amount").value;
	var regex=/^[1-9]*$/;
	if(regex.test(phone_no))
	{
	document.getElementById("amountError").innerHTML="";
	}
else
	{
	document.getElementById("amountError").innerHTML="Invalid Amount";
	}
	}

function register()
{
	alert(' register');
	event.preventDefault(); 	
 // var phone_no=document.getElementById("PhoneNo").value;
  //var userId=document.getElementById("userId").value;
  var userId=localStorage.getItem("USERID");
   var Request_ID = document.getElementById("myselect").value;
   var Amount = document.getElementById("amount").value;
  // var formData = "PhoneNo=" + phone_no+ "&myselect="+Request_ID+ "&amount="+Amount;
   var formData =  "amount="+Amount +"&myselect="+Request_ID+ "&userId="+userId;
   console.log(formData);
   alert(formData);

    var url="http://localhost:8080/webcharity-servlet/contributerequest?"+ formData;    
    console.log(url);
    alert(url);
    var formData = {};
    $.get(url,function(response){
        console.log(response);
    	alert(response);  

    	
        if (response == null || response == "null") {
            alert("Invalid Username/Password");
        }
            else{
			window.location.href="?pageName=donoractivity.jsp";
            }
	      
    });
}
</script>

<body class="img">
    <div class="row justify-content-center align-items-center"
        style="height: 80vh; margin: 0;">
        <div class="col-md-9 col-lg-5 text-center"
            style="box-shadow: 5px 8px 18px -8px rgba(0, 0, 0, 0.5); border-radius: 10px">
            <form class="mx-auto formstyle" method="get" onsubmit="register()" style="font: message-box;">
                
                <div id="messageBody"></div>
                <br>
                <h2>Donor Contribution</h2>
                <br> 
               <!--  onkeyup="validationAmount()" PhoneNumber:<input type="text" id="PhoneNo" placeholder="Enter PhoneNumber"  maxlength="10" onkeyup="validation()"><span style="color:red" id="phone_noError"></span><br> <br>-->
               <label> Request-ID:</label><select id="myselect" class="form-control" required>
                            <option value="">--SELECT--</option>
                            <option value="1">Education</option>
                            <option value="2">Medicine</option>
                            <option value="4">Maintance</option>
                        </select>
   <!--   UserId :<input type="text" id="userId" placeholder="Enter Userid"  maxlength="5" ><span style="color:red" id="phone_noError"></span><br> <br>
         -->       
                Amount :<input type="text" id="amount" placeholder="Enter Amount(Rs)"  maxlength="5" ><span style="color:red" id="phone_noError"></span><br> <br>
                
                <input type="submit" class="btn btn-primary" value="Login"> 
                <input type="reset" class="btn btn-primary"> <br><br>
               
            </form>
        </div>
    </div>

</body>
</html>