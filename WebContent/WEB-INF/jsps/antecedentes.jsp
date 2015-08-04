<%@include file="includes/header.jsp" %>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
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
				</form:form>
			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
	
</body>
</html>