<%@include file="includes/header.jsp" %>

<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
				
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
						<c:out value="${nivel_universitario_posgrado}" />
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Posgrado/especializacion:</label>
						<c:out value="${nivel_universitario_posgrado_especializacion}" />
					</div>
					
					<div class="form-group">
						<label for="inputName">Nivel Universitario de Grado:</label>
						<c:out value="${nivel_universitario_grado}" />
					</div>
					
					
					<div class="form-group">
						<label for="inputName">Nivel Terciario no Univeresitario:</label>
						<c:out value="${nivel_terciario_no_universitario}" />
					</div>
					
					

					<!-- FORMACION COMPLEMENTARIA -->

					<div class="form-group">
						<h3>Formación Complementaria</h3>
					</div>
					<!-- Especialidad certificada por org de salud -->
					
					<div class="form-group">
						<label for="inputName">Especialidad certificada por
							organismo de salud:</label>
						<c:out value="${especialidad_certificada}" />
					</div>
					
				
					<!-- Posdoctorado -->
					
					<div class="form-group">
						<label for="inputName">Posdoctorado:</label>
						<c:out value="${posdoctorado}" />
					</div>
					
					<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
					
					<div class="form-group">
						<label for="inputName">Cursos de posgrado y/o
							capacitaciones extracurriculares:</label>
						<c:out value="${cursos_posgrado_y_capacitaciones}" />
					</div>
					
										
					<!-- Idiomas -->
					<div class="form-group">
						<label for="inputName">Idiomas:</label>
						<c:out value="${idiomas}" />
					</div>
			

		
				</form:form>
			</div>	<!--container-->
		</div>
	</div>
	<%@include file="includes/footer.jsp" %>

</body>
</html>