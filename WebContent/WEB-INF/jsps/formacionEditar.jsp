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
					action="${pageContext.request.contextPath}/modificarformacion"
					modelAttribute="dp">
		
					
					<!-- -DNI -->

					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">

							
							
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
	
		     					<h3>Formación Académica</h3>
		                   		<div class="col-md-1"></div>
		                   		<div class="col-md-3"></div>
		                </div>
					</div>

				
					
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado</label> <textarea wrap="hard" id="nivel_universitario_posgrado" path="nivel_universitario_posgrado" name="nivel_universitario_posgrado" class="form-control"
							placeholder="Nivel Universitario de Posgrado" >${formacion.nivel_universitario_posgrado}</textarea>							
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					
					
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgradoEsp">Nivel Universitario de
							Posgrado/especialización</label> <textarea wrap="hard"  id="nivel_universitario_posgrado_especializacion" path="nivel_universitario_posgrado_especializacion" name="nivel_universitario_posgrado_especializacion"
							class="form-control"
							placeholder="Nivel Universitario de Posgrado/especialización" >${formacion.nivel_universitario_posgrado_especializacion}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioGrado">Nivel Universitario de
							Grado</label> <textarea wrap="hard"  id="nivel_universitario_grado"
							class="form-control" path="nivel_universitario_grado" name="nivel_universitario_grado"
							placeholder="Nivel Universitario de Grado" >${formacion.nivel_universitario_grado}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelTerciario">Nivel Terciario no Universitario</label> <textarea wrap="hard"  id="nivel_terciario_no_universitario" path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							class="form-control"
							placeholder="Nivel Terciario No Universitario" >${formacion.nivel_terciario_no_universitario}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formación Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					<div class="form-group">
						<label for="inputEspecialidadCertificada">Especialidad certificada por
							organismo de salud</label> <textarea wrap="hard"   id="especialidad_certificada" path="especialidad_certificada" name="especialidad_certificada" class="form-control"
							placeholder="Especialidad certificada por organismo de salud" >${formacion.especialidad_certificada}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Posdoctorado -->
					<div class="form-group">
						<label for="inputPosdoctorado">Posdoctorado</label> <textarea wrap="hard"  id="posdoctorado" path="posdoctorado" name="posdoctorado"
							class="form-control" placeholder="Posdoctorado" >${formacion.posdoctorado}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgrado">Cursos de posgrado y/o
							capacitaciones extracurriculares</label> <textarea wrap="hard"  id="cursos_posgrado_y_capacitaciones" path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							class="form-control"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares" >${formacion.cursos_posgrado_y_capacitaciones}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputIdiomas">Idiomas</label> <textarea wrap="hard" id="idiomas" path="idiomas" name="idiomas"
							class="form-control" placeholder="Idiomas" >${formacion.idiomas}</textarea>
							<form:errors cssClass="error" path="nombre"></form:errors>
					</div>

					<button type="submit" class="btn btn-primary" name="action" value="enviar">Guardar</button>

				</form:form>
			
			</div>	<!--container-->
			</div>
		</div>
	</div>

	
<%@include file="includes/footer.jsp" %>
</body>
</html>