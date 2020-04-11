<!DOCTYPE html>
<html lang="es">  
	<head>    
	    <title>Detector de personas</title>    
	    <meta charset="UTF-8">
	    <meta name="title" content="Detector mágico de personas">
	    <meta name="description" content="Esta página te detecta magicamente quién es quién">
	    
		<script src="estilo/jquery-3.4.1.min.js"></script>
	    <link href="estilo/fontawesome/css/all.css" rel="stylesheet">
	    <link href="estilo/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<script src="estilo/bootstrap/js/bootstrap.min.js"></script>
		
	    <!-- Compiled and minified CSS -->
    	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
	
	    <!-- Compiled and minified JavaScript -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
 	
		<script type="text/javascript">
			function mueveReloj(){
		    momentoActual = new Date()
		    hora = momentoActual.getHours()
		    minuto = momentoActual.getMinutes()
		    segundo = momentoActual.getSeconds()
		
		    horaImprimible = hora + " : " + minuto + " : " + segundo
		
		    document.form_reloj.reloj.value = horaImprimible
		
		    setTimeout("mueveReloj()",1000)
			}
		</script>
	
  	</head>  

	<body onload="mueveReloj()">
	  <div class="container">
	  	<h5 style="text-align: center">La hora es:</h5>
	  	<form name="form_reloj">
				<input style="text-align: center" type="text" name="reloj" size="10">
		</form>
	    <div class="row">
	      <div class="col-lg-10 col-xl-9 mx-auto">
	        <div class="card card-signin flex-row my-5">
	          <div class="card-img-left d-none d-md-flex">
	             <!-- Background image for card set in CSS! -->
	          </div>
	          <div class="card-body">
	            <h5 class="card-title text-center">Detector mágico de personas</h5>
	            <form class="form-signin" action="Identificador" method=post>
	              <div class="form-label-group">
	                <input type="text" id="inputUserame" class="form-control" placeholder="¿Quién sos?" name="persona" required autofocus>
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
	  	<a onclick="M.toast({html: 'Joel Arnold© - Año 2020'})" class="btn">¿Quien creó el sitio?</a>
	  </div>
	</body>
	
	<script  type="text/javascript">
	function mostrarHora() {
		var time = new Date();
		console.log(time.getHours() + ":" + time.getMinutes() + ":" + time.getSeconds());
		}
	</script>
	
</html>