<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		    pageEncoding="ISO-8859-1"%>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Resultado</title>
	</head>
	<body>
		<% out.print((String)session.getAttribute("nombre")); %>
		<br>
		<% out.print((String)session.getAttribute("fechaNac")); %>
		<br>
		<% out.print((String)session.getAttribute("telefono")); %>
		<br>
	</body>
</html>