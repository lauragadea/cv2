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
	
					<div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${dni}" readonly></label></div>
					
	
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					<h2>FORMACION</h2>
		     					 <h3>Formación Académica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                  	
		                   	</div>
		                </div>
					</div>
										
					<!-- Nivel Universitario de posgrado -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgrado">Nivel Universitario de Posgrado</label> <input
							type="text" id="nivel_universitario_posgrado" path="nivel_universitario_posgrado" name="nivel_universitario_posgrado" class="form-control"
							placeholder="Nivel Universitario de Posgrado">
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioPosgradoEsp">Nivel Universitario de
							Posgrado/especialización</label> <input type="text" id="nivel_universitario_posgrado_especializacion" path="nivel_universitario_posgrado_especializacion" name="nivel_universitario_posgrado_especializacion"
							class="form-control"
							placeholder="Nivel Universitario de Posgrado/especialización">
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelUniversitarioGrado">Nivel Universitario de
							Grado</label> <input type="text" id="nivel_universitario_grado"
							class="form-control"
							placeholder="Nivel Universitario de Grado">
					</div>
					<!--  -->
					<div class="form-group">
						<label for="inputNivelTerciario">Nivel Terciario no Universitario</label> <input type="text" id="nivel_terciario_no_universitario" path="nivel_terciario_no_universitario" name="nivel_terciario_no_universitario"
							class="form-control"
							placeholder="Nivel Terciario No Universitario">
					</div>

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formación Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					<div class="form-group">
						<label for="inputEspecialidadCertificada">Especialidad certificada por
							organismo de salud</label> <input type="text"  id="especialidad_certificada" path="especialidad_certificada" name="especialidad_certificada" class="form-control"
							placeholder="Especialidad certificada por organismo de salud">
					</div>
					<!-- Posdoctorado -->
					<div class="form-group">
						<label for="inputPosdoctorado">Posdoctorado</label> <input type="text" id="posdoctorado" path="posdoctorado" name="posdoctorado"
							class="form-control" placeholder="Posdoctorado">
					</div>
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					<div class="form-group">
						<label for="inputCursosPosgrado">Cursos de posgrado y/o
							capacitaciones extracurriculares</label> <input type="text" id="cursos_posgrado_y_capacitaciones" path="cursos_posgrado_y_capacitaciones" name="cursos_posgrado_y_capacitaciones"
							class="form-control"
							placeholder="Cursos de posgrado y/o capacitaciones extracurriculares">
					</div>
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputIdiomas">Idiomas</label> <input type="text" id="idiomas" path="idiomas" name="idiomas"
							class="form-control" placeholder="Idiomas">
					</div>

				<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>

				</form:form>
				
				</c:when>
				
					
				<c:otherwise>
					
						<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/formacionEditar"
					modelAttribute="formacion">
	
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
		     					<h2>FORMACION</h2>
		     					 <h3>Formación Académica</h3>
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
						<c:out value="${formacion.nivel_universitario_posgrado_especializacion}" />
					</div>
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Grado:</label>
						<c:out value="${formacion.nivel_universitario_grado}" />
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Terciario no Univeresitario:</label>
						<c:out value="${formacion.nivel_terciario_no_universitario}" />
					</div>
					
					

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formación Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					
					<div class="form-group">
						<label for="inputName">Especialidad certificada por
							organismo de salud:</label>
						<c:out value="${formacion.especialidad_certificada}" />
					</div>
					
				
					<!-- Posdoctorado -->
					
					<div class="form-group">
						<label for="inputName">Posdoctorado:</label>
						<c:out value="${formacion.posdoctorado}" />
					</div>
					
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					
					<div class="form-group">
						<label for="inputName">Cursos de posgrado y/o
							capacitaciones extracurriculares:</label>
						<c:out value="${formacion.cursos_posgrado_y_capacitaciones}" />
					</div>
					
										
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputName">Idiomas:</label>
						<c:out value="${formacion.idiomas}" />
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