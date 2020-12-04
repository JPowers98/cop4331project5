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
	
	try{
		
		String s="com.mysql.cj.jdbc.Driver";
		
		Class.forName(s);
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","HRTYcw380!");
		
		Statement stmt = con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select * from login_info");
				
		String user,pws;
		int flag = 0;
		
		while(rs.next()){
			user = rs.getString(1);
			pws = rs.getString(2);
			if(username.equals(user) && password.equals(pws)){
				out.println("Welcome: " + user + "<a href='AppointmentPage.jsp'>Go to Appointments</a>");
				flag = 1;
				break;
			}
		}
		
		if(flag == 0){
			out.println("Username or Password is Incorrect" + "<a href='login.jsp'> Retry</a>" );
		}
		con.close();
		
	}
	
	catch(Exception e){
		out.println(e);
	}

%>
</body>
</html>