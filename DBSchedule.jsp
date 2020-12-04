<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*,java.io.*,java.text.SimpleDateFormat,java.util.Date,java.text.DateFormat,java.util.Random" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<%

Random rand = new Random();

int id = rand.nextInt(1000000);
String date = request.getParameter("date");
String time = request.getParameter("time");
String name = request.getParameter("name");
String email = request.getParameter("email");
String phone = request.getParameter("phone");
String subject = request.getParameter("subject");
String addnotes = request.getParameter("addnotes");

//Make formats for date and time
DateFormat formatter =  new SimpleDateFormat("yyyy-MM-dd");
DateFormat formatter1 = new SimpleDateFormat("hh:mm");

//Parse strings and turn them into java date and time objects
Date date1 = formatter.parse(date);
Date time1 = formatter1.parse(time);

//Turn into SQL date and time objects
java.sql.Date sqlDate = new java.sql.Date(date1.getTime());
java.sql.Time sqlTime =  new java.sql.Time(time1.getTime());



String query = ("INSERT INTO meeting_info (id,date,time,name,email,phone,subject,notes) VALUES (?,?,?,?,?,?,?,?)");


try{
	
	String s="com.mysql.cj.jdbc.Driver";
	
	Class.forName(s);
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","HRTYcw380!");
		
	PreparedStatement stmt = con.prepareStatement(query);
	
	stmt.setInt(1, id);
	stmt.setDate(2, sqlDate);
	stmt.setTime(3, sqlTime);
	stmt.setString(4, name);
	stmt.setString(5, email);
	stmt.setString(6, phone);
	stmt.setString(7, subject);
	stmt.setString(8, addnotes);
	
	
	stmt.executeUpdate();
	
	out.println("You've successfully scheduled an appointment" + "<a href='login.jsp'> Go to Welcome Page</a>" );
	
	stmt.close();
	con.close();
}

catch(Exception e){
	out.println(e);
}





%>
</body>
</html>