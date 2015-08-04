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
