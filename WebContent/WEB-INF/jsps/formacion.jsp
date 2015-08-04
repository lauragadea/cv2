<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
	<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
	<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>


	<header>
		<title>Currículum Vitae</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
				
				<form action="${logoutUrl}" method="post" id="logoutForm">
					<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
				</form>
				
				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">Usuario: ${dni}</div>
						<div class="col-md-2"><a href="<c:url value="/logout" />">Salir</a></div>
					</div>
				</div>
				
				<h1>Currículum Vitae</h1>
				<p>Seleccione una categoría para cargar/editar sus datos:</p>
				
				<!-- NAVBAR -->
				
					<nav class="navbar navbar-default">
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="http://localhost:8080/spring/datos" role="button">Datos Personales</a></li>
				        <li><a href="http://localhost:8080/spring/formacion" role="button">Formación</a></li>
				        <li><a href="http://localhost:8080/spring/cargos" role="button">Cargos</a></li>
				        <li><a href="http://localhost:8080/spring/antecedentes" role="button">Antecedentes</a></li>
				        <li><a href="http://localhost:8080/spring/produccion" role="button">Producción</a></li>
				        <li><a href="http://localhost:8080/spring/otrosantecedentes" role="button">Otros Antecedentes</a></li>
				      </ul>
				    </div>
				</nav>
				<!--  -->

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/formacionEditar"
					modelAttribute="formacion">
	
					<!-- -DNI -->
					<div class="form-group">
						<label for="inputName">DNI:</label>
						<c:out value="${dni}" />
						<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">
					</div>
					
	
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					<h2>FORMACION</h2>
		     					 <h3>Formación Académica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>		
		                   	</div>
		                </div>
					</div>
										
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado:</label>
						<c:out value="${nivel_universitario_posgrado}" />
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado/especializacion:</label>
						<c:out value="${nivel_universitario_posgrado_especializacion}" />
					</div>
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Grado:</label>
						<c:out value="${nivel_universitario_grado}" />
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Terciario no Univeresitario:</label>
						<c:out value="${nivel_terciario_no_universitario}" />
					</div>
					
					

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formación Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					
					<div class="form-group">
						<label for="inputName">Especialidad certificada por
							organismo de salud:</label>
						<c:out value="${especialidad_certificada}" />
					</div>
					
				
					<!-- Posdoctorado -->
					
					<div class="form-group">
						<label for="inputName">Posdoctorado:</label>
						<c:out value="${posdoctorado}" />
					</div>
					
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					
					<div class="form-group">
						<label for="inputName">Cursos de posgrado y/o
							capacitaciones extracurriculares:</label>
						<c:out value="${cursos_posgrado_y_capacitaciones}" />
					</div>
					
										
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputName">Idiomas:</label>
						<c:out value="${idiomas}" />
					</div>
			

		
				</form:form>
			</div>	<!--container-->
		</div>
	</div>

	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script>
	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script>
	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/script.js"></script>

	<script>
		addEventListener('load', prettyPrint, false);
		$(document).ready(function() {
			$('pre').addClass('prettyprint linenums');
		});
	</script>


</body>
<footer>
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="row">

				<div class="col-lg-12">

					<div class="col-md-4">
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="https://mail.um.edu.ar/horde3/imp/">Webmail</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="/es/mapa-sitio.html?lang=es">Mapa del Sitio</a>
							</div>
						</div>

					</div>

					<div class="col-md-7">
						<p>Boulogne Sur Mer 683. CP 5500. Mendoza, Argentina
							Teléfonos: 54 261 4202017. Fax: 54 261 4202017 (Opción 9)</p>
					</div>
				</div><!--col-6-->
			</div>
		</div><!--well-->
	</div>
</footer>
</html>