<%@page import="com.dao.ContactDao"%>
<%@page import="com.bean.Contact"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Data Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<style>
	tr,td{
		padding:10px;
	}
</style>
</head>
<body>
	<table border="1" width="100%" cellpadding="10px" cellspacing="10px">
	<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>PHONE</th>
		<th>EMAIL</th>
		<th>SUBJECT</th>
		<th>MESSAGE</th>
		<th>EDIT</th>
		<th>DELETE</th>
	</tr>
	<%
		List<Contact> list = ContactDao.getAllContact();
		for(Contact c:list){
	%>
	<tr>
		<td><%= c.getId() %></td>
		<td><%= c.getName() %></td>
		<td><%= c.getPhone() %></td>
		<td><%= c.getEmail() %></td>
		<td><%= c.getSubject() %></td>
		<td><%= c.getMessage() %></td>
		<td>
			<form name="edit" method="post" action="ContactController">
				<input type="hidden" name="id" value="<%= c.getId()%>">
				<input type="submit" name="action" value="EDIT" class="btn btn-primary">
 			</form>
		</td>
		<td>
			<form name="delete" method="post" action="ContactController">
				<input type="hidden" name="id" value="<%= c.getId()%>">
				<input type="submit" name="action" value="DELETE" class="btn btn-danger">
 			</form>
		</td>
	</tr>
	<%
		}
	%>
</table>
<a href="index.jsp">Add New Query</a>
</body>
</html>