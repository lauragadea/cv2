<%@include file="includes/header.jsp" %>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
				
				<c:choose>
					<c:when test="${objeto == false}">
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/crearantecedentes"
					modelAttribute="antedecentes">
			
				<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">
					
                   
                                                  
                    <!-- Becarios -->
				    <div class="form-group">
				        <label for="inputBecarios">Becarios</label>
				        <input type="text" class="form-control" id="becario" path="becario" name="becario" placeholder="Becarios">
				    
				    </div>     
				    
				       
				           				
                    <!-- Tesistas doctorado-->                
                    <div class="form-group">
                        <label for="inputTesistaDoctorado">Tesista Doctoral</label>
                        <input type="text" class="form-control" id="tesista_doctoral" path="tesista_doctoral" name="tesista_doctoral" placeholder="Tesista Doctorado">
                    
                    </div>
                    <!-- Tesistas maestria -->                
                    <div class="form-group">
                        <label for="inputTesistaMaestria">Tesista Maestría</label>
                        <input type="text" class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestría">
                		
                    </div>
                    <!-- Tesistas grado -->                
                    <div class="form-group">
                        <label for="inputTesistaGrado">Tesista Grado</label>
                        <input type="text" class="form-control" id="tesista_grado" path="tesista_grado" name="tesista_grado" placeholder="Tesista Grado">
                   		
                    </div>
                    <!-- Investigadores --> 
                    <div class="form-group">
                        <label for="inputInvestigadores">Investigadores</label>
                        <input type="text" class="form-control" id="investigadores" path="investigadores" name="investigadores" placeholder="Investigadores">
                   	
                    </div>
                    <!-- Pasantes de I+D y/o formación académica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formación académica</label>
                        <input type="text" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formación académica">                	
                    </div>
                    <!-- Personal de apoyo a la I+D --> 
                    <div class="form-group">
                        <label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D</label>
                        <input type="text" class="form-control" id="personal_apoyo_id" path="personal_apoyo_id" name="personal_apoyo_id"  placeholder="Personal de apoyo a la I+D">
                    </div>

                    <!-- FINANCIAMIENTO -->

                    <div class="form-group">
                        <h3>Financiamiento CyT</h3>
                    </div>   
                    <!-- Financiamiento cientifico y tecnologico --> 
                    <div class="form-group">
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnológico</label>
                        <input type="text" class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico">
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensión</h3>
                    </div>   
                    <!-- Actividades de divulgación CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgación CyT</label>
                        <input type="text" class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgación CyT">
                    </div>
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensión rural o industrial</label>
                        <input type="text" class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensión rural o industrial">
                    </div>
                    <!-- Prestación de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestación de sericios sociales y/o comunitarios</label>
                        <input type="text" class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestación de servicios sociales y/o comunitarios">
                    </div>
                    <!-- Producción y/o divulgación artística o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producción y/o divulgación artística o cultural</label>
                        <input type="text" class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producción y/o divulgación artística o cultural">
                    </div>
                    <!-- Otro tipo de actividad de extensión --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensión</label>
                        <input type="text" class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensión">
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluación</h3>
                    </div>
                    <!-- Evaluación de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluación de personal CyT Y jurado de tesis y/o premios</label>
                        <input type="text" class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluación de personal CyT Y jurado de tesis y/o premios">
                    </div>
                    <!-- Evaluación de programas/proyectos de I+D y/o extensión --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluación de programas/proyectos de I+D y/o extensión</label>
                        <input type="text" class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluación de programas/proyectos de I+D y/o extensión">
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <input type="text" class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional">
                  
                    </div>
                    <!-- Otro tipo de evaluación --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluación</label>
                        <input type="text" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluación">
           
                    </div>

                    <!--  BECAS -->
                     
                    <div class="form-group">
                        <h3>Becas</h3>
                    </div>
                    <!-- Becas --> 
                    <div class="form-group">
                        <label for="inputBecas">Becas</label>
                        <input type="text" class="form-control" id="becas" path="becas" name="becas" placeholder="Becas">
                    
                    </div>        

                    <!-- OTRAS ACTIVIDADES -->

                    <div class="form-group">
                        <h3>Otras Actividades CyT</h3>
                    </div>                                
                    <!-- Estancias y pasantías -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasantías</label>
                        <input type="text" class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasantías"> 
 					</div>                          
                    <!-- Operación y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operación y mantenimiento de sistemas de alta complejidad</label>
                        <input type="text" class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operación y mantenimiento de sistemas de alta complejidad">
                   		
                    </div>
                    <!-- Producción --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producción</label>
                        <input type="text" class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producción">
               	
                    </div>
                    <!-- Normalización --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalización</label>
                        <input type="text" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalización">
                   	
                    </div>
                    <!-- Ejercicio de la profesión en el ámbito no académico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesión en el ámbito no académico</label>
                        <input type="text" class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path=" ejercicio_profesion_ambito_no_academico" name=" ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesión en el ámbito no académico">

                    </div>
                    <!-- Otra actividad CyT --> 
                    <div class="form-group">
                        <label for="inputOtraActividad">Otra actividad CyT</label>
                        <input type="text" class="form-control" id="otra_actividad_cyt" path="otra_actividad_cyt" name="otra_actividad_cyt" placeholder="Otra actividad CyT">
  
                    </div>

                 <button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>


				</form:form>
				
				</c:when>
				
				<c:otherwise>
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/antecedentesEditar"
					modelAttribute="antedecentes">

				<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">
				
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
					
								<h3>Formación de recursos humanos en CyT</h3>								
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>	
		                   	</div>
		                </div>
					</div>



					<!-- Becarios -->
					<div class="form-group">
						<label for="inputBecarios">Becarios: </label>
						<c:out value="${antecedentes.becario}" />
					</div>

					<!-- Tesistas doctorado-->
					<div class="form-group">
						<label for="inputTesistaDoctorado">Tesista Doctoral:</label>
						<c:out value="${antecedentes.tesista_doctoral}" />
					</div>


					<!-- Tesistas maestria -->
					<div class="form-group">
						<label for="inputTesistaMaestria">Tesista Maestría:</label>
						<c:out value="${antecedentes.tesista_maestria}" />
					</div>

					<!-- Tesistas grado -->
					<div class="form-group">
						<label for="inputTesistaMaestria">Tesista Grado:</label>
						<c:out value="${antecedentes.tesista_grado}" />
					</div>

					<!-- Investigadores -->
					<div class="form-group">
						<label for="inputInvestigadores">Investigadores:</label>
						<c:out value="${antecedentes.investigadores}" />
					</div>

					<!-- Pasantes de I+D y/o formación académica -->
					<div class="form-group">
						<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
							de I+D y/o formación académica:</label>
						<c:out value="${antecedentes.pasantes_id_y_facademica}" />
					</div>

					<!-- Personal de apoyo a la I+D -->
					<div class="form-group">
						<label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D :</label>
						<c:out value="${antecedentes.personal_apoyo_id}" />
					</div>


					<!-- FINANCIAMIENTO -->

					<div class="form-group">
						<h3>Financiamiento CyT</h3>
					</div>

					<!-- Financiamiento cientifico y tecnologico -->
					<div class="form-group">
						<label for="inputFinanciamientoCientificoTecnologico">inanciamiento
							cientifico y tecnológico: </label>
						<c:out value="${antecedentes.financiamiento_cientifico_tecnologico}" />
					</div>


					<!--EXTENSION -->

					<div class="form-group">
						<h3>Extensión</h3>
					</div>

					<!-- Actividades de divulgación CyT -->
					<div class="form-group">
						<label for="inputActividadesDeDivulgacion">Actividades
							de divulgación CyT: </label>
						<c:out value="${antecedentes.actividades_divulgacion}" />
					</div>


					<!-- Extension rural o industrial -->
					<div class="form-group">
						<label for="inputExtensionRuralIndustrial">Extensión
							rural o industrial: </label>
						<c:out value="${antecedentes.extension_rural_industrial}" />
					</div>


					<!-- Prestación de servicios sociales y/o comunitarios -->
					<div class="form-group">
						<label for="inputPrestacionServiciosSocialesComunitarios">EPrestación
							de sericios sociales y/o comunitarios: </label>
						<c:out value="${antecedentes.prestacion_servicios_sociales}" />
					</div>


					<!-- Producción y/o divulgación artística o cultural -->
					<div class="form-group">
						<label for="inputProduccionDivulgacionArtisticaCultural">Producción
							y/o divulgación artística o cultural: </label>
						<c:out value="${antecedentes.produccion_divulgacion_artistica}" />
					</div>


					<!-- Otro tipo de actividad de extensión -->
					<div class="form-group">
						<label for="inputOtroTipoActividadExtension">Otro tipo
							de actividad de extensión: </label>
						<c:out value="${antecedentes.otro_tipo_actividad}" />
					</div>


					<!--EVALUACION -->
					<div class="form-group">
						<h3>Evaluación</h3>
					</div>

					<!-- Evaluación de personal CyT Y jurado de tesis y/o premios -->
					<div class="form-group">
						<label for="inputEvaluacionDePersonal">Evaluación de
							personal CyT Y jurado de tesis y/o premios: </label>
						<c:out value="${antecedentes.evaluacion_personal}" />
					</div>


					<!-- Evaluación de programas/proyectos de I+D y/o extensión -->
					<div class="form-group">
						<label for="inputEvaluacionProgramas">Evaluación de
							programas/proyectos de I+D y/o extensión: </label>
						<c:out value="${antecedentes.evaluacion_programas}" />
					</div>


					<!-- Evaluacion institucional -->
					<div class="form-group">
						<label for="inputEvaluacionInstitucional">Evaluacion
							institucional: </label>
						<c:out value="${antecedentes.evaluacion_institucional}" />
					</div>

					<!-- Otro tipo de evaluación -->
					<div class="form-group">
						<label for="inputOtroTipoEvaluacio">Otro tipo de
							evaluación: </label>
						<c:out value="${antecedentes.otro_tipo_evaluacion}" />
					</div>

					<!--  BECAS -->

					<div class="form-group">
						<h3>Becas</h3>
					</div>

					<!-- Becas -->
					<div class="form-group">
						<label for="inputBecas">Becas: </label>
						<c:out value="${antecedentes.becas}" />
					</div>

					<!-- OTRAS ACTIVIDADES -->

					<div class="form-group">
						<h3>Otras Actividades CyT</h3>
					</div>

					<!-- Estancias y pasantías -->
					<div class="form-group">
						<label for="inputEstanciasPasantias">Estancias y
							pasantías: </label>
						<c:out value="${antecedentes.estancias_pasantias}" />
					</div>

					<!-- Operación y mantenimiento de sistemas de alta complejidad -->
					<div class="form-group">
						<label for="inputOperacionyMantenimiento">Operación y
							mantenimiento de sistemas de alta complejidad: </label>
						<c:out value="${antecedentes.operacion_mantenimiento}" />
					</div>

					<!-- Producción -->
					<div class="form-group">
						<label for="inputProduccion">Producción: </label>
						<c:out value="${antecedentes.produccion}" />
					</div>

					<!-- Normalización -->
					<div class="form-group">
						<label for="inputNormalizacion">Normalización: </label>
						<c:out value="${antecedentes.normalizacion}" />
					</div>

					<!-- Ejercicio de la profesión en el ámbito no académico -->
					<div class="form-group">
						<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
							de la profesión en el ámbito no académico: </label>
						<c:out value="${antecedentes.ejercicio_profesion_ambito_no_academico}" />
					</div>

					<!-- Otra actividad CyT -->
					<div class="form-group">
						<label for="inputOtraActividad">Otra actividad CyT: </label>
						<c:out value="${antecedentes.otra_actividad_cyt}" />
					</div>
				</form:form>
				</c:otherwise>
			
				</c:choose>
				
				
			</div>	<!--container-->
		</div>
	</div>
	<%@include file="includes/footer.jsp" %>

</body>

</html>