<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.9.2/jquery-ui.js"></script>
<script type="text/javascript" src="JSfile.js"></script>
<link rel="stylesheet" type="css/text" href="CSSfile.css" />

<%@page import="gui.DBConnection"%>
<%@page import="gui.Contact"%>
<%@page import="gui.ContactController"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>

<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>View All Contacts</title>
</head>
<body class="page">
<h1>Contacts Page</h1>
<!-- ================== Bubble wrap horizontal menu bar  =================== -->
	<div id='cssmenu'>
		<ul>
			<li><a href='index.jsp'><span>Home</span></a></li>
			<li class='active'><a href='#'><span>Contacts</span></a></li>
			<li><a href='SearchView.jsp'><span>Search</span></a></li>
		</ul>
	</div>
<!-- ==================== END of Bubble wrap  menu bar  ==================== -->
<!-- ==================== Container For Top Picture  ======================= -->

	<div id='ViewTop'></div>
	
<!-- =================== END Container For Top Picture  ==================== -->
<br/><br/><br/>
<h3>All My Contacts</h3>
<%
		Contact c = new Contact();
		ResultSet display = ContactController.displayContacts();
	%>


	<table id="contactOutput" align = "center" width="600" border="1">
		
		<tbody>
			<tr>
			
			<th width="98"><div align="center">first_name</div></th>
			<th width="98"><div align="center">last_name</div></th>
			</tr>
			<%
				while(display.next()) {
			%>
			<tr>
			
			<td><%=display.getString("first_name")%></div></td>
			<td><%=display.getString("last_name")%></div></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
	<br />
	<br />
	<br />
	<br />
	<a href="index.jsp">Previous Page</a>
	<br />
	<br />
	<br />
	<br />

</body>
</html>