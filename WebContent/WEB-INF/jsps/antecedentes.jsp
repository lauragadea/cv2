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
					
                   <div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${dni}" readonly></label></div>
					
                   
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					 <h2>FORMACION</h2>
		     					 <h3>Formaci�n de recursos humanos en CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   
		                   	</div>
		                </div>
					</div>
                    
                                                  
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
                        <label for="inputTesistaMaestria">Tesista Maestr�a</label>
                        <input type="text" class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestr�a">
                		
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
                    <!-- Pasantes de I+D y/o formaci�n acad�mica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formaci�n acad�mica</label>
                        <input type="text" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formaci�n acad�mica">                	
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
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnol�gico</label>
                        <input type="text" class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico">
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensi�n</h3>
                    </div>   
                    <!-- Actividades de divulgaci�n CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgaci�n CyT</label>
                        <input type="text" class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgaci�n CyT">
                    </div>
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensi�n rural o industrial</label>
                        <input type="text" class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensi�n rural o industrial">
                    </div>
                    <!-- Prestaci�n de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestaci�n de sericios sociales y/o comunitarios</label>
                        <input type="text" class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestaci�n de servicios sociales y/o comunitarios">
                    </div>
                    <!-- Producci�n y/o divulgaci�n art�stica o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producci�n y/o divulgaci�n art�stica o cultural</label>
                        <input type="text" class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producci�n y/o divulgaci�n art�stica o cultural">
                    </div>
                    <!-- Otro tipo de actividad de extensi�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensi�n</label>
                        <input type="text" class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensi�n">
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluaci�n</h3>
                    </div>
                    <!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluaci�n de personal CyT Y jurado de tesis y/o premios</label>
                        <input type="text" class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluaci�n de personal CyT Y jurado de tesis y/o premios">
                    </div>
                    <!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluaci�n de programas/proyectos de I+D y/o extensi�n</label>
                        <input type="text" class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluaci�n de programas/proyectos de I+D y/o extensi�n">
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <input type="text" class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional">
                  
                    </div>
                    <!-- Otro tipo de evaluaci�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluaci�n</label>
                        <input type="text" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluaci�n">
           
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
                    <!-- Estancias y pasant�as -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasant�as</label>
                        <input type="text" class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasant�as"> 
 					</div>                          
                    <!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operaci�n y mantenimiento de sistemas de alta complejidad</label>
                        <input type="text" class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operaci�n y mantenimiento de sistemas de alta complejidad">
                   		
                    </div>
                    <!-- Producci�n --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producci�n</label>
                        <input type="text" class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producci�n">
               	
                    </div>
                    <!-- Normalizaci�n --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalizaci�n</label>
                        <input type="text" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalizaci�n">
                   	
                    </div>
                    <!-- Ejercicio de la profesi�n en el �mbito no acad�mico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesi�n en el �mbito no acad�mico</label>
                        <input type="text" class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path=" ejercicio_profesion_ambito_no_academico" name=" ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesi�n en el �mbito no acad�mico">

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
						<c:out value="${antecedentes.becario}" />
					</div>

					<!-- Tesistas doctorado-->
					<div class="form-group">
						<label for="inputTesistaDoctorado">Tesista Doctoral:</label>
						<c:out value="${antecedentes.tesista_doctoral}" />
					</div>


					<!-- Tesistas maestria -->
					<div class="form-group">
						<label for="inputTesistaMaestria">Tesista Maestr�a:</label>
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

					<!-- Pasantes de I+D y/o formaci�n acad�mica -->
					<div class="form-group">
						<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
							de I+D y/o formaci�n acad�mica:</label>
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
							cientifico y tecnol�gico: </label>
						<c:out value="${antecedentes.financiamiento_cientifico_tecnologico}" />
					</div>


					<!--EXTENSION -->

					<div class="form-group">
						<h3>Extensi�n</h3>
					</div>

					<!-- Actividades de divulgaci�n CyT -->
					<div class="form-group">
						<label for="inputActividadesDeDivulgacion">Actividades
							de divulgaci�n CyT: </label>
						<c:out value="${antecedentes.actividades_divulgacion}" />
					</div>


					<!-- Extension rural o industrial -->
					<div class="form-group">
						<label for="inputExtensionRuralIndustrial">Extensi�n
							rural o industrial: </label>
						<c:out value="${antecedentes.extension_rural_industrial}" />
					</div>


					<!-- Prestaci�n de servicios sociales y/o comunitarios -->
					<div class="form-group">
						<label for="inputPrestacionServiciosSocialesComunitarios">EPrestaci�n
							de sericios sociales y/o comunitarios: </label>
						<c:out value="${antecedentes.prestacion_servicios_sociales}" />
					</div>


					<!-- Producci�n y/o divulgaci�n art�stica o cultural -->
					<div class="form-group">
						<label for="inputProduccionDivulgacionArtisticaCultural">Producci�n
							y/o divulgaci�n art�stica o cultural: </label>
						<c:out value="${antecedentes.produccion_divulgacion_artistica}" />
					</div>


					<!-- Otro tipo de actividad de extensi�n -->
					<div class="form-group">
						<label for="inputOtroTipoActividadExtension">Otro tipo
							de actividad de extensi�n: </label>
						<c:out value="${antecedentes.otro_tipo_actividad}" />
					</div>


					<!--EVALUACION -->
					<div class="form-group">
						<h3>Evaluaci�n</h3>
					</div>

					<!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios -->
					<div class="form-group">
						<label for="inputEvaluacionDePersonal">Evaluaci�n de
							personal CyT Y jurado de tesis y/o premios: </label>
						<c:out value="${antecedentes.evaluacion_personal}" />
					</div>


					<!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n -->
					<div class="form-group">
						<label for="inputEvaluacionProgramas">Evaluaci�n de
							programas/proyectos de I+D y/o extensi�n: </label>
						<c:out value="${antecedentes.evaluacion_programas}" />
					</div>


					<!-- Evaluacion institucional -->
					<div class="form-group">
						<label for="inputEvaluacionInstitucional">Evaluacion
							institucional: </label>
						<c:out value="${antecedentes.evaluacion_institucional}" />
					</div>

					<!-- Otro tipo de evaluaci�n -->
					<div class="form-group">
						<label for="inputOtroTipoEvaluacio">Otro tipo de
							evaluaci�n: </label>
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

					<!-- Estancias y pasant�as -->
					<div class="form-group">
						<label for="inputEstanciasPasantias">Estancias y
							pasant�as: </label>
						<c:out value="${antecedentes.estancias_pasantias}" />
					</div>

					<!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->
					<div class="form-group">
						<label for="inputOperacionyMantenimiento">Operaci�n y
							mantenimiento de sistemas de alta complejidad: </label>
						<c:out value="${antecedentes.operacion_mantenimiento}" />
					</div>

					<!-- Producci�n -->
					<div class="form-group">
						<label for="inputProduccion">Producci�n: </label>
						<c:out value="${antecedentes.produccion}" />
					</div>

					<!-- Normalizaci�n -->
					<div class="form-group">
						<label for="inputNormalizacion">Normalizaci�n: </label>
						<c:out value="${antecedentes.normalizacion}" />
					</div>

					<!-- Ejercicio de la profesi�n en el �mbito no acad�mico -->
					<div class="form-group">
						<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
							de la profesi�n en el �mbito no acad�mico: </label>
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