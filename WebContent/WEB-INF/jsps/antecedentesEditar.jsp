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
				        <li class="active"><a href="http://localhost:8080/spring/antecedentes" role="button">Antecedentes</a></li>
				        <li><a href="http://localhost:8080/spring/produccion" role="button">Producción</a></li>
				        <li><a href="http://localhost:8080/spring/otrosantecedentes" role="button">Otros Antecedentes</a></li>
				      </ul>
				    </div>
				</nav>
				</nav>
				<!--  -->

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificarantecedentes"
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
		     					 <h2>FORMACION</h2>
		     					 <h3>Formación de recursos humanos en CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default disabled">Editar</button>	
		                   	</div>
		                </div>
					</div>
                    
                                                  
                    <!-- Becarios -->
				    <div class="form-group">
				        <label for="inputBecarios">Becarios</label>
				        <input type="text" class="form-control" id="becario" path="becario" name="becario" placeholder="Becarios" value="${antecedentes.becario}">
				    	<form:errors cssClass="error" path="nombre"></form:errors>
				    </div>     
				    
				       
				           				
                    <!-- Tesistas doctorado-->                
                    <div class="form-group">
                        <label for="inputTesistaDoctorado">Tesista Doctoral</label>
                        <input type="text" class="form-control" id="tesista_doctoral" path="tesista_doctoral" name="tesista_doctoral" placeholder="Tesista Doctorado" value="${antecedentes.tesista_doctoral}">
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Tesistas maestria -->                
                    <div class="form-group">
                        <label for="inputTesistaMaestria">Tesista Maestría</label>
                        <input type="text" class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestría" value="${antecedentes.tesista_maestria}">
                		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Tesistas grado -->                
                    <div class="form-group">
                        <label for="inputTesistaGrado">Tesista Grado</label>
                        <input type="text" class="form-control" id="tesista_grado" path="tesista_grado" name="tesista_grado" placeholder="Tesista Grado" value="${antecedentes.tesista_grado}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Investigadores --> 
                    <div class="form-group">
                        <label for="inputInvestigadores">Investigadores</label>
                        <input type="text" class="form-control" id="investigadores" path="investigadores" name="investigadores" placeholder="Investigadores" value="${antecedentes.investigadores}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Pasantes de I+D y/o formación académica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formación académica</label>
                        <input type="text" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formación académica" value="${antecedentes.pasantes_id_y_facademica}">
						<form:errors cssClass="error" path="nombre"></form:errors>                   	
                    </div>
                    <!-- Personal de apoyo a la I+D --> 
                    <div class="form-group">
                        <label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D</label>
                        <input type="text" class="form-control" id="personal_apoyo_id" path="personal_apoyo_id" name="personal_apoyo_id"  placeholder="Personal de apoyo a la I+D" value="${antecedentes.personal_apoyo_id}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!-- FINANCIAMIENTO -->

                    <div class="form-group">
                        <h3>Financiamiento CyT</h3>
                    </div>   
                    <!-- Financiamiento cientifico y tecnologico --> 
                    <div class="form-group">
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnológico</label>
                        <input type="text" class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico" value="${antecedentes.financiamiento_cientifico_tecnologico}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensión</h3>
                    </div>   
                    <!-- Actividades de divulgación CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgación CyT</label>
                        <input type="text" class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgación CyT" value="${antecedentes.actividades_divulgacion}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div> 
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensión rural o industrial</label>
                        <input type="text" class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensión rural o industrial" value="${antecedentes.extension_rural_industrial}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Prestación de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestación de sericios sociales y/o comunitarios</label>
                        <input type="text" class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestación de servicios sociales y/o comunitarios" value="${antecedentes.prestacion_servicios_sociales}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producción y/o divulgación artística o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producción y/o divulgación artística o cultural</label>
                        <input type="text" class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producción y/o divulgación artística o cultural" value="${antecedentes.produccion_divulgacion_artistica}">
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de actividad de extensión --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensión</label>
                        <input type="text" class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensión" value="${antecedentes.otro_tipo_actividad}">
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluación</h3>
                    </div>
                    <!-- Evaluación de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluación de personal CyT Y jurado de tesis y/o premios</label>
                        <input type="text" class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluación de personal CyT Y jurado de tesis y/o premios" value="${antecedentes.evaluacion_personal}">
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluación de programas/proyectos de I+D y/o extensión --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluación de programas/proyectos de I+D y/o extensión</label>
                        <input type="text" class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluación de programas/proyectos de I+D y/o extensión" value="${antecedentes.evaluacion_programas}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <input type="text" class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional" value="${antecedentes.evaluacion_institucional}">
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de evaluación --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluación</label>
                        <input type="text" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluación" value="${antecedentes.otro_tipo_evaluacion}">
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!--  BECAS -->
                     
                    <div class="form-group">
                        <h3>Becas</h3>
                    </div>
                    <!-- Becas --> 
                    <div class="form-group">
                        <label for="inputBecas">Becas</label>
                        <input type="text" class="form-control" id="becas" path="becas" name="becas" placeholder="Becas" value="${antecedentes.becas}">
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>        

                    <!-- OTRAS ACTIVIDADES -->

                    <div class="form-group">
                        <h3>Otras Actividades CyT</h3>
                    </div>                                
                    <!-- Estancias y pasantías -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasantías</label>
                        <input type="text" class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasantías" value="${antecedentes.estancias_pasantias}">
	                	<form:errors cssClass="error" path="nombre"></form:errors>  
 					</div>                          
                    <!-- Operación y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operación y mantenimiento de sistemas de alta complejidad</label>
                        <input type="text" class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operación y mantenimiento de sistemas de alta complejidad" value="${antecedentes.operacion_mantenimiento}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producción --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producción</label>
                        <input type="text" class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producción" value="${antecedentes.produccion}">
						<form:errors cssClass="error" path="nombre"></form:errors>                   	
                    </div>
                    <!-- Normalización --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalización</label>
                        <input type="text" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalización" value="${antecedentes.normalizacion}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Ejercicio de la profesión en el ámbito no académico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesión en el ámbito no académico</label>
                        <input type="text" class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path=" ejercicio_profesion_ambito_no_academico" name=" ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesión en el ámbito no académico" value="${antecedentes.ejercicio_profesion_ambito_no_academico}">
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otra actividad CyT --> 
                    <div class="form-group">
                        <label for="inputOtraActividad">Otra actividad CyT</label>
                        <input type="text" class="form-control" id="otra_actividad_cyt" path="otra_actividad_cyt" name="otra_actividad_cyt" placeholder="Otra actividad CyT" value="${antecedentes.otra_actividad_cyt}">
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                  <button type="submit" class="btn btn-primary" name="action" value="Enviar">Enviar</button>


				</form:form>
			</div>	<!--container-->
		</div>
	</div>

	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script>
	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script>
	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script>
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