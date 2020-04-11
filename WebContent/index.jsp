<!DOCTYPE html>
<html lang="es">  
	<head>    
	    <title>Detector de personas</title>    
	    <meta charset="UTF-8">
	    <meta name="title" content="Detector m�gico de personas">
	    <meta name="description" content="Esta p�gina te detecta magicamente qui�n es qui�n">
	    
		<script src="estilo/jquery-3.4.1.min.js"></script>
	    <link href="estilo/fontawesome/css/all.css" rel="stylesheet">
	    <link href="estilo/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<script src="estilo/bootstrap/js/bootstrap.min.js"></script>
		
	    <!-- Compiled and minified CSS -->
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	
	    <!-- Compiled and minified JavaScript -->
	    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
 
			
  	</head>  

	<body>
	  <div class="container">
	    <div class="row">
	      <div class="col-lg-10 col-xl-9 mx-auto">
	        <div class="card card-signin flex-row my-5">
	          <div class="card-img-left d-none d-md-flex">
	             <!-- Background image for card set in CSS! -->
	          </div>
	          <div class="card-body">
	            <h5 class="card-title text-center">Detector m�gico de personas</h5>
	            <form class="form-signin" action="Identificador" method=post>
	              <div class="form-label-group">
	                <input type="text" id="inputUserame" class="form-control" placeholder="�Qui�n sos?" name="persona" required autofocus>
	                <br>
	              </div>
	              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit">Detectar</button>
	            </form>
	          </div>
	        </div>
	      </div>
	    </div>
	  </div>
	  <div class="card-title text-center">
	  	<a onclick="M.toast({html: 'Joel Arnold� - A�o 2020'})" class="btn">�Quien cre� el sitio?</a>
	  </div>
	</body>
	
	<script  type="text/javascript">
	function mostrarHora() {
		var time = new Date();
		console.log(time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds());
		}
	</script>
	
</html>