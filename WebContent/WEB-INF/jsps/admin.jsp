<%@include file="includes/header.jsp"%>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3"></div>
						<div class="col-md-2">
							<a href="<c:url value="j_spring_security_logout" />"> Salir</a>
						</div>
					</div>
				</div>
				<!-- BOTON EDITAR -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-8">

							<h1>Administrador</h1>


							<table class="table">
								<thead>
									<tr>
										<th>DNI</th>
										<th>Nombre</th>
										<th>Apellido</th>
										<th>Mail</th>
										<th>Detalle</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listDatos}" var="datos" varStatus="status">
										<tr>
											<td>${datos.dni}</td>
											<td>${datos.nombre}</td>
											<td>${datos.apellido}</td>
											<td>${datos.email}</td>
											<td><a href="/detalle?dni=${datos.dni}">Ver</a></td>

										</tr>
									</c:forEach>
								</tbody>
							</table>


						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3"></div>
					</div>
				</div>

				<div class="form-group"></div>
			</div>

		</div>
		<!--container-->
	</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>