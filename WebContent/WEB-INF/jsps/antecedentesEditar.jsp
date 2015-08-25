<%@include file="includes/header.jsp" %>

<body>

	<header>
	<title>Currículum Vitae</title>
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
                    
                    <!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					 <h3>Antecedentes</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                  	
		                   	</div>
		                </div>
					</div>
					
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     			
		     					 <h3>Formación de recursos humanos en CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3"></div>
		                </div>
					</div>
                    
                                                  
                    <!-- Becarios -->
				    <div class="form-group">
				        <label for="inputBecarios">Becarios</label>
				        <textarea wrap="hard" class="form-control" id="becario" path="becario" name="becario" placeholder="Becarios" >${antecedentes.becario}</textarea>
				    	<form:errors cssClass="error" path="nombre"></form:errors>
				    </div>     
				    
				       
				           				
                    <!-- Tesistas doctorado-->                
                    <div class="form-group">
                        <label for="inputTesistaDoctorado">Tesista Doctoral</label>
                        <textarea wrap="hard" class="form-control" id="tesista_doctoral" path="tesista_doctoral" name="tesista_doctoral" placeholder="Tesista Doctorado" >${antecedentes.tesista_doctoral}</textarea>
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Tesistas maestria -->                
                    <div class="form-group">
                        <label for="inputTesistaMaestria">Tesista Maestría</label>
                        <textarea wrap="hard" class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestría" >${antecedentes.tesista_maestria}</textarea>
                		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Tesistas grado -->                
                    <div class="form-group">
                        <label for="inputTesistaGrado">Tesista Grado</label>
                        <textarea wrap="hard" class="form-control" id="tesista_grado" path="tesista_grado" name="tesista_grado" placeholder="Tesista Grado">${antecedentes.tesista_grado}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Investigadores --> 
                    <div class="form-group">
                        <label for="inputInvestigadores">Investigadores</label>
                        <textarea wrap="hard" class="form-control" id="investigadores" path="investigadores" name="investigadores" placeholder="Investigadores" >${antecedentes.investigadores}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Pasantes de I+D y/o formación académica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formación académica</label>
                        <textarea wrap="hard" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formación académica" >${antecedentes.pasantes_id_y_facademica}</textarea>
						<form:errors cssClass="error" path="nombre"></form:errors>                   	
                    </div>
                    <!-- Personal de apoyo a la I+D --> 
                    <div class="form-group">
                        <label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D</label>
                        <textarea wrap="hard" class="form-control" id="personal_apoyo_id" path="personal_apoyo_id" name="personal_apoyo_id"  placeholder="Personal de apoyo a la I+D" >${antecedentes.personal_apoyo_id}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!-- FINANCIAMIENTO -->

                    <div class="form-group">
                        <h3>Financiamiento CyT</h3>
                    </div>   
                    <!-- Financiamiento cientifico y tecnologico --> 
                    <div class="form-group">
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnológico</label>
                        <textarea wrap="hard" class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico" >${antecedentes.financiamiento_cientifico_tecnologico}</textarea>
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensión</h3>
                    </div>   
                    <!-- Actividades de divulgación CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgación CyT</label>
                        <textarea wrap="hard" class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgación CyT" >${antecedentes.actividades_divulgacion}</textarea>
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div> 
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensión rural o industrial</label>
                        <textarea wrap="hard" class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensión rural o industrial" >${antecedentes.extension_rural_industrial}</textarea>
                         <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Prestación de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestación de sericios sociales y/o comunitarios</label>
                        <textarea wrap="hard" class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestación de servicios sociales y/o comunitarios">${antecedentes.prestacion_servicios_sociales}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producción y/o divulgación artística o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producción y/o divulgación artística o cultural</label>
                        <textarea wrap="hard" class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producción y/o divulgación artística o cultural">${antecedentes.produccion_divulgacion_artistica}</textarea>
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de actividad de extensión --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensión</label>
                        <textarea wrap="hard" class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensión" >${antecedentes.otro_tipo_actividad}</textarea>
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluación</h3>
                    </div>
                    <!-- Evaluación de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluación de personal CyT Y jurado de tesis y/o premios</label>
                        <textarea wrap="hard" class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluación de personal CyT Y jurado de tesis y/o premios" >${antecedentes.evaluacion_personal}</textarea>
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluación de programas/proyectos de I+D y/o extensión --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluación de programas/proyectos de I+D y/o extensión</label>
                        <textarea wrap="hard" class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluación de programas/proyectos de I+D y/o extensión" >${antecedentes.evaluacion_programas}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <textarea wrap="hard" class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional" >${antecedentes.evaluacion_institucional}</textarea>
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otro tipo de evaluación --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluación</label>
                        <textarea wrap="hard" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluación" >${antecedentes.otro_tipo_evaluacion}</textarea>
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                    <!--  BECAS -->
                     
                    <div class="form-group">
                        <h3>Becas</h3>
                    </div>
                    <!-- Becas --> 
                    <div class="form-group">
                        <label for="inputBecas">Becas</label>
                        <textarea wrap="hard" class="form-control" id="becas" path="becas" name="becas" placeholder="Becas" >${antecedentes.becas}</textarea>
                    	<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>        

                    <!-- OTRAS ACTIVIDADES -->

                    <div class="form-group">
                        <h3>Otras Actividades CyT</h3>
                    </div>                                
                    <!-- Estancias y pasantías -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasantías</label>
                        <textarea wrap="hard" class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasantías" >${antecedentes.estancias_pasantias}</textarea>
	                	<form:errors cssClass="error" path="nombre"></form:errors>  
 					</div>                          
                    <!-- Operación y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operación y mantenimiento de sistemas de alta complejidad</label>
                        <textarea wrap="hard" class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operación y mantenimiento de sistemas de alta complejidad" >${antecedentes.operacion_mantenimiento}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Producción --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producción</label>
                        <textarea wrap="hard" class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producción" >${antecedentes.produccion}</textarea>
						<form:errors cssClass="error" path="nombre"></form:errors>                   	
                    </div>
                    <!-- Normalización --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalización</label>
                        <textarea wrap="hard" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalización" >${antecedentes.normalizacion}</textarea>
                   		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Ejercicio de la profesión en el ámbito no académico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesión en el ámbito no académico</label>
                        <textarea wrap="hard" class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path="ejercicio_profesion_ambito_no_academico" name="ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesión en el ámbito no académico" >${antecedentes.ejercicio_profesion_ambito_no_academico}</textarea>
                  		<form:errors cssClass="error" path="nombre"></form:errors>
                    </div>
                    <!-- Otra actividad CyT --> 
                    <div class="form-group">
                        <label for="inputOtraActividad">Otra actividad CyT</label>
                        <textarea wrap="hard" class="form-control" id="otra_actividad_cyt" path="otra_actividad_cyt" name="otra_actividad_cyt" placeholder="Otra actividad CyT" >${antecedentes.otra_actividad_cyt}</textarea>
                        <form:errors cssClass="error" path="nombre"></form:errors>
                    </div>

                  <button type="submit" class="btn btn-primary" name="action" value="Enviar">Guardar</button>


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