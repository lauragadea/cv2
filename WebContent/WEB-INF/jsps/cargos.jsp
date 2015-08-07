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
					action="${pageContext.request.contextPath}/crearcargos"
					modelAttribute="formacion">
					
					<div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${cargos.dni}" readonly></label></div>
					
					
					
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
								<h2>CARGOS</h2>
								<h3>Docencia</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   
		                   	</div>
		                </div>
					</div>
					
					<!-- DOCENCIA -->

					<!-- nivel superior universitario y/o posgrado -->
					<div class="form-group">
						<label for="inputNivelSuperiorUniversitarioyPosgrado">Nivel
							superior universitario y/o posgrado</label> <input type="text"
							class="form-control" id="nivel_superior_universitario"
							path="nivel_superior_universitario"
							name="nivel_superior_universitario"
							placeholder="Nivel superioruniversitario y/o posgrado">
					</div>
					<!-- nivel terciario no universitario -->
					<div class="form-group">
						<label for="inputNivelTerciarioNoUniversitario">Nivel
							terciario no universitario</label> <input type="text"
							class="form-control" id="nivel_terciario_no_universitario"
							path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							placeholder="Nivel terciario no universitario">
					</div>
					<!-- Nivel basico y/o medio -->
					<div class="form-group">
						<label for="inputNivelBasicoyMedio">Nivel basico y/o medio</label>
						<input type="text" class="form-control" id="nivel_basico"
							path="nivel_basico" name ="nivel_basico"
							placeholder="Nivel terciario no universitario">
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
							de posgrado y/o capacitaciones extracurriculares</label> <input
							type="text" class="form-control"
							id="cursos_posgrado_y_capacitaciones"
							path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares">
					</div>

					<!-- CARGOS I+D -->

					<div class="form-group">
						<h3>Cargos I+D</h3>
					</div>
					<!-- cargos en organismos científico-tecnológicos -->
					<div class="form-group">
						<label for="inputCargosEnOrganismosCT">Cargos en
							organismos científico-tecnológicos</label> <input type="text"
							class="form-control" id="cargos_organismos_ct"
							path="cargos_organismos_ct" name="cargos_organismos_ct"
							placeholder="Cargos en organismos científico-tecnológicos">
					</div>
					<!-- Categorización del programa de incentivos -->
					<div class="form-group">
						<label for="inputCategorizacionProgramaIncentivos">Categorización
							del programa de incentivos</label> <input type="text"
							class="form-control" id="categorizacion_programa_incentivos"
							path="categorizacion_programa_incentivos" name="categorizacion_programa_incentivos"
							placeholder="Categorización del programa de incentivos">
					</div>
					<!-- Cargos I+D en otro tipo de institucines -->
					<div class="form-group">
						<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
							I+D en otro tipo de institucines</label> <input type="text"
							class="form-control" id="cargos_id_otro" path="cargos_id_otro" name="cargos_id_otro"
							placeholder="Cargos I+D en otro tipo de institucines">
					</div>

					<!-- CARGOS EN GESTION INSTITUCIONAL -->

					<div class="form-group">
						<h3>Cargos en Gestion Institucional</h3>
					</div>
					<!-- cargos en gestion institucional -->
					<div class="form-group">
						<label for="inputCargosenGestionInstitucional">Cargos en
							gestion institucional</label> <input type="text" class="form-control"
							id="cargos_gestion_institucional"
							path="cargos_gestion_institucional" name="cargos_gestion_institucional"
							placeholder="Cargos en gestion institucional">
					</div>

					<!-- OTROS CARGOS -->

					<div class="form-group">
						<h3>Otros Cargos</h3>
					</div>
					<!-- Otros Cargos -->
					<div class="form-group">
						<label for="inputOtrosCargos">Otros Cargos</label> <input
							type="text" class="form-control" id="otros_cargos"
							path="otros_cargos" name="otros_cargos" placeholder="Otros Cargos">
					</div>

						<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>
				</form:form>
				
				</c:when>
				
				<c:otherwise>
				
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/cargosEditar"
					modelAttribute="cargos">
					
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
								<h2>CARGOS</h2>
								<h3>Docencia</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>	
		                   	</div>
		                </div>
					</div>
					
					<!-- DOCENCIA -->

					<!-- nivel superior universitario y/o posgrado -->
					<div class="form-group">
						<label for="inputNivelSuperiorUniversitarioyPosgrado">Nivel
							superior universitario y/o posgrado: </label>
						<c:out value="${cargos.nivel_superior_universitario}"/>
					</div>
					<!-- nivel terciario no universitario -->
					<div class="form-group">
						<label for="inputNivelTerciarioNoUniversitario">Nivel
							terciario no universitario: </label>
							<c:out value="${cargos.nivel_terciario_no_universitario}"/>
					</div>
					<!-- Nivel basico y/o medio -->
					<div class="form-group">
						<label for="inputNivelBasicoyMedio">Nivel basico y/o medio: </label>
						<c:out value="${cargos.nivel_basico}"/>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
							de posgrado y/o capacitaciones extracurriculares: </label>
						<c:out value="${cargos.cursos_posgrado_y_capacitaciones}"/>
					</div>

					<!-- CARGOS I+D -->

					<div class="form-group">
						<h3>Cargos I+D</h3>
					</div>
					<!-- cargos en organismos científico-tecnológicos -->
					<div class="form-group">
						<label for="inputCargosEnOrganismosCT">Cargos en
							organismos científico-tecnológicos: </label>
						<c:out value="${cargos.cargos_organismos_ct}"/>
					</div>
					
					<!-- Categorización del programa de incentivos -->
					<div class="form-group">
						<label for="inputCategorizacionProgramaIncentivos">Categorización
							del programa de incentivos: </label>
						<c:out value="${cargos.categorizacion_programa_incentivos}"/>
					</div>
					<!-- Cargos I+D en otro tipo de institucines -->
					<div class="form-group">
						<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
							I+D en otro tipo de institucines: </label>
						<c:out value="${cargos.cargos_id_otro}"/>
					</div>

					<!-- CARGOS EN GESTION INSTITUCIONAL -->

					<div class="form-group">
						<h3>Cargos en Gestion Institucional</h3>
					</div>
					<!-- cargos en gestion institucional -->
					<div class="form-group">
						<label for="inputCargosenGestionInstitucional">Cargos en
							gestion institucional: </label>
						<c:out value="${cargos.cargos_gestion_institucional}"/>
					</div>

					<!-- OTROS CARGOS -->

					<div class="form-group">
						<h3>Otros Cargos</h3>
					</div>
					<!-- Otros Cargos -->
					<div class="form-group">
						<label for="inputOtrosCargos">Otros Cargos: </label>
						<c:out value="${cargos.otros_cargos}"/>
					</div>

				</form:form>
				</c:otherwise>
			
			</c:choose>
				
				
				
			</div>
		</div>
	</div>
	<!--container-->
	<%@include file="includes/footer.jsp" %>
</body>
</html>