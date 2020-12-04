<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial scale=1" charset="UTF-8">
<style>

@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');

body {

	font-family: 'Roboto', sans-serif;

}
form {

	border: 3px solid #f1f1f1;

}

input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

button {
  background-color: Black;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  font-family: 'Roboto', sans-serif;
}

button:hover {
  opacity: 0.8;
  background-color: #B7A369;
}


.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

.container {
  padding: 16px;
}

.left {
  width: auto;
  padding: 10px 18px;
  float:left;
}

.right {
  width: auto;
  padding: 10px 18px;
  float:right;
}

</style>
<title>Cancel Appointment</title>
</head>
<body>
	<h2>Cancel Appointment</h2>
	<form method="GET" action="DeleteCheck.jsp">
	
		<div class="imgcontainer">
		
	    	<img src="Secondary_KnightSmall.png" alt="Knight">
	    	
	  	</div>
	  	
	  	<div class="container">
	  	
	    	<label for="id"><b>Appointment ID</b></label>
	    	<input type="text" placeholder="Enter ID" name="id" required>
	
	    	<label for="name"><b>Name</b></label>
	    	<input type="text" placeholder="Enter Name" name="name" required>
	        
	    	<button type="submit">Cancel Appointment</button>
	    	
	  	</div>
	  	
	  	<div class="container" style="background-color:#f1f1f1">
	  	
    	<button type="button" class="left" onClick="window.location.href='login.jsp'">Home Page</button>
    	<button type="button" class="right" onClick="window.location.href='createMeeting.jsp'">Schedule Appointment</button>
  
  		</div>

	</form>
</body>
</html>