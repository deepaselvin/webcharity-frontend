<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADMIN DETAILS</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script src="js/jquery-3.4.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>

</head>
<!-- 
<body style="text-align: center">
	<br>
	<br>
	<br>
	<jsp:include page="Header.jsp"></jsp:include>
	<h2>Fund Needed Details</h2>

	<a href="?pageName=donoractivity.jsp">BACK</a>
	<br />
	<br>
	<form onsubmit="login()">
	
	


		<label>Enter The Amount :</label> <input type="text" name="amount"
			id="Fundname" required autofocus /> <br /> <input type="submit"
			value="Submit" class="btn btn-success">
		<button type="reset" value="clear">clear</button>

	</form>

	<script>
		function login() {
			event.preventDefault();
			alert(' Thank You ');
			console.log(window.location.href);
			window.location.href = "index.jsp";
		}
	</script> -->

<script>
		<label>Enter The Amount :</label> <input type="text" name="amount"	id="Fundname" required autofocus /> <br />
		<label>Enter Request ID:</label> <select id="requestType" class="form-control" required>
          <option value="">--SELECT--</option>
          <option value="EDUCATION">Education</option>
          <option value="FOOD">Food</option>
          <option value="MEDICAL">Medical</option>
          <option value="MAINTANCE">Agriculture</option>
          <option value="OTHERS">Others</option>
      </select>
			 <input type="submit"value="Submit" class="btn btn-success">
		<button type="reset" value="clear">clear</button>


		</script>
		<script>
	function register()
{
   alert(' register');
	event.preventDefault(); 	
   
  
	var phone_no=document.getElementById("PhoneNo").value;
	var request_id=document.getElementById("PhoneNo").value;
	var amount_donated = document.getElementById("UserName").value;
	   var formData = "UserName=" + name+ "&PhoneNo="+phone_no;
   console.log(formData);

    var url="http://localhost:8080/webcharity-servlet/Register?"+ formData;
    console.log(url);
    alert(url);
    var formData = {};
   // alert (fromData);
    $.get(url, function(response){
            console.log(response);
            alert(response);

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
	<!-- 
<div class="row justify-content-center align-items-center" style="height: 80vh;margin:0;">
            <div class="col-md-5 text-center" style="box-shadow: 5px 8px 18px -8px rgba(0,0,0,0.5);border-radius:10px">
                
                 <div class="alert alert-success alert-dismissible fade show" id="fundStatus" style="display:none;margin: 0;" role="alert">
		  			<i id="successMsg"></i>
				  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  	</button>
				</div>
				
				 <div class="alert alert-danger alert-dismissible fade show" id="errorStatus" style="display:none;margin: 0;" role="alert">
		  			<strong id="errorMsg"></strong>
				  	<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				    <span aria-hidden="true">&times;</span>
				  	</button>
				</div>
                
                <h5 class="bg-secondary text-light" style="padding:10px 0;margin-top:-20px;border-radius: 5px;box-shadow: 5px 8px 18px -8px rgba(0,0,0,0.5)">Fund Request</h5>
                <form onsubmit="fundRequest()">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                Request Type
                            </div>
                        </div>
                        <select id="requestType" class="form-control" required>
                            <option value="">--SELECT--</option>
                            <option value="EDUCATION">Education</option>
                            <option value="FOOD">Food</option>
                            <option value="MEDICAL">Medical</option>
                            <option value="MAINTANCE">Agriculture</option>
                            <option value="OTHERS">Others</option>
                        </select>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-prepend">
                            <div class="input-group-text">
                                Amount<strong>(Rs)</strong>
                            </div>
                        </div>
                        <input type="number" name="amount" id="amount" min="1" class="form-control" placeholder="Amount" required>
                    </div>
                </div>
                <button onclick="" class="btn btn-outline-secondary">Submit</button>
                <input type="reset" class="btn btn-outline-danger">
                </form>
            </div>
        </div>
 -->
</body>
</html>