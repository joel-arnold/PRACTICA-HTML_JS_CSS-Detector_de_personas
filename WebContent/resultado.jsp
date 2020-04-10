<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		    pageEncoding="ISO-8859-1"%>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Resultado</title>
			    <!--Import Google Icon Font-->
	    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	    <!--Import materialize.css-->
	    <link type="text/css" rel="stylesheet" href="estilo/materialize/css/materialize.min.css"  media="screen,projection"/>
	    
	    <script type="text/javascript" src="estilo/materialize/js/materialize.min.js"></script>
	
	    <!--Let browser know website is optimized for mobile-->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
	</head>
	
	<body>
		<% out.print((String)session.getAttribute("nombre")); %>
		<br>
		<% out.print((String)session.getAttribute("fechaNac")); %>
		<br>
		<% out.print((String)session.getAttribute("telefono")); %>
		<br>
		<a onclick="M.toast({html: '<% out.print((String)session.getAttribute("nombre")); %>', classes: 'rounded'})" class="btn">Toast!</a>
	</body>
	
</html>