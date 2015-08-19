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
					action="${pageContext.request.contextPath}/modificarcargos"
					modelAttribute="formacion">


					<input type="hidden" id="dni" value="${cargos.dni}" path="dni"
						name="dni">

					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">

								<h3>Docencia</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3"></div>
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
							placeholder="Nivel superioruniversitario y/o posgrado"> 
							${cargos.nivel_superior_universitario}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- nivel terciario no universitario -->
					<div class="form-group">
						<label for="inputNivelTerciarioNoUniversitario">Nivel
							terciario no universitario</label> <textarea wrap="hard" 
							class="form-control" id="nivel_terciario_no_universitario"
							path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							placeholder="Nivel terciario no universitario"
							>${cargos.nivel_terciario_no_universitario}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Nivel basico y/o medio -->
					<div class="form-group">
						<label for="inputNivelBasicoyMedio">Nivel basico y/o medio</label>
						<textarea wrap="hard"  class="form-control" id="nivel_basico"
							path="nivel_basico" name ="nivel_basico"
							placeholder="Nivel terciario no universitario">${cargos.nivel_basico}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
							de posgrado y/o capacitaciones extracurriculares</label> <textarea wrap="hard"
							 class="form-control"
							id="cursos_posgrado_y_capacitaciones"
							path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares"
							>${cargos.cursos_posgrado_y_capacitaciones}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<!-- CARGOS I+D -->

					<div class="form-group">
						<h3>Cargos I+D</h3>
					</div>
					<!-- cargos en organismos científico-tecnológicos -->
					<div class="form-group">
						<label for="inputCargosEnOrganismosCT">Cargos en
							organismos científico-tecnológicos</label><textarea wrap="hard"
							class="form-control" id="cargos_organismos_ct"
							path="cargos_organismos_ct" name="cargos_organismos_ct"
							placeholder="Cargos en organismos científico-tecnológicos"
							>${cargos.cargos_organismos_ct}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Categorización del programa de incentivos -->
					<div class="form-group">
						<label for="inputCategorizacionProgramaIncentivos">Categorización
							del programa de incentivos</label> <textarea wrap="hard"
							class="form-control" id="categorizacion_programa_incentivos"
							path="categorizacion_programa_incentivos" name="categorizacion_programa_incentivos"
							placeholder="Categorización del programa de incentivos"
							>${cargos.categorizacion_programa_incentivos}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Cargos I+D en otro tipo de institucines -->
					<div class="form-group">
						<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
							I+D en otro tipo de institucines</label><textarea wrap="hard"
							class="form-control" id="cargos_id_otro" path="cargos_id_otro" name="cargos_id_otro"
							placeholder="Cargos I+D en otro tipo de institucines"
							>${cargos.cargos_id_otro}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
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
							placeholder="Cargos en gestion institucional"
							>${cargos.cargos_gestion_institucional}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<!-- OTROS CARGOS -->

					<div class="form-group">
						<h3>Otros Cargos</h3>
					</div>
					<!-- Otros Cargos -->
					<div class="form-group">
						<label for="inputOtrosCargos">Otros Cargos</label> 
						<textarea wrap="hard"  class="form-control" id="otros_cargos"
							path="otros_cargos" name="otros_cargos"
							placeholder="Otros Cargos" >${cargos.otros_cargos}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

						<button type="submit" class="btn btn-primary" name="action" value="Enviar">Guardar</button>
 
				</form:form>
			</div>
		</div>
	</div>
	<!--container-->
	</div>
	</div>

	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script>
	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script>
	<script
		src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script>
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

