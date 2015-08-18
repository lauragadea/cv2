<%@include file="includes/header.jsp" %>
<body>
<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>

					
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		     					 <h3>Datos Personales</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                  	
		                   	</div>
		                </div>
					</div>

					<div class="container">
						<div class="row-fluid">
							<div class="pull-left" >
							<!-- -DNI -->
					<div class="form-group">
						<label for="inputName">DNI:</label>
						<c:out value="${datosPersonales.dni}" />
						<input type="hidden" id="dni"value="${datosPersonales.dni}" path="dni" name="dni">
					</div>
								<!-- NOMBRE -->
								<div class="form-group">
									<label for="inputName">Nombre:</label>
									<c:out value="${datosPersonales.nombre}" />
								</div>

								<!-- APELLIDO -->
								<div class="form-group">
									<label for="inputName">Apellido:</label>
									<c:out value="${datosPersonales.apellido}" />
								</div>
								
								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Email:</label>
									<c:out value="${datosPersonales.email}" />
								</div>
								
								<!-- SEXO -->
								<div class="form-group">
									<label for="inputName">Sexo:</label>
									<c:out value="${datosPersonales.sexo}" />
								</div>
								

								<!-- ESTADO CIVIL -->
								<div class="form-group">
									<label for="inputName">Estado Civil:</label>
									<c:out value="${datosPersonales.estado_civil}" />
								</div>
													
								<!-- FECHA DE NACIMIENTO -->
								<div class="form-group">
									<label for="inputFechaNac">Fecha de Nacimiento:</label>
									<fmt:formatDate pattern="dd/MM/yyyy" value="${datosPersonales.fecha_nac}" />
								</div>

								<!-- EMAIL -->
								<div class="form-group">
									<label for="inputName">Nacionalidad:</label>
									<c:out value="${datosPersonales.nacionalidad}" />
								</div>

								<!-- CUIL/CUIT -->
								<div class="form-group">
									<label for="inputName">CUIL/CUIT:</label>
									<c:out value="${datosPersonales.CUIL_CUIT}" />
								</div>

								<!-- DOMICILIO -->
								<div class="form-group">
									<label for="inputName">Domicilio:</label>
									<c:out value="${datosPersonales.domicilio}" />
								</div>

								<!-- DEPARTAMENTO -->
								<div class="form-group">
									<label for="inputName">Departamento:</label>
									<c:out value="${datosPersonales.departamento}" />
								</div>

								<!-- PRIVINCIA -->
								<div class="form-group">
									<label for="inputName">Provincia:</label>
									<c:out value="${datosPersonales.provincia}" />
								</div>

								<!-- PAIS -->
								<div class="form-group">
									<label for="inputName">País:</label>
									<c:out value="${datosPersonales.pais}" />
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

				</div><!--container-->
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>