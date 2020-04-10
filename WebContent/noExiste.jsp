<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
    	<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
		    pageEncoding="ISO-8859-1"%>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	    <title><% out.print((String)session.getAttribute("nombre"));%>
					<% out.print(" no aparece");%>
		</title>
	    <!--Import Google Icon Font-->
	    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
	    <!--Import materialize.css-->
	    <link type="text/css" rel="stylesheet" href="estilo/materialize/css/materialize.min.css"  media="screen,projection"/>
	    
	    <script type="text/javascript" src="estilo/materialize/js/materialize.min.js"></script>
	
	    <!--Let browser know website is optimized for mobile-->
	    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    </head>

    <body>
    	<div class="container">
			<div class="jumbotron">
			  <h1 style="text-align: center">Hola, <% out.print((String)session.getAttribute("nombre"));%>.</h1>
			  <div class="alert alert-danger" style="text-align: center">
				<p>
					<strong> <% out.print("No estás en la base de datos mágica."); %> </strong>
				</p>
			  </div>
			</div>
		</div>
				
	</body>

</html>