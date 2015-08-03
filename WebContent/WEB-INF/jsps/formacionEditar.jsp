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
		<title>Curr�culum Vitae</title>
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
				<h1>Curr�culum Vitae</h1>
				<p>Seleccione una categor�a para cargar/editar sus datos:</p>
				
				<!-- NAVBAR -->
				<nav class="navbar navbar-default">
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="http://www.um.edu.ar/cv/datos" role="button">Datos Personales</a></li>
				        <li><a href="http://www.um.edu.ar/cv/formacion" role="button">Formaci�n</a></li>
				        <li><a href="http://www.um.edu.ar/cv/cargos" role="button">Cargos</a></li>
				        <li><a href="http://www.um.edu.ar/cv/antecedentes" role="button">Antecedentes</a></li>
				        <li><a href="http://www.um.edu.ar/cv/produccion" role="button">Producci�n</a></li>
				         <li>Otros Antecedentes</li>
				      </ul>
				    </div>
				</nav>
				<!--  -->

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificarformacion"
					modelAttribute="dp">
		
					
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
		     					<h2>FORMACION</h2></div>
		     					<h3>Formaci�n Acad�mica</h3>
		                   		<div class="col-md-1"></div>
		                   		<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default disabled">Editar</button>	
		                   	</div>
		                </div>
					</div>

				
					
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado</label> <input
							type="text" id="nivel_universitario_posgrado" path="nivel_universitario_posgrado" name="nivel_universitario_posgrado" class="form-control"
							placeholder="Nivel Universitario de Posgrado" value="${nivel_universitario_posgrado}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					
					
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgradoEsp">Nivel Universitario de
							Posgrado/especializaci�n</label> <input type="text" id="nivel_universitario_posgrado_especializacion" path="nivel_universitario_posgrado_especializacion" name="nivel_universitario_posgrado_especializacion"
							class="form-control"
							placeholder="Nivel Universitario de Posgrado/especializaci�n" value="${nivel_universitario_posgrado_especializacion}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioGrado">Nivel Universitario de
							Grado</label> <input type="text" id="nivel_universitario_grado"
							class="form-control"
							placeholder="Nivel Universitario de Grado" value="${nivel_universitario_grado}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelTerciario">Nivel Terciario no Universitario</label> <input type="text" id="nivel_terciario_no_universitario" path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							class="form-control"
							placeholder="Nivel Terciario No Universitario" value="${nivel_terciario_no_universitario}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formaci�n Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					<div class="form-group">
						<label for="inputEspecialidadCertificada">Especialidad certificada por
							organismo de salud</label> <input type="text"  id="especialidad_certificada" path="especialidad_certificada" name="especialidad_certificada" class="form-control"
							placeholder="Especialidad certificada por organismo de salud" value="${especialidad_certificada}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Posdoctorado -->
					<div class="form-group">
						<label for="inputPosdoctorado">Posdoctorado</label> <input type="text" id="posdoctorado" path="posdoctorado" name="posdoctorado"
							class="form-control" placeholder="Posdoctorado" value="${posdoctorado}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgrado">Cursos de posgrado y/o
							capacitaciones extracurriculares</label> <input type="text" id="cursos_posgrado_y_capacitaciones" path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							class="form-control"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares" value="${cursos_posgrado_y_capacitaciones}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputIdiomas">Idiomas</label> <input type="text" id="idiomas" path="idiomas" name="idiomas"
							class="form-control" placeholder="Idiomas" value="${idiomas}">
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>

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
							Tel�fonos: 54 261 4202017. Fax: 54 261 4202017 (Opci�n 9)</p>
					</div>
				</div><!--col-6-->
			</div>
		</div><!--well-->
	</div>
</footer>
</html>