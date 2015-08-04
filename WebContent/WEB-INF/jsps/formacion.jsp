<%@include file="includes/header.jsp" %>

<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<c:url value="/j_spring_security_logout" var="logoutUrl" />
				
				<form action="${logoutUrl}" method="post" id="logoutForm">
					<input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
				</form>
				
				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">Usuario: ${dni}</div>
						<div class="col-md-2"><a href="<c:url value="/logout" />">Salir</a></div>
					</div>
				</div>
				
				<h1>Currículum Vitae</h1>
				<p>Seleccione una categoría para cargar/editar sus datos:</p>
				
				<!-- NAVBAR -->
				
					<nav class="navbar navbar-default">
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="http://localhost:8080/spring/datos" role="button">Datos Personales</a></li>
				        <li><a href="http://localhost:8080/spring/formacion" role="button">Formación</a></li>
				        <li><a href="http://localhost:8080/spring/cargos" role="button">Cargos</a></li>
				        <li><a href="http://localhost:8080/spring/antecedentes" role="button">Antecedentes</a></li>
				        <li><a href="http://localhost:8080/spring/produccion" role="button">Producción</a></li>
				        <li><a href="http://localhost:8080/spring/otrosantecedentes" role="button">Otros Antecedentes</a></li>
				      </ul>
				    </div>
				</nav>
				<!--  -->

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