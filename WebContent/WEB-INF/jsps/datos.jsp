<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
<link type="text/css" rel="stylesheet"
	href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

</head>

<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>


	<header>
		<title>Currículum Vitae</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">

				<c:url value="/j_spring_security_logout" var="logoutUrl" />

				<form action="${logoutUrl}" method="post" id="logoutForm">
					<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />
				</form>

				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">Usuario: ${dni}</div>
						<div class="col-md-2">
							<a href="<c:url value="/logout" />"> Salir</a>
						</div>
					</div>
				</div>

				<h1>Currículum Vitae</h1>

				<!-- NAVBAR -->

				<nav class="navbar navbar-default">
					<div class="collapse navbar-collapse"
						id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li class="active"><a
								href="http://localhost:8080/spring/datos" role="button">Datos
									Personales</a></li>
							<li><a href="http://localhost:8080/spring/formacion"
								role="button">Formación</a></li>
							<li><a href="http://localhost:8080/spring/cargos"
								role="button">Cargos</a></li>
							<li><a href="http://localhost:8080/spring/antecedentes"
								role="button">Antecedentes</a></li>
							<li><a href="http://localhost:8080/spring/produccion"
								role="button">Producción</a></li>
							<li><a href="http://localhost:8080/spring/otrosantecedentes"
								role="button">Otros Antecedentes</a></li>
						</ul>
					</div>
				</nav>
				<!--  -->
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/datosEditar"
					modelAttribute="datos">
<<<<<<< HEAD
=======
				
					
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					<h2>DATOS PERSONALES</h2>
		     					 
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar">Editar</button>	
		                   	</div>
		                </div>
					</div>

					<!-- -DNI -->
					<div class="form-group">
						<label for="inputName">DNI:</label>
						<c:out value="${dni}" />
						<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">
					</div>

					<!-- NOMBRE -->
					<div class="form-group">
						<label for="inputName">Nombre:</label>
						<c:out value="${nombre}" />
					</div>

					<!-- APELLIDO -->
					<div class="form-group">
						<label for="inputName">Apellido:</label>
						<c:out value="${apellido}" />
					</div>

					<!-- SEXO -->
					<div class="form-group">
						<label for="inputName">Sexo:</label>
						<c:out value="${sexo}" />
					</div>

					<!-- EMAIL -->
					<div class="form-group">
						<label for="inputName">Email:</label>
						<c:out value="${email}" />
					</div>

					<!-- ESTADO CIVIL -->
					<div class="form-group">
						<label for="inputName">Estado Civil:</label>
						<c:out value="${estado_civil}" />
					</div>


					<!-- EMAIL -->
					<div class="form-group">
						<label for="inputName">Email:</label>
						<c:out value="${email}" />
					</div>
>>>>>>> 59f36ee85177d7798ec11b4b2461de75a1fb92f0


					<div class="container">
						<div class="row-fluid">
							<div class="pull-left" >




								<!-- NOMBRE -->
								<div class="form-group">
									<label for="inputName">Nombre:</label>
									<c:out value="${nombre}" />
								</div>

								<!-- APELLIDO -->
								<div class="form-group">
									<label for="inputName">Apellido:</label>
									<c:out value="${apellido}" />
								</div>

								<!-- SEXO -->
								<div class="form-group">
									<label for="inputName">Sexo:</label>
									<c:out value="${sexo}" />
								</div>

								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Email:</label>
									<c:out value="${email}" />
								</div>

								<!-- ESTADO CIVIL -->
								<div class="form-group">
									<label for="inputName">Estado Civil:</label>
									<c:out value="${estado_civil}" />
								</div>


								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Email:</label>
									<c:out value="${email}" />
								</div>

								<!-- FECHA DE NACIMIENTO -->
								<div class="form-group">
									<label for="inputName">Fecha de Nacimiento:</label>
									<c:out value="${fecha_nac}" />
								</div>

								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Nacionalidad:</label>
									<c:out value="${nacionalidad}" />
								</div>

								<!-- CUIL/CUIT -->
								<div class="form-group">
									<label for="inputName">CUIL/CUIT:</label>
									<c:out value="${CUIL_CUIT}" />
								</div>

								<!-- DOMICILIO -->
								<div class="form-group">
									<label for="inputName">Domicilio:</label>
									<c:out value="${domicilio}" />
								</div>

								<!-- DEPARTAMENTO -->
								<div class="form-group">
									<label for="inputName">Departamento:</label>
									<c:out value="${departamento}" />
								</div>

								<!-- PRIVINCIA -->
								<div class="form-group">
									<label for="inputName">Provincia:</label>
									<c:out value="${provincia}" />
								</div>

								<!-- PAIS -->
								<div class="form-group">
									<label for="inputName">País:</label>
									<c:out value="${pais}" />
								</div>
							</div>
							<div class="span6 pull-right" style="text-align: right">
								<!-- BOTON EDITAR -->
								<div class="form-group">
									<div class="span6 pull-right" style="text-align: right">
										<button type="submit" class="btn btn-default"
											class="btn btn-primary pull-right btn-sm RbtnMargin"
											name="action"  style="margin-right: 40px" value="editar">Editar</button>
									</div>
								</div>
							</div>
				</form:form>

			</div>
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


</body>
<footer>
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="row">

				<div class="col-lg-12">

					<div class="col-md-4">
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="https://mail.um.edu.ar/horde3/imp/">Webmail</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="/es/mapa-sitio.html?lang=es">Mapa del Sitio</a>
							</div>
						</div>

					</div>

					<div class="col-md-7">
						<p>Boulogne Sur Mer 683. CP 5500. Mendoza, Argentina
							Teléfonos: 54 261 4202017. Fax: 54 261 4202017 (Opción 9)</p>
					</div>
				</div>
				<!--col-6-->
			</div>
		</div>
		<!--well-->
	</div>
</footer>
</html>