<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import= "java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
</head>
<body>
<%

String username = request.getParameter("user");
String password = request.getParameter("psw");
String query = "INSERT INTO login_info ("+ " username,"+ " password ) VALUES ("+ "?, ?)";


try{
	
	String s="com.mysql.cj.jdbc.Driver";
	
	Class.forName(s);
	
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","HRTYcw380!");
		
	PreparedStatement stmt = con.prepareStatement(query);
	
	stmt.setString(1, username);
	stmt.setString(2, password);
	
	stmt.executeUpdate();
	
	stmt.close();
	con.close();
}

catch(Exception e){
	out.println(e);
}





%>
</body>
</html>