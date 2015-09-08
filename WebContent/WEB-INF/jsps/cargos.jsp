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
					
					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">

					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
	
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
							superior universitario y/o posgrado</label> <textarea wrap="hard"
							class="form-control" id="nivel_superior_universitario"
							path="nivel_superior_universitario"
							name="nivel_superior_universitario"
							placeholder="Nivel superioruniversitario y/o posgrado"></textarea>
					</div>
					<!-- nivel terciario no universitario -->
					<div class="form-group">
						<label for="inputNivelTerciarioNoUniversitario">Nivel
							terciario no universitario</label> <textarea wrap="hard"
							class="form-control" id="nivel_terciario_no_universitario"
							path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							placeholder="Nivel terciario no universitario"></textarea>
					</div>
					<!-- Nivel basico y/o medio -->
					<div class="form-group">
						<label for="inputNivelBasicoyMedio">Nivel b�sico y/o medio</label>
						<textarea wrap="hard" class="form-control" id="nivel_basico"
							path="nivel_basico" name ="nivel_basico"
							placeholder="Nivel terciario no universitario"></textarea>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
							de posgrado y/o capacitaciones extracurriculares</label> <textarea wrap="hard"
							 class="form-control"
							id="cursos_posgrado_y_capacitaciones"
							path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares"></textarea>
					</div>

					<!-- CARGOS I+D -->

					<div class="form-group">
						<h3>Cargos I+D</h3>
					</div>
					<!-- cargos en organismos cient�fico-tecnol�gicos -->
					<div class="form-group">
						<label for="inputCargosEnOrganismosCT">Cargos en
							organismos cient�fico-tecnol�gicos</label><textarea wrap="hard"
							class="form-control" id="cargos_organismos_ct"
							path="cargos_organismos_ct" name="cargos_organismos_ct"
							placeholder="Cargos en organismos cient�fico-tecnol�gicos"></textarea>
					</div>
					<!-- Categorizaci�n del programa de incentivos -->
					<div class="form-group">
						<label for="inputCategorizacionProgramaIncentivos">Categorizaci�n
							del programa de incentivos</label> <textarea wrap="hard"
							class="form-control" id="categorizacion_programa_incentivos"
							path="categorizacion_programa_incentivos" name="categorizacion_programa_incentivos"
							placeholder="Categorizaci�n del programa de incentivos"></textarea>
					</div>
					<!-- Cargos I+D en otro tipo de institucines -->
					<div class="form-group">
						<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
							I+D en otro tipo de instituciones</label> <textarea wrap="hard"
							class="form-control" id="cargos_id_otro" path="cargos_id_otro" name="cargos_id_otro"
							placeholder="Cargos I+D en otro tipo de institucines"></textarea>
					</div>

					<!-- CARGOS EN GESTION INSTITUCIONAL -->

					<div class="form-group">
						<h3>Cargos en Gestion Institucional</h3>
					</div>
					<!-- cargos en gestion institucional -->
					<div class="form-group">
						<label for="inputCargosenGestionInstitucional">Cargos en
							gestion institucional</label> <textarea wrap="hard" class="form-control"
							id="cargos_gestion_institucional"
							path="cargos_gestion_institucional" name="cargos_gestion_institucional"
							placeholder="Cargos en gestion institucional"></textarea>
					</div>

					<!-- OTROS CARGOS -->

					<div class="form-group">
						<h3>Otros Cargos</h3>
					</div>
					<!-- Otros Cargos -->
					<div class="form-group">
						<label for="inputOtrosCargos">Otros Cargos</label> <textarea wrap="hard" 
						class="form-control" id="otros_cargos"
							path="otros_cargos" name="otros_cargos" placeholder="Otros Cargos"></textarea>
					</div>

						<button type="submit" class="btn btn-primary" name="action" value="enviar">Guardar</button>
				</form:form>
				
				</c:when>
				
				<c:otherwise>
				
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/cargosEditar"
					modelAttribute="cargos">
					
					<!-- -DNI -->
				
						<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">
				
					
					
					
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
						
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
						<span style="white-space:pre"><c:out value="${cargos.nivel_superior_universitario}"/></span>
					</div>
					<!-- nivel terciario no universitario -->
					<div class="form-group">
						<label for="inputNivelTerciarioNoUniversitario">Nivel
							terciario no universitario: </label>
							<span style="white-space:pre"><c:out value="${cargos.nivel_terciario_no_universitario}"/></span>
					</div>
					<!-- Nivel basico y/o medio -->
					<div class="form-group">
						<label for="inputNivelBasicoyMedio">Nivel basico y/o medio: </label>
						<span style="white-space:pre"><c:out value="${cargos.nivel_basico}"/></span>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
							de posgrado y/o capacitaciones extracurriculares: </label>
						<span style="white-space:pre"><c:out value="${cargos.cursos_posgrado_y_capacitaciones}"/></span>
					</div>

					<!-- CARGOS I+D -->

					<div class="form-group">
						<h3>Cargos I+D</h3>
					</div>
					<!-- cargos en organismos cient�fico-tecnol�gicos -->
					<div class="form-group">
						<label for="inputCargosEnOrganismosCT">Cargos en
							organismos cient�fico-tecnol�gicos: </label>
						<span style="white-space:pre"><c:out value="${cargos.cargos_organismos_ct}"/></span>
					</div>
					
					<!-- Categorizaci�n del programa de incentivos -->
					<div class="form-group">
						<label for="inputCategorizacionProgramaIncentivos">Categorizaci�n
							del programa de incentivos: </label>
						<span style="white-space:pre"><c:out value="${cargos.categorizacion_programa_incentivos}"/></span>
					</div>
					<!-- Cargos I+D en otro tipo de institucines -->
					<div class="form-group">
						<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
							I+D en otro tipo de institucines: </label>
						<span style="white-space:pre"><c:out value="${cargos.cargos_id_otro}"/></span>
					</div>

					<!-- CARGOS EN GESTION INSTITUCIONAL -->

					<div class="form-group">
						<h3>Cargos en Gestion Institucional</h3>
					</div>
					<!-- cargos en gestion institucional -->
					<div class="form-group">
						<label for="inputCargosenGestionInstitucional">Cargos en
							gestion institucional: </label>
						<span style="white-space:pre"><c:out value="${cargos.cargos_gestion_institucional}"/></span>
					</div>

					<!-- OTROS CARGOS -->

					<div class="form-group">
						<h3>Otros Cargos</h3>
					</div>
					<!-- Otros Cargos -->
					<div class="form-group">
						<label for="inputOtrosCargos">Otros Cargos: </label>
						<span style="white-space:pre"><c:out value="${cargos.otros_cargos}"/></span>
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