<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
<link type="text/css" rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
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
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">Usuario: ${dni}</div>
						<div class="col-md-2"><a href="<c:url value="/logout" />">Salir</a></div>
					</div>
				</div>

				<h1>Currículum Vitae</h1>

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
					action="${pageContext.request.contextPath}/antecedentesEditar"
					modelAttribute="antedecentes">

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
								<h2>ANTECEDENTES</h2>
								
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>	
		                   	</div>
		                </div>
					</div>
					


								<h3>Formación de recursos humanos en CyT</h3>



								<!-- Becarios -->
								<div class="form-group">
									<label for="inputBecarios">Becarios: </label>
									<c:out value="${becario}" />
								</div>

								<!-- Tesistas doctorado-->
								<div class="form-group">
									<label for="inputTesistaDoctorado">Tesista Doctoral:</label>
									<c:out value="${tesista_doctoral}" />
								</div>


								<!-- Tesistas maestria -->
								<div class="form-group">
									<label for="inputTesistaMaestria">Tesista Maestría:</label>
									<c:out value="${tesista_maestria}" />
								</div>

								<!-- Tesistas grado -->
								<div class="form-group">
									<label for="inputTesistaMaestria">Tesista Grado:</label>
									<c:out value="${tesista_grado}" />
								</div>

								<!-- Investigadores -->
								<div class="form-group">
									<label for="inputInvestigadores">Investigadores:</label>
									<c:out value="${investigadores}" />
								</div>

								<!-- Pasantes de I+D y/o formación académica -->
								<div class="form-group">
									<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
										de I+D y/o formación académica:</label>
									<c:out value="${pasantes_id_y_facademica}" />
								</div>

								<!-- Personal de apoyo a la I+D -->
								<div class="form-group">
									<label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D :</label>
									<c:out value="${personal_apoyo_id}" />
								</div>


								<!-- FINANCIAMIENTO -->

								<div class="form-group">
									<h3>Financiamiento CyT</h3>
								</div>

								<!-- Financiamiento cientifico y tecnologico -->
								<div class="form-group">
									<label for="inputFinanciamientoCientificoTecnologico">inanciamiento
										cientifico y tecnológico: </label>
									<c:out value="${financiamiento_cientifico_tecnologico}" />
								</div>


								<!--EXTENSION -->

								<div class="form-group">
									<h3>Extensión</h3>
								</div>

								<!-- Actividades de divulgación CyT -->
								<div class="form-group">
									<label for="inputActividadesDeDivulgacion">Actividades
										de divulgación CyT: </label>
									<c:out value="${actividades_divulgacion}" />
								</div>


								<!-- Extension rural o industrial -->
								<div class="form-group">
									<label for="inputExtensionRuralIndustrial">Extensión
										rural o industrial: </label>
									<c:out value="${extension_rural_industrial}" />
								</div>


								<!-- Prestación de servicios sociales y/o comunitarios -->
								<div class="form-group">
									<label for="inputPrestacionServiciosSocialesComunitarios">EPrestación
										de sericios sociales y/o comunitarios: </label>
									<c:out value="${prestacion_servicios_sociales}" />
								</div>


								<!-- Producción y/o divulgación artística o cultural -->
								<div class="form-group">
									<label for="inputProduccionDivulgacionArtisticaCultural">Producción
										y/o divulgación artística o cultural: </label>
									<c:out value="${produccion_divulgacion_artistica}" />
								</div>


								<!-- Otro tipo de actividad de extensión -->
								<div class="form-group">
									<label for="inputOtroTipoActividadExtension">Otro tipo
										de actividad de extensión: </label>
									<c:out value="${otro_tipo_actividad}" />
								</div>


								<!--EVALUACION -->
								<div class="form-group">
									<h3>Evaluación</h3>
								</div>

								<!-- Evaluación de personal CyT Y jurado de tesis y/o premios -->
								<div class="form-group">
									<label for="inputEvaluacionDePersonal">Evaluación de
										personal CyT Y jurado de tesis y/o premios: </label>
									<c:out value="${evaluacion_personal}" />
								</div>


								<!-- Evaluación de programas/proyectos de I+D y/o extensión -->
								<div class="form-group">
									<label for="inputEvaluacionProgramas">Evaluación de
										programas/proyectos de I+D y/o extensión: </label>
									<c:out value="${evaluacion_programas}" />
								</div>


								<!-- Evaluacion institucional -->
								<div class="form-group">
									<label for="inputEvaluacionInstitucional">Evaluacion
										institucional: </label>
									<c:out value="${evaluacion_institucional}" />
								</div>

								<!-- Otro tipo de evaluación -->
								<div class="form-group">
									<label for="inputOtroTipoEvaluacio">Otro tipo de
										evaluación: </label>
									<c:out value="${otro_tipo_evaluacion}" />
								</div>

								<!--  BECAS -->

								<div class="form-group">
									<h3>Becas</h3>
								</div>

								<!-- Becas -->
								<div class="form-group">
									<label for="inputBeca">Becas: </label>
									<c:out value="${inputBeca}" />
								</div>

								<!-- OTRAS ACTIVIDADES -->

								<div class="form-group">
									<h3>Otras Actividades CyT</h3>
								</div>

								<!-- Estancias y pasantías -->
								<div class="form-group">
									<label for="inputEstanciasPasantias">Estancias y
										pasantías: </label>
									<c:out value="${estancias_pasantias}" />
								</div>

								<!-- Operación y mantenimiento de sistemas de alta complejidad -->
								<div class="form-group">
									<label for="inputOperacionyMantenimiento">Operación y
										mantenimiento de sistemas de alta complejidad: </label>
									<c:out value="${operacion_mantenimiento}" />
								</div>

								<!-- Producción -->
								<div class="form-group">
									<label for="inputProduccion">Producción: </label>
									<c:out value="${produccion}" />
								</div>

								<!-- Normalización -->
								<div class="form-group">
									<label for="inputNormalizacion">Normalización: </label>
									<c:out value="${normalizacion}" />
								</div>

								<!-- Ejercicio de la profesión en el ámbito no académico -->
								<div class="form-group">
									<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
										de la profesión en el ámbito no académico: </label>
									<c:out value="${ejercicio_profesion_ambito_no_academico}" />
								</div>

								<!-- Otra actividad CyT -->
								<div class="form-group">
									<label for="inputOtraActividad">Otra actividad CyT: </label>
									<c:out value="${otra_actividad_cyt}" />
								</div>

							</div>
							
				</form:form>

			</div>
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
				</div>
				<!--col-6-->
			</div>
		</div>
		<!--well-->
	</div>
</footer>
</html>