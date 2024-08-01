<%@page import="com.bhumika.model.Customer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Account</title>
 <link rel="stylesheet" href="./resources/style.css">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
 <nav class="navbar">
        <ul class="nav-menu">
         <li ><a style="position:relative;right:705px;" href="#">R3sysDB</a></li>
            <li><a href="login">Home</a></li>
            <li><a href="login">Logout</a></li>
            <form action="viewOneAccount" method="post" >
				<pre><input type="text" name="ano" placeholder="Enter account number"><button id="btn"><i class="fas fa-search icon"></i></button></pre>
			</form>
        </ul>
    </nav>

<%
	Customer vcustomer=(Customer)request.getAttribute("customerList");
%>
<table>
<tr>
	<th>Account no.</th>
	<th>Account Name</th>
	<th>Mobile no.</th>
	<th>City</th>
	<th>Balance</th>
	<th>Actions</th>
</tr>

<% 

%>
<tr>
	<td><%=vcustomer.getCustNo() %></td>
	<td><%=vcustomer.getCustName() %></td>
	<td><%=vcustomer.getCustMob() %></td>
	<td><%=vcustomer.getCustCity() %></td>
	<td><%=vcustomer.getCustBalance() %></td>
	<td><a style="color:red" href="delete?id=<%=vcustomer.getCustNo() %>">Delete</a></td>
</tr>
<%

%>
<tr>

</tr>
</table>
</body>
</html>




