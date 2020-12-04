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
	int id = Integer.parseInt(request.getParameter("id"));
	String name = request.getParameter("name");
	String query = "delete from meeting_info where name = ?";
	
	try{
		
		String s="com.mysql.cj.jdbc.Driver";
		
		Class.forName(s);
		
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase","root","HRTYcw380!");
		
		Statement stmt = con.createStatement();
		
		ResultSet rs=stmt.executeQuery("select id,name from meeting_info");
				
		String user,pws;
		int flag = 0;
		
		while(rs.next()){
			
			int dbid = rs.getInt(1);
			String dbname = rs.getString(2);
			
			if(id == dbid && name.equals(dbname)){
				
				out.println("Appointment was successfully deleted");
				
				PreparedStatement delete = con.prepareStatement(query);
				delete.setString(1, name);
				delete.executeUpdate();
				
				flag = 1;
				break;
			}
		}
		
		if(flag == 0){
			out.println("Appointment does not exist" + "<a href='DeleteMeetingNon.jsp'> Retry</a>" );
		}
		con.close();
		
	}
	
	catch(Exception e){
		out.println(e);
	}

%>
</body>
</html>