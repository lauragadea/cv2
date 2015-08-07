<%@include file="includes/header.jsp" %>

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
				<%@include file="includes/menu.jsp" %>

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificarantecedentes"
					modelAttribute="antedecentes">
	
						<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">
				
					
                   
                    <!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     			
		     					 <h3>Formaci�n de recursos humanos en CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3"></div>
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
                        <label for="inputTesistaMaestria">Tesista Maestr�a</label>
                        <input type="text" class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestr�a" value="${antecedentes.tesista_maestria}">
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
                    <!-- Pasantes de I+D y/o formaci�n acad�mica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formaci�n acad�mica</label>
                        <input type="text" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formaci�n acad�mica" value="${antecedentes.pasantes_id_y_facademica}">
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
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnol�gico</label>
                        <input type="text" class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico" value="${antecedentes.financiamiento_cientifico_tecnologico}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensi�n</h3>
                    </div>   
                    <!-- Actividades de divulgaci�n CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgaci�n CyT</label>
                        <input type="text" class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgaci�n CyT" value="${antecedentes.actividades_divulgacion}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div> 
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensi�n rural o industrial</label>
                        <input type="text" class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensi�n rural o industrial" value="${antecedentes.extension_rural_industrial}">
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Prestaci�n de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestaci�n de sericios sociales y/o comunitarios</label>
                        <input type="text" class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestaci�n de servicios sociales y/o comunitarios" value="${antecedentes.prestacion_servicios_sociales}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producci�n y/o divulgaci�n art�stica o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producci�n y/o divulgaci�n art�stica o cultural</label>
                        <input type="text" class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producci�n y/o divulgaci�n art�stica o cultural" value="${antecedentes.produccion_divulgacion_artistica}">
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de actividad de extensi�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensi�n</label>
                        <input type="text" class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensi�n" value="${antecedentes.otro_tipo_actividad}">
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluaci�n</h3>
                    </div>
                    <!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluaci�n de personal CyT Y jurado de tesis y/o premios</label>
                        <input type="text" class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluaci�n de personal CyT Y jurado de tesis y/o premios" value="${antecedentes.evaluacion_personal}">
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluaci�n de programas/proyectos de I+D y/o extensi�n</label>
                        <input type="text" class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluaci�n de programas/proyectos de I+D y/o extensi�n" value="${antecedentes.evaluacion_programas}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <input type="text" class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional" value="${antecedentes.evaluacion_institucional}">
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de evaluaci�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluaci�n</label>
                        <input type="text" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluaci�n" value="${antecedentes.otro_tipo_evaluacion}">
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
                    <!-- Estancias y pasant�as -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasant�as</label>
                        <input type="text" class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasant�as" value="${antecedentes.estancias_pasantias}">
	                	<form:errors cssClass="error" path="nombre"></form:errors>  
 					</div>                          
                    <!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operaci�n y mantenimiento de sistemas de alta complejidad</label>
                        <input type="text" class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operaci�n y mantenimiento de sistemas de alta complejidad" value="${antecedentes.operacion_mantenimiento}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producci�n --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producci�n</label>
                        <input type="text" class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producci�n" value="${antecedentes.produccion}">
						<form:errors cssClass="error" path="nombre"></form:errors>                   	
                    </div>
                    <!-- Normalizaci�n --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalizaci�n</label>
                        <input type="text" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalizaci�n" value="${antecedentes.normalizacion}">
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Ejercicio de la profesi�n en el �mbito no acad�mico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesi�n en el �mbito no acad�mico</label>
                        <input type="text" class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path=" ejercicio_profesion_ambito_no_academico" name=" ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesi�n en el �mbito no acad�mico" value="${antecedentes.ejercicio_profesion_ambito_no_academico}">
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
	
	<%@include file="includes/footer.jsp" %>

</body>
</html>