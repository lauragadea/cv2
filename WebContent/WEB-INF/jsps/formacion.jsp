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
					action="${pageContext.request.contextPath}/crearformacion"
					modelAttribute="formacion">

					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">					
	
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">

		     					 <h3>Formaci�n Acad�mica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                  	
		                   	</div>
		                </div>
					</div>
										
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgrado">Nivel Universitario de Posgrado</label> <textarea wrap="hard" id="nivel_universitario_posgrado" path="nivel_universitario_posgrado" name="nivel_universitario_posgrado" class="form-control"
							placeholder="Nivel Universitario de Posgrado"></textarea>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgradoEsp">Nivel Universitario de
							Posgrado/especializaci�n</label> <textarea wrap="hard"  id="nivel_universitario_posgrado_especializacion" path="nivel_universitario_posgrado_especializacion" name="nivel_universitario_posgrado_especializacion"
							class="form-control"
							placeholder="Nivel Universitario de Posgrado/especializaci�n"></textarea>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioGrado">Nivel Universitario de
							Grado</label> <textarea wrap="hard" id="nivel_universitario_grado" path="nivel_universitario_grado" name="nivel_universitario_grado"
							class="form-control"
							placeholder="Nivel Universitario de Grado"></textarea>
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelTerciario">Nivel Terciario no Universitario</label> <textarea wrap="hard"  id="nivel_terciario_no_universitario" path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							class="form-control"
							placeholder="Nivel Terciario No Universitario"></textarea>
					</div>

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formaci�n Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					<div class="form-group">
						<label for="inputEspecialidadCertificada">Especialidad certificada por
							organismo de salud</label> <textarea wrap="hard"  id="especialidad_certificada" path="especialidad_certificada" name="especialidad_certificada" class="form-control"
							placeholder="Especialidad certificada por organismo de salud"></textarea>
					</div>
					<!-- Posdoctorado -->
					<div class="form-group">
						<label for="inputPosdoctorado">Posdoctorado</label> <textarea wrap="hard" id="posdoctorado" path="posdoctorado" name="posdoctorado"
							class="form-control" placeholder="Posdoctorado"></textarea>
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgrado">Cursos de posgrado y/o
							capacitaciones extracurriculares</label> <textarea wrap="hard"  id="cursos_posgrado_y_capacitaciones" path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							class="form-control"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares"></textarea>
					</div>
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputIdiomas">Idiomas</label><textarea wrap="hard"  id="idiomas" path="idiomas" name="idiomas"
							class="form-control" placeholder="Idiomas"></textarea>
					</div>

				<button type="submit" class="btn btn-primary" name="action" value="enviar">Guardar</button>

				</form:form>
				
				</c:when>
				
					
				<c:otherwise>
					
						<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/formacionEditar"
					modelAttribute="formacion">

					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">

					
	
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     			
		     					 <h3>Formaci�n Acad�mica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>		
		                   	</div>
		                </div>
					</div>
							
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado:</label>
						<c:out value="${formacion.nivel_universitario_posgrado}" />
					</div>
						
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado/especializacion:</label>
						<span style="white-space:pre"><c:out value="${formacion.nivel_universitario_posgrado_especializacion}" /></span>
					</div>
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Grado:</label>
						<span style="white-space:pre"><c:out value="${formacion.nivel_universitario_grado}" /></span>
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Terciario no Univeresitario:</label>
						<span style="white-space:pre"><c:out value="${formacion.nivel_terciario_no_universitario}" /></span>
					</div>
					
					

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formaci�n Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					
					<div class="form-group">
						<label for="inputName">Especialidad certificada por
							organismo de salud:</label>
						<span style="white-space:pre"><c:out value="${formacion.especialidad_certificada}" /></span>
					</div>
					
				
					<!-- Posdoctorado -->
					
					<div class="form-group">
						<label for="inputName">Posdoctorado:</label>
						<span style="white-space:pre"><c:out value="${formacion.posdoctorado}" /></span>
					</div>
					
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					
					<div class="form-group">
						<label for="inputName">Cursos de posgrado y/o
							capacitaciones extracurriculares:</label>
						<span style="white-space:pre"><c:out value="${formacion.cursos_posgrado_y_capacitaciones}" /></span>
					</div>
					
										
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputName">Idiomas:</label>
						<span style="white-space:pre"><c:out value="${formacion.idiomas}" /></span>
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