<%@include file="includes/header.jsp" %>

<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">				
				<%@include file="includes/menu.jsp" %>

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/datosEditar"
					modelAttribute="datos">


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
						</div>
					</div>
				</form:form>

			</div>
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>