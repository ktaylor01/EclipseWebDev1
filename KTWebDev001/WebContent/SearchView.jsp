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
<title>Keyword Search</title>
</head>
<body class="page">
	<h1>Search Page</h1>
	<%
		String keyword = "";
		if (request.getParameter("txtKeyword") != null) {
			keyword = request.getParameter("txtKeyword");

		}
	%>
	<!-- ================== Bubble wrap horizontal menu bar  =================== -->
	<div id='cssmenu'>
		<ul>
			<li><a href='index.jsp'><span>Home</span></a></li>
			<li><a href='ViewContacts.jsp'><span>My Contacts</span></a></li>
			<li class='active'><a href='#'><span>Search</span></a></li>

		</ul>
	</div>
	<!-- ==================== END of Bubble wrap  menu bar  ==================== -->


	<!-- ==================== Container For Top Picture  ======================= -->

	<div id='SearchTop'></div>

	<!-- =================== END Container For Top Picture  ==================== -->
	<br />
	<h3>Search my contact list by last name.</h3>
	<br />
	<form name="frmSearch" method="get" action="SearchView.jsp">
		<table id="SearchTable" align="center" width="599" border="1">
			<tr>
				<th>Keyword <input name="txtKeyword" type="text"
					id="txtKeyword value=<%=keyword%>"> <input type="submit"
					name="submit" value="Search"> <input type="reset"
					name="reset" value="Clear">
				</th>
			</tr>
		</table>
	</form>
	<br />
	<br />

	<%
		if (request.getParameter("submit") != null) {
			ResultSet rec = ContactController.searchContacts(keyword);
	%>

	<table id="ShowTable" align="center" width="600" border="1">
		<tr>
			<th width="91"><div align="center">id</div></th>
			<th width="98"><div align="center">first_name</div></th>
			<th width="98"><div align="center">last_name</div></th>
		</tr>

		<%
			while ((rec != null) && (rec.next())) {
		%>
		<tr>
			<td><div align="center"><%=rec.getInt("id")%></div></td>
			<td><%=rec.getString("first_name")%></div></td>
			<td><%=rec.getString("last_name")%></div></td>
		</tr>
		<%
			}
		%>
		<%
			}
		%>

	</table>
	<br />
	<br />
	<br />
	<br />
	<a href="ViewContacts.jsp">Previous Page</a>
	<br />
	<br />
	<br />
	<br />
</body>
</html>