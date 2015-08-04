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
					<h3>Formaci�n de recursos humanos en CyT</h3>



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
						<label for="inputTesistaMaestria">Tesista Maestr�a:</label>
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

					<!-- Pasantes de I+D y/o formaci�n acad�mica -->
					<div class="form-group">
						<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
							de I+D y/o formaci�n acad�mica:</label>
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
							cientifico y tecnol�gico: </label>
						<c:out value="${financiamiento_cientifico_tecnologico}" />
					</div>


					<!--EXTENSION -->

					<div class="form-group">
						<h3>Extensi�n</h3>
					</div>

					<!-- Actividades de divulgaci�n CyT -->
					<div class="form-group">
						<label for="inputActividadesDeDivulgacion">Actividades
							de divulgaci�n CyT: </label>
						<c:out value="${actividades_divulgacion}" />
					</div>


					<!-- Extension rural o industrial -->
					<div class="form-group">
						<label for="inputExtensionRuralIndustrial">Extensi�n
							rural o industrial: </label>
						<c:out value="${extension_rural_industrial}" />
					</div>


					<!-- Prestaci�n de servicios sociales y/o comunitarios -->
					<div class="form-group">
						<label for="inputPrestacionServiciosSocialesComunitarios">EPrestaci�n
							de sericios sociales y/o comunitarios: </label>
						<c:out value="${prestacion_servicios_sociales}" />
					</div>


					<!-- Producci�n y/o divulgaci�n art�stica o cultural -->
					<div class="form-group">
						<label for="inputProduccionDivulgacionArtisticaCultural">Producci�n
							y/o divulgaci�n art�stica o cultural: </label>
						<c:out value="${produccion_divulgacion_artistica}" />
					</div>


					<!-- Otro tipo de actividad de extensi�n -->
					<div class="form-group">
						<label for="inputOtroTipoActividadExtension">Otro tipo
							de actividad de extensi�n: </label>
						<c:out value="${otro_tipo_actividad}" />
					</div>


					<!--EVALUACION -->
					<div class="form-group">
						<h3>Evaluaci�n</h3>
					</div>

					<!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios -->
					<div class="form-group">
						<label for="inputEvaluacionDePersonal">Evaluaci�n de
							personal CyT Y jurado de tesis y/o premios: </label>
						<c:out value="${evaluacion_personal}" />
					</div>


					<!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n -->
					<div class="form-group">
						<label for="inputEvaluacionProgramas">Evaluaci�n de
							programas/proyectos de I+D y/o extensi�n: </label>
						<c:out value="${evaluacion_programas}" />
					</div>


					<!-- Evaluacion institucional -->
					<div class="form-group">
						<label for="inputEvaluacionInstitucional">Evaluacion
							institucional: </label>
						<c:out value="${evaluacion_institucional}" />
					</div>

					<!-- Otro tipo de evaluaci�n -->
					<div class="form-group">
						<label for="inputOtroTipoEvaluacio">Otro tipo de
							evaluaci�n: </label>
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

					<!-- Estancias y pasant�as -->
					<div class="form-group">
						<label for="inputEstanciasPasantias">Estancias y
							pasant�as: </label>
						<c:out value="${estancias_pasantias}" />
					</div>

					<!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->
					<div class="form-group">
						<label for="inputOperacionyMantenimiento">Operaci�n y
							mantenimiento de sistemas de alta complejidad: </label>
						<c:out value="${operacion_mantenimiento}" />
					</div>

					<!-- Producci�n -->
					<div class="form-group">
						<label for="inputProduccion">Producci�n: </label>
						<c:out value="${produccion}" />
					</div>

					<!-- Normalizaci�n -->
					<div class="form-group">
						<label for="inputNormalizacion">Normalizaci�n: </label>
						<c:out value="${normalizacion}" />
					</div>

					<!-- Ejercicio de la profesi�n en el �mbito no acad�mico -->
					<div class="form-group">
						<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
							de la profesi�n en el �mbito no acad�mico: </label>
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