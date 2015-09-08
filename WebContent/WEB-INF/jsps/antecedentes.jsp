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
					
                                                  
                    <!-- Becarios -->
				    <div class="form-group">
				        <label for="inputBecarios">Becarios</label>
				       <textarea  class="form-control" id="becario" path="becario" name="becario" placeholder="Becarios"></textarea>
				    
				    </div>     
				    
				       
				           				
                    <!-- Tesistas doctorado-->                
                    <div class="form-group">
                        <label for="inputTesistaDoctorado">Tesista Doctoral</label>
                       <textarea wrap="hard"  class="form-control" id="tesista_doctoral" path="tesista_doctoral" name="tesista_doctoral" placeholder="Tesista Doctorado"></textarea>
                    
                    </div>
                    <!-- Tesistas maestria -->                
                    <div class="form-group">
                        <label for="inputTesistaMaestria">Tesista Maestr�a</label>
                       <textarea wrap="hard"  class="form-control" id="tesista_maestria" path="tesista_maestria" name="tesista_maestria" placeholder="Tesista Maestr�a"></textarea>               		
                    </div>
                    <!-- Tesistas grado -->                
                    <div class="form-group">
                        <label for="inputTesistaGrado">Tesista Grado</label>
                        <textarea wrap="hard" class="form-control" id="tesista_grado" path="tesista_grado" name="tesista_grado" placeholder="Tesista Grado"></textarea>                  		
                    </div>
                    <!-- Investigadores --> 
                    <div class="form-group">
                        <label for="inputInvestigadores">Investigadores</label>
						<textarea wrap="hard"  class="form-control" id="investigadores" path="investigadores" name="investigadores" placeholder="Investigadores"></textarea>
                    </div>
                    <!-- Pasantes de I+D y/o formaci�n acad�mica --> 
                    <div class="form-group">
                        <label for="inputPasantesDeIDFormacionAcademcia">Pasantes de I+D y/o formaci�n acad�mica</label>
                        <textarea wrap="hard" class="form-control" id="pasantes_id_y_facademica" path="pasantes_id_y_facademica" name="pasantes_id_y_facademica" placeholder="Pasantes de I+D y/o formaci�n acad�mica"></textarea>                	
                    </div>
                    <!-- Personal de apoyo a la I+D --> 
                    <div class="form-group">
                        <label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D</label>
                        <textarea wrap="hard" class="form-control" id="personal_apoyo_id" path="personal_apoyo_id" name="personal_apoyo_id"  placeholder="Personal de apoyo a la I+D"></textarea>
                    </div>

                    <!-- FINANCIAMIENTO -->

                    <div class="form-group">
                        <h3>Financiamiento CyT</h3>
                    </div>   
                    <!-- Financiamiento cientifico y tecnologico --> 
                    <div class="form-group">
                        <label for="inputFinanciamientoCientificoTecnologico">Financiamiento cientifico y tecnol�gico</label>
                        <textarea wrap="hard"  class="form-control" id="financiamiento_cientifico_tecnologico" path="financiamiento_cientifico_tecnologico" name="financiamiento_cientifico_tecnologico"
                         placeholder="Financiamiento cientifico y tecnologico"></textarea>
                    </div>

                     <!--EXTENSION -->

                     <div class="form-group">
                        <h3>Extensi�n</h3>
                    </div>   
                    <!-- Actividades de divulgaci�n CyT --> 
                    <div class="form-group">
                        <label for="inputActividadesDeDivulgacion">Actividades de divulgaci�n CyT</label>
                        <textarea wrap="hard"  class="form-control" id="actividades_divulgacion" path="actividades_divulgacion" name="actividades_divulgacion"
                         placeholder="Actividades de divulgaci�n CyT"></textarea>
                    </div>
                    <!-- Extension rural o industrial --> 
                    <div class="form-group">
                        <label for="inputExtensionRuralIndustrial">Extensi�n rural o industrial</label>
                        <textarea wrap="hard"  class="form-control" id="extension_rural_industrial" path="extension_rural_industrial" name="extension_rural_industrial"
                         placeholder="Extensi�n rural o industrial"></textarea>
                    </div>
                    <!-- Prestaci�n de servicios sociales y/o comunitarios --> 
                    <div class="form-group">
                        <label for="inputPrestacionServiciosSocialesComunitarios">Prestaci�n de sericios sociales y/o comunitarios</label>
                        <textarea wrap="hard"  class="form-control" id="prestacion_servicios_sociales" path="prestacion_servicios_sociales" name="prestacion_servicios_sociales" placeholder="Prestaci�n de servicios sociales y/o comunitarios"></textarea>
                    </div>
                    <!-- Producci�n y/o divulgaci�n art�stica o cultural --> 
                    <div class="form-group">
                        <label for="inputProduccionDivulgacionArtisticaCultural">Producci�n y/o divulgaci�n art�stica o cultural</label>
                        <textarea wrap="hard"  class="form-control" id="produccion_divulgacion_artistica" path="produccion_divulgacion_artistica" name="produccion_divulgacion_artistica" 
                        placeholder="Producci�n y/o divulgaci�n art�stica o cultural"></textarea>
                    </div>
                    <!-- Otro tipo de actividad de extensi�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoActividadExtension">Otro tipo de actividad de extensi�n</label>
                        <textarea wrap="hard"  class="form-control" id="otro_tipo_actividad" path="otro_tipo_actividad" name="otro_tipo_actividad" placeholder="Otro tipo de actividad de extensi�n"></textarea>
                    </div>

                    <!--EVALUACION -->
                     
                    <div class="form-group">
                        <h3>Evaluaci�n</h3>
                    </div>
                    <!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios --> 
                    <div class="form-group">
                        <label for="inputEvaluacionDePersonal">Evaluaci�n de personal CyT Y jurado de tesis y/o premios</label>
                        <textarea wrap="hard"  class="form-control" id="evaluacion_personal" path="evaluacion_personal" name="evaluacion_personal" placeholder="Evaluaci�n de personal CyT Y jurado de tesis y/o premios"></textarea>
                    </div>
                    <!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n --> 
                    <div class="form-group">
                        <label for="inputEvaluacionProgramas">Evaluaci�n de programas/proyectos de I+D y/o extensi�n</label>
                        <textarea wrap="hard"  class="form-control" id="evaluacion_programas" path="evaluacion_programas" name="evaluacion_programas" placeholder="Evaluaci�n de programas/proyectos de I+D y/o extensi�n"></textarea>
                    </div>
                    <!-- Evaluacion institucional --> 
                    <div class="form-group">
                        <label for="inputEvaluacionInstitucional">Evaluacion institucional</label>
                        <textarea wrap="hard"  class="form-control" id="evaluacion_institucional" path="evaluacion_institucional" name="evaluacion_institucional" placeholder="Evaluacion institucional"></textarea>
                    </div>
                    <!-- Otro tipo de evaluaci�n --> 
                    <div class="form-group">
                        <label for="inputOtroTipoEvaluacion">Otro tipo de evaluaci�n</label>
                        <textarea wrap="hard" class="form-control" id="otro_tipo_evaluacion" path="otro_tipo_evaluacion" name="otro_tipo_evaluacion" placeholder="Otro tipo de evaluaci�n"></textarea>
           			</div>

                    <!--  BECAS -->
                     
                    <div class="form-group">
                        <h3>Becas</h3>
                    </div>
                    <!-- Becas --> 
                    <div class="form-group">
                        <label for="inputBecas">Becas</label>
                        <textarea wrap="hard"  class="form-control" id="becas" path="becas" name="becas" placeholder="Becas"></textarea>
                    </div>        

                    <!-- OTRAS ACTIVIDADES -->

                    <div class="form-group">
                        <h3>Otras Actividades CyT</h3>
                    </div>                                
                    <!-- Estancias y pasant�as -->
                    <div class="form-group">
                        <label for="inputEstanciasPasantias">Estancias y pasant�as</label>
                        <textarea wrap="hard"  class="form-control" id="estancias_pasantias" path="estancias_pasantias" name="estancias_pasantias" placeholder="Estancias y pasant�as"></textarea> 
 					</div>                          
                    <!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->                
                    <div class="form-group">
                        <label for="inputOperacionyMantenimiento">Operaci�n y mantenimiento de sistemas de alta complejidad</label>
                        <textarea wrap="hard"  class="form-control" id="operacion_mantenimiento" path="operacion_mantenimiento" name="operacion_mantenimiento" placeholder="Operaci�n y mantenimiento de sistemas de alta complejidad"></textarea>
                    </div>
                    <!-- Producci�n --> 
                    <div class="form-group">
                        <label for="inputProduccion">Producci�n</label>
                        <textarea wrap="hard"  class="form-control" id="produccion" path="produccion" name="produccion" placeholder="Producci�n"></textarea>
                    </div>
                    <!-- Normalizaci�n --> 
                    <div class="form-group">
                        <label for="inputNormalizacion">Normalizaci�n</label>
                        <textarea wrap="hard" class="form-control" id="normalizacion" path="normalizacion" name="normalizacion" placeholder="Normalizaci�n"></textarea>
                    </div>
                    <!-- Ejercicio de la profesi�n en el �mbito no acad�mico --> 
                    <div class="form-group">
                        <label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio de la profesi�n en el �mbito no acad�mico</label>
                        <textarea wrap="hard"  class="form-control" id="ejercicio_profesion_ambito_no_academico" 
                        path=" ejercicio_profesion_ambito_no_academico" name=" ejercicio_profesion_ambito_no_academico" placeholder="Ejercicio de la profesi�n en el �mbito no acad�mico"></textarea>
                    </div>
                    <!-- Otra actividad CyT --> 
                    <div class="form-group">
                        <label for="inputOtraActividad">Otra actividad CyT</label>
                        <textarea wrap="hard"  class="form-control" id="otra_actividad_cyt" path="otra_actividad_cyt" name="otra_actividad_cyt" placeholder="Otra actividad CyT"></textarea>
                    </div>

                 <button type="submit" class="btn btn-primary" name="action" value="enviar">Guardar</button>


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
					<h3>Formaci�n Acad�mica</h3>
								<h3>Formaci�n de recursos humanos en CyT</h3>								
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
						<span class="texto"><c:out value="${antecedentes.becario}" /></span>
					</div>

					<!-- Tesistas doctorado-->
					<div class="form-group">
						<label for="inputTesistaDoctorado">Tesista Doctoral:</label>
						<span class="texto"><c:out value="${antecedentes.tesista_doctoral}" /></span>
					</div>


					<!-- Tesistas maestria -->
					<div class="form-group">
						<label for="inputTesistaMaestria">Tesista Maestr�a:</label>
						<span class="texto"><c:out value="${antecedentes.tesista_maestria}" /></span>
					</div>

					<!-- Tesistas grado -->
					<div class="form-group">
						<label for="inputTesistaMaestria">Tesista Grado:</label>
						<span class="texto"><c:out value="${antecedentes.tesista_grado}" /></span>
					</div>

					<!-- Investigadores -->
					<div class="form-group">
						<label for="inputInvestigadores">Investigadores:</label>
						<span class="texto"><c:out value="${antecedentes.investigadores}" /></span>
					</div>

					<!-- Pasantes de I+D y/o formaci�n acad�mica -->
					<div class="form-group">
						<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
							de I+D y/o formaci�n acad�mica:</label>
						<span class="texto"><c:out value="${antecedentes.pasantes_id_y_facademica}" /></span>
					</div>

					<!-- Personal de apoyo a la I+D -->
					<div class="form-group">
						<label for="inputPersonalDeApoyoID">Personal de apoyo a la I+D :</label>
						<span class="texto"><c:out value="${antecedentes.personal_apoyo_id}" /></span>
					</div>


					<!-- FINANCIAMIENTO -->

					<div class="form-group">
						<h3>Financiamiento CyT</h3>
					</div>

					<!-- Financiamiento cientifico y tecnologico -->
					<div class="form-group">
						<label for="inputFinanciamientoCientificoTecnologico">inanciamiento
							cientifico y tecnol�gico: </label>
						<span class="texto"><c:out value="${antecedentes.financiamiento_cientifico_tecnologico}" /></span>
					</div>


					<!--EXTENSION -->

					<div class="form-group">
						<h3>Extensi�n</h3>
					</div>

					<!-- Actividades de divulgaci�n CyT -->
					<div class="form-group">
						<label for="inputActividadesDeDivulgacion">Actividades
							de divulgaci�n CyT: </label>
						<span class="texto"><c:out value="${antecedentes.actividades_divulgacion}" /></span>
					</div>


					<!-- Extension rural o industrial -->
					<div class="form-group">
						<label for="inputExtensionRuralIndustrial">Extensi�n
							rural o industrial: </label>
						<span class="texto"><c:out value="${antecedentes.extension_rural_industrial}" /></span>
					</div>


					<!-- Prestaci�n de servicios sociales y/o comunitarios -->
					<div class="form-group">
						<label for="inputPrestacionServiciosSocialesComunitarios">EPrestaci�n
							de sericios sociales y/o comunitarios: </label>
						<span class="texto"><c:out value="${antecedentes.prestacion_servicios_sociales}" /></span>
					</div>


					<!-- Producci�n y/o divulgaci�n art�stica o cultural -->
					<div class="form-group">
						<label for="inputProduccionDivulgacionArtisticaCultural">Producci�n
							y/o divulgaci�n art�stica o cultural: </label>
						<span class="texto"><c:out value="${antecedentes.produccion_divulgacion_artistica}" /></span>
					</div>


					<!-- Otro tipo de actividad de extensi�n -->
					<div class="form-group">
						<label for="inputOtroTipoActividadExtension">Otro tipo
							de actividad de extensi�n: </label>
						<span class="texto"><c:out value="${antecedentes.otro_tipo_actividad}" /></span>
					</div>


					<!--EVALUACION -->
					<div class="form-group">
						<h3>Evaluaci�n</h3>
					</div>

					<!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios -->
					<div class="form-group">
						<label for="inputEvaluacionDePersonal">Evaluaci�n de
							personal CyT Y jurado de tesis y/o premios: </label>
						<span class="texto"><c:out value="${antecedentes.evaluacion_personal}" /></span>
					</div>


					<!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n -->
					<div class="form-group">
						<label for="inputEvaluacionProgramas">Evaluaci�n de
							programas/proyectos de I+D y/o extensi�n: </label>
						<span class="texto"><c:out value="${antecedentes.evaluacion_programas}" /></span>
					</div>


					<!-- Evaluacion institucional -->
					<div class="form-group">
						<label for="inputEvaluacionInstitucional">Evaluacion
							institucional: </label>
						<span class="texto"><c:out value="${antecedentes.evaluacion_institucional}" /></span>
					</div>

					<!-- Otro tipo de evaluaci�n -->
					<div class="form-group">
						<label for="inputOtroTipoEvaluacio">Otro tipo de
							evaluaci�n: </label>
						<span class="texto"><c:out value="${antecedentes.otro_tipo_evaluacion}" /></span>
					</div>

					<!--  BECAS -->

					<div class="form-group">
						<h3>Becas</h3>
					</div>

					<!-- Becas -->
					<div class="form-group">
						<label for="inputBecas">Becas: </label>
						<span class="texto"><c:out value="${antecedentes.becas}" /></span>
					</div>

					<!-- OTRAS ACTIVIDADES -->

					<div class="form-group">
						<h3>Otras Actividades CyT</h3>
					</div>

					<!-- Estancias y pasant�as -->
					<div class="form-group">
						<label for="inputEstanciasPasantias">Estancias y
							pasant�as: </label>
						<span class="texto"><c:out value="${antecedentes.estancias_pasantias}" /></span>
					</div>

					<!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->
					<div class="form-group">
						<label for="inputOperacionyMantenimiento">Operaci�n y
							mantenimiento de sistemas de alta complejidad: </label>
						<span class="texto"><c:out value="${antecedentes.operacion_mantenimiento}" /></span>
					</div>

					<!-- Producci�n -->
					<div class="form-group">
						<label for="inputProduccion">Producci�n: </label>
						<span class="texto"><c:out value="${antecedentes.produccion}" /></span>
					</div>

					<!-- Normalizaci�n -->
					<div class="form-group">
						<label for="inputNormalizacion">Normalizaci�n: </label>
						<span class="texto"><c:out value="${antecedentes.normalizacion}" /></span>
					</div>

					<!-- Ejercicio de la profesi�n en el �mbito no acad�mico -->
					<div class="form-group">
						<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
							de la profesi�n en el �mbito no acad�mico: </label>
						<span class="texto"><c:out value="${antecedentes.ejercicio_profesion_ambito_no_academico}" /></span>
					</div>

					<!-- Otra actividad CyT -->
					<div class="form-group">
						<label for="inputOtraActividad">Otra actividad CyT: </label>
						<span class="texto"><c:out value="${antecedentes.otra_actividad_cyt}" /></span>
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