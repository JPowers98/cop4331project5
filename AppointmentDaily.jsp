<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import= "java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<style>
@import url('https://fonts.googleapis.com/css2?family=Roboto:wght@500&display=swap');

body {

	font-family: 'Roboto', sans-serif;

}
table, th, td {

 	border: 1px solid black;
 	
}

th, td{

	padding: 10px;
	
}

table.center {

  margin-left: auto;
  margin-right: auto;
  width:1420px;
}

table.right {

float: right;

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

</style>
<meta charset="UTF-8">
<title>Appointments Page</title>
</head>
<body>

	<table class="center">
	<tr>
		<th>Id</th>
		<th>Date</th>
		<th>Time</th>
		<th>Name</th>
		<th>Email</th>
		<th>Phone Number</th>
		<th>Subject</th>
		<th>Additional Notes</th>
	</tr>
	
<%

int i=1;
try{
	
	String s="com.mysql.cj.jdbc.Driver";
	
	Class.forName(s);
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","HRTYcw380!");
	
	Statement stmt = con.createStatement();
	
	ResultSet rs=stmt.executeQuery("select id,date,time,name,email,phone,subject,notes from meeting_info where date between curdate() and date_add(curdate(), interval 1 day);");
	
	while(rs.next()){
		out.println("<tr>");
		out.println("<td>" + rs.getInt(i) + "</td>");
		i++;
		out.println("<td>" + rs.getDate(i) + "</td>");
		i++;
		out.println("<td>" + rs.getTime(i) + "</td>");
		i++;
		out.println("<td>" + rs.getString(i) + "</td>");
		i++;
		out.println("<td>" + rs.getString(i) + "</td>");
		i++;
		out.println("<td>" + rs.getString(i) + "</td>");
		i++;
		out.println("<td>" + rs.getString(i) + "</td>");
		i++;
		out.println("<td>" + rs.getString(i) + "</td>");
		i = 1;
		out.println("<\tr>");
	}

}
catch(Exception e){
	out.println(e);
}




%>

    </table>
    <table class="right">
    <tr>
    	<th><button onClick="window.location.href='DeleteMeetingNon.jsp'">Cancel</button></th>
    </tr>
    <tr>
    	<th>Sort</th>
    </tr>
	    	<tr> <td> <button onClick="window.location.href='AppointmentPage.jsp'">Hourly</button> </td> </tr>
	    	<tr> <td> <button onClick="window.location.href='AppointmentDaily.jsp'">Daily</button> </td> </tr>
	    	<tr> <td> <button onClick="window.location.href='AppointmentWeekly.jsp'">Weekly</button> </td> </tr>
    
    </table>
    
    
</body>
</html>