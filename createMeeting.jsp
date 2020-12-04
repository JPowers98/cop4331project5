<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Schedule an Appointment</title>
</head>
<body>
	<h2>Schedule an Appointment</h2>
	<form method="GET" action="DBSchedule.jsp">
	<div class="container">
	  	
	    	<label><b>Date(yyyy-mm-dd)</b></label>
	    	<input type="text" placeholder="Enter Date" name="date" required>
	
	    	<label><b>Time(hh:mm)</b></label>
	    	<input type="text" placeholder="Enter Time" name="time" required>
	    	
	    	<label><b>Name</b></label>
	    	<input type="text" placeholder="Enter Name" name="name" required>
	    	
	    	<label><b>Email</b></label>
	    	<input type="text" placeholder="Enter email" name="email" required>
	    	
	    	<label><b>Phone Number</b></label>
	    	<input type="text" placeholder="Enter Phone Number" name="phone" required>
	    	
	    	<label><b>Subject</b></label>
	    	<input type="text" placeholder="Enter Subject" name="subject" required>
	    	
	    	<label><b>Notes</b></label>
	    	<input type="text" placeholder="Enter Notes" name="addnotes" required>
	    	
	    	
	        
	    	<button type="submit">Schedule</button>
	    	
	  	</div>
	  	
	  	<div class="container" style="background-color:#f1f1f1">
	  	
    	<button type="button" class="left" onClick="window.location.href='login.jsp'">Home Page</button>
    	<button type="button" class="right" onClick="window.location.href='DeleteMeetingNon.jsp'">Cancel Appointment</button>
  
  		</div>
	</form>

</body>
</html>