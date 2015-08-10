<%@include file="includes/header.jsp"%>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp"%>

				<c:choose>
					<c:when test="${objeto == false}">

						<form:form id="registration-form" class="form-horizontal"
							method="post"
							action="${pageContext.request.contextPath}/crearotrosantecedentes"
							modelAttribute="produccion">


							<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">


							<!-- Participaci�n u organizaci�n de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUOrganizacion">Participaci�n u organizaci�n de eventos CyT</label> <input type="text" class="form-control"
									placeholder="Participaci�n u organizaci�n de eventos CyT" id="participacion_organizacion_eventos"
									path="participacion_organizacion_eventos" name="participacion_organizacion_eventos">
							</div>

							<!-- Membres�as, redes y/o programas de cooperaci�n -->

							<div class="form-group">
								<h3>Membres�as, redes y/o programas de cooperaci�n</h3>
							</div>

							<!-- Membres�as n asocianiones C-T y/o profesionales -->
							<div class="form-group">
								<label for="inputMembres�asEnAsociacionesCT">Membres�as
									en asocianiones C-T y/o profesionales</label> <input type="text"
									class="form-control"
									placeholder="Membres�as en asocianiones C-T y/o profesionales"
									id="membresias_asociaciones_ct"
									path="membresias_asociaciones_ct"
									name="membresias_asociaciones_ct">
							</div>

							<!-- Participaci�n en redes tem�ticas o institucionales -->
							<div class="form-group">
								<label for="inputParticipacionEnRedesTematicas">Participaci�n
									en redes tem�ticas o institucionales</label> <input type="text"
									class="form-control"
									placeholder="Participaci�n en redes tem�ticas o institucionales"
									id="participacion_redes_tematicas"
									path="participacion_redes_tematicas"
									name="participacion_redes_tematicas">
							</div>

							<!-- Coordinaci�n de proyectos de cooperaci�n acad�mica o  C-T -->
							<div class="form-group">
								<label for="inputCoordinacionDeProyectosCooperacion">Coordinaci�n
									de proyectos de cooperaci�n acad�mica o C-T</label> <input type="text"
									class="form-control"
									placeholder="Coordinaci�n de proyectos de cooperaci�n acad�mica o  C-T"
									id="coordinacion_proyectos_cooperacion"
									path="coordinacion_proyectos_cooperacion"
									name="coordinacion_proyectos_cooperacion">
							</div>

							<!-- PREMIOS Y/O DISTINCIONES -->

							<div class="form-group">
								<h3>Premios y/o distinciones</h3>
							</div>
							<!-- Premios y/o distinciones -->
							<div class="form-group">
								<label for="inputPremiosDistinciones">Premios y/o
									distinciones</label> <input type="text" class="form-control"
									placeholder="Premios y/o distinciones"
									id="premios_distinciones" path="premios_distinciones"
									name="premios_distinciones">
							</div>

							<!-- OTROS ANTECEDENTES -->

							<div class="form-group">
								<h3>Otros Antecedentes</h3>
							</div>

							<!--Dato Acad�mico -->
							<div class="form-group">
								<label for="inputDatoAcademico">Dato Acad�mico</label> <input
									type="text" class="form-control" placeholder="Dato Acad�mico"
									id="dato_academico" path="dato_academico" name="dato_academico">
							</div>

							

							<button type="submit" class="btn btn-primary" name="action"
								value="enviar">Enviar</button>

						</form:form>

					</c:when>

					<c:otherwise>

						<form:form id="registration-form" class="form-horizontal"
							method="post"
							action="${pageContext.request.contextPath}/otrosantecedentesEditar"
							modelAttribute="produccion">

							<!-- -DNI -->

							<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">


							<!-- BOTON EDITAR -->
							<div class="form-group">
								<div class="row">
									<div class="col-md-8">
		
										<h3>Participaci�n u organizaci�n de eventos CyT</h3>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-3">
										<button type="submit" class="btn btn-default" name="action"
											value="editar" enabled>Editar</button>
									</div>
								</div>
							</div>

							<!-- Participaci�n u organizaci�n de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUEventos">Participaci�n u organizaci�n de eventos CyT: </label>
								<c:out value="${otrosAntecedentes.participacion_organizacion_eventos}" />
							</div>

							<!-- Membres�as, redes y/o programas de cooperaci�n -->

							<div class="form-group">
								<h3>Membres�as, redes y/o programas de cooperaci�n</h3>
							</div>

							<!-- Membres�as n asocianiones C-T y/o profesionales -->
							<div class="form-group">
								<label for="inputMembres�asEnAsociacionesCT">Membres�as
									en asocianiones C-T y/o profesionales: </label>
								<c:out value="${otrosAntecedentes.membresias_asociaciones_ct}" />
							</div>

							<!-- Participaci�n en redes tem�ticas o institucionales -->
							<div class="form-group">
								<label for="inputParticipacionEnRedesTematicas">Participaci�n
									en redes tem�ticas o institucionales: </label>
								<c:out
									value="${otrosAntecedentes.participacion_redes_tematicas}" />
							</div>

							<!-- Coordinaci�n de proyectos de cooperaci�n acad�mica o  C-T -->
							<div class="form-group">
								<label for="inputCoordinacionDeProyectosCooperacion">Coordinaci�n
									de proyectos de cooperaci�n acad�mica o C-T: </label>
								<c:out
									value="${otrosAntecedentes.coordinacion_proyectos_cooperacion}" />
							</div>

							<!-- PREMIOS Y/O DISTINCIONES -->

							<div class="form-group">
								<h3>Premios y/o distinciones</h3>
							</div>
							<!-- Premios y/o distinciones -->
							<div class="form-group">
								<label for="inputPremiosDistinciones">Premios y/o
									distinciones: </label>
								<c:out value="${otrosAntecedentes.premios_distinciones}" />
							</div>

							<!-- OTROS ANTECEDENTES -->

							<div class="form-group">
								<h3>Otros Antecedentes</h3>
							</div>

							<!--Dato Acad�mico -->
							<div class="form-group">
								<label for="inputDatoAcademico">Dato Acad�mico: </label>
								<c:out value="${otrosAntecedentes.dato_academico}" />
							</div>

				

						</form:form>
					</c:otherwise>

				</c:choose>


				
			</div>
			<!--container-->
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>