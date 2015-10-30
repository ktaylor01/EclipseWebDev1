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
<%@page import="java.sql.Connection" %>


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Functional Website</title>
</head>
<body onload ="displayResults()" class="page">
	<h1>Home Page</h1>
	<br/>
	
<!-- ================== Bubble wrap horizontal menu bar  =================== -->
	<div id='cssmenu'>
		<ul>
			<li class='active'><a href='#'><span>Home</span></a></li>
			<li><a href='ViewContacts.jsp'><span>Contacts</span></a></li>
			<li><a href='SearchView.jsp'><span>Search</span></a></li>
		</ul>
	</div>
<!-- ==================== END of Bubble wrap  menu bar  ==================== -->

   

<!-- ==================== Container For Top Picture  ======================= -->

	<div id='homeTop'></div>
	
<!-- =================== END Container For Top Picture  ==================== -->
	

<!-- =============================== DIVS  ================================= -->
<br/>
<br/>
	<div class='allDivs'>
	<div id='welcome'>
	Welcome to my Website! Enter your contact information here...lets stay connected!
	</div>
    </div>
<br/>
    
<!-- ============================ END OF DIVS  ============================= -->
    
<!-- ============================ JAVA CODE  =============================== -->
<%

int results = 0;

if(request.getParameter("submit") != null){
	String firstName = new String();
	String lastName = new String();
	
	if(request.getParameter("firstName") != null){
		firstName = request.getParameter("firstName");
		
	}

	if(request.getParameter("lastName") != null){
		lastName = request.getParameter("lastName");
	}
	
	
	Contact contact = new Contact();
	//load object duh!
	contact.setFirstName(firstName);
	contact.setLastName(lastName);
	
	results = ContactController.insertContact(contact);
	
}%>
<!-- ============================ END OF JAVA  ============================= -->


<!-- ================================ FORM  ================================ -->
	<form name="myForm" action="index.jsp" method="post">
		<table id="contactInput" border="0">
			<tbody>
				<tr>
					<td>First Name:</td>
					<td><input type="text" name="firstName"
						placeholder="First Name" size="50" /></td>
				</tr>
				<tr>
					<td>Last Name:</td>
					<td><input type="text" name="lastName" placeholder="Last Name"
						size="50" /></td>
				</tr>
			</tbody>
		</table>
		
	<input type="hidden" value=<%=results%> name="hidden"/>
	<input type="submit" value="Submit" name="submit" />
	<input type="reset" value="Clear" name="clear" />
	
	
	<input type="button" value="View My Contacts" name="ViewContacts"
    onclick="openPage('ViewContacts.jsp')"/>
    
	</form>
<!--  ============================ END OF FORM  ============================ -->
<br/>
<br/>
<br/>
<br/>
</body>
</html>