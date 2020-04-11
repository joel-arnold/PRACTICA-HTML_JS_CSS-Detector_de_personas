<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Perfil de <% out.print((String)session.getAttribute("nombreCompleto")); %></title>

  <!-- Bootstrap core CSS -->
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet">
  <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet">
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/resume.min.css" rel="stylesheet">

</head>

<body id="page-top">
  <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
    <a class="navbar-brand js-scroll-trigger" href="#">
      <span class="d-block d-lg-none"><% out.print((String)session.getAttribute("nombreCompleto")); %></span>
      <span class="d-none d-lg-block">
      	<img onclick="mostrarMensaje()" class="img-fluid img-profile rounded-circle mx-auto mb-2" src="<% out.print((String)session.getAttribute("rutaImg")); %>" alt="">
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#principal">Principal</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#skills">Habilidades</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#colorFavorito">Color favorito</a>
        </li>
        <li class="nav-item">
          <a class="nav-link js-scroll-trigger" href="#awards">Redes sociales</a>
        </li>
      </ul>
    </div>
  </nav>

  <div class="container-fluid p-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="principal">
      <div class="w-100">
        <h1 class="mb-0"> <% out.print((String)session.getAttribute("nombreCompleto")); %>
          <span class="text-primary"><p class="lead mb-5"></p></span>
        </h1>
        <div class="subheading mb-5"><% out.print((String)session.getAttribute("direccion")); %>&nbsp;&nbsp;&nbsp;
          - &nbsp;<a href="mailto:<% out.print((String)session.getAttribute("correo")); %>"> <% out.print((String)session.getAttribute("correo")); %></a>
        </div>
        <p class="lead mb-5">Fecha de nacimiento: <% out.print((String)session.getAttribute("fechaNac")); %></p>
        <p class="lead mb-5">Teléfono: <% out.print((String)session.getAttribute("telefono")); %></p>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="skills">
      <div class="w-100">
        <h2 class="mb-5">Habilidades</h2>

        <div class="subheading mb-3">Habilidades principales de <% out.print((String)session.getAttribute("nombre")); %></div>
        <ul class="list-inline dev-icons">
          <li class="list-inline-item">
          	<i class="fas fa-couch"></i>
          </li>
          <li class="list-inline-item">
            <i class="fas fa-hamburger"></i>
          <li class="list-inline-item">
            <i class="fas fa-bed"></i>
          </li>
          <li class="list-inline-item">
            <i class="fas fa-pizza-slice"></i>
          </li>
          <li class="list-inline-item">
            <i class="fas fa-bacon"></i>
          </li>
        </ul>    
        <ul class="fa-ul mb-0">
          <li>
            <i class="fa-li fa fa-check"></i>
            <% out.print((String)session.getAttribute("habilidad1")); %></li>
          <li>
            <i class="fa-li fa fa-check"></i>
            <% out.print((String)session.getAttribute("habilidad2")); %></li>
          <li>
            <i class="fa-li fa fa-check"></i>
            <% out.print((String)session.getAttribute("habilidad3")); %></li>
        </ul>
      </div>
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="colorFavorito">
      <div class="w-100">
        <h2 class="mb-5">Color Favorito</h2>
        <p>A <% out.print((String)session.getAttribute("nombre")); %> le encanta el color <% out.print((String)session.getAttribute("colorFav")); %>.</p>
      </div>
        
    </section>

    <hr class="m-0">

    <section class="resume-section p-3 p-lg-5 d-flex align-items-center" id="awards">
      <div class="w-100">
        <h2 class="mb-5">Redes sociales de <% out.print((String)session.getAttribute("nombre")); %></h2>
        <div class="social-icons">
          <% if((String)session.getAttribute("linkedin") != null){
        	  %><a href="<% out.print((String)session.getAttribute("linkedin")); %>">
            	<i class="fab fa-linkedin-in"></i>
          </a>
          <% }if((String)session.getAttribute("instagram") != null){
        	  %>          
          <a href="<% out.print((String)session.getAttribute("instagram")); %>">
            <i class="fab fa-instagram"></i>
          </a>
          <% }if((String)session.getAttribute("facebook") != null){
        	  %>
          <a href="<% out.print((String)session.getAttribute("facebook")); %>">
            <i class="fab fa-facebook-f"></i>
          </a>
          <% } %>
          <% if(((String)session.getAttribute("facebook") == null) && ((String)session.getAttribute("instagram") == null) && ((String)session.getAttribute("linkedin") == null)){
        	%> <p class="mb-5"> A <% out.print((String)session.getAttribute("nombre")); %> no le gustan las redes sociales.</p> <%  
          }%>
        </div>
      </div>
    </section>

  </div>
	
  <!-- Bootstrap core JavaScript -->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Plugin JavaScript -->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for this template -->
  <script src="js/resume.min.js"></script>

</body>

	<script type="text/javascript">
		function mostrarMensaje() {
		alert('Apretaste en la foto de <% out.print(session.getAttribute("nombre")); %>');
		}
	</script>

</html>