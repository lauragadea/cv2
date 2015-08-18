<%@include file="includes/header.jsp"%>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp"%>

				<!-- BOTON EDITAR -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-8">

							<h3>Administrador</h3>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3">

							<table>
								<tr>
									<th>DNI</th>
									<th>Nombre</th>
								</tr>
								<c:forEach items="${themeList}" var="theme" varStatus="status">
									<tr>
										<td>${theme.id}</td>
										<td>${theme.theme}</td>
									</tr>
								</c:forEach>
							</table>

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
	<!--container-->
	<%@include file="includes/footer.jsp"%>
</body>
</html>