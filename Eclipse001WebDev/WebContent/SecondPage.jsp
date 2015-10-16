<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<link rel="stylesheet" type="css/text" href="MyCSS.css" />
<link href='https://fonts.googleapis.com/css?family=Londrina+Shadow'
	rel='stylesheet' type='text/css'>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="MyJavaScriptCode.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Using Forms</title>
</head>
<body class="page-two">
	<h1>Using Forms</h1>
	<form name="myForm" action="ThirdPage.jsp" method="post">
		<table border="0">

			<tbody>
				<tr>
					<td>First Name :</td>
					<td><input type="text" name="first" placeholder="First Name"
						size="50" /></td>
				</tr>
				<tr>
					<td>Last Name :</td>
					<td><input type="text" name="last" placeholder="Last Name"
						size="50" /></td>
				</tr>
				<tr>
					<td>Email Address :</td>
					<td><input type="text" name="email"
						placeholder="Email Address" size="50" /></td>
				</tr>
				<tr>
					<td>Gender :</td>
					<td><select name="gender">
							<option>Male</option>
							<option>Female</option>
					</select></td>
				</tr>
				<tr>
					<td>Date of Birth :</td>
					<td><input type="text" name="dob" placeholder="MM/DD/YYYY"
						size="15" /></td>
				</tr>
			</tbody>
		</table>
		<input type="reset" value="Clear" name="clear" /> <input type="submit"
			value="Submit" name="submit" />
	</form>
</body>

</html>
