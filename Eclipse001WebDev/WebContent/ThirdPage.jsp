<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="css/text" href="MyCSS.css" />
<link href='https://fonts.googleapis.com/css?family=Londrina+Shadow'
	rel='stylesheet' type='text/css'>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Using Forms</title>
</head>
<body Class="page-three">
	<h1>Using Forms</h1>
	<%
		String firstName = request.getParameter("first");
		String lastName = request.getParameter("last");
		String emailAddress = request.getParameter("email");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
	%>
	<table border="1">
		<thread>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email Address</th>
			<th>Gender</th>
			<th>Date of Birth</th>
		<tr>
		</thread>
		<tbody>
			<tr>
				<td><%=firstName%></td>
				<td><%=lastName%></td>
				<td><%=emailAddress%></td>
				<td><%=gender%></td>
				<td><%=dob%></td>
			</tr>
		</tbody>
	</table>


	<a href="SecondPage.jsp">Back</a>
</body>
</html>