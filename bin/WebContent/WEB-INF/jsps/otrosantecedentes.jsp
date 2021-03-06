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
							<!-- BOTON EDITAR -->
							<div class="form-group">
				     			<div class="row">
				     				<div class="col-md-8">
				     					 <h3>Otros Antecedentes</h3>
				     				</div>
				                   	<div class="col-md-1"></div>
				                   	<div class="col-md-3">
				                  	
				                   	</div>
				                </div>
							</div>

							<!-- Participación u organización de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUOrganizacion">Participación u organización de eventos CyT</label> <textarea wrap="hard" class="form-control"
									placeholder="Participación u organización de eventos CyT" id="participacion_organizacion_eventos"
									path="participacion_organizacion_eventos" name="participacion_organizacion_eventos"></textarea>
							</div>

							<!-- Membresías, redes y/o programas de cooperación -->

							<div class="form-group">
								<h3>Membresías, redes y/o programas de cooperación</h3>
							</div>

							<!-- Membresías n asocianiones C-T y/o profesionales -->
							<div class="form-group">
								<label for="inputMembresíasEnAsociacionesCT">Membresías
									en asocianiones C-T y/o profesionales</label> <textarea wrap="hard"
									class="form-control"
									placeholder="Membresías en asocianiones C-T y/o profesionales"
									id="membresias_asociaciones_ct"
									path="membresias_asociaciones_ct"
									name="membresias_asociaciones_ct">></textarea>
							</div>

							<!-- Participación en redes temáticas o institucionales -->
							<div class="form-group">
								<label for="inputParticipacionEnRedesTematicas">Participación
									en redes temáticas o institucionales</label> <textarea wrap="hard"
									class="form-control"
									placeholder="Participación en redes temáticas o institucionales"
									id="participacion_redes_tematicas"
									path="participacion_redes_tematicas"
									name="participacion_redes_tematicas"></textarea>
							</div>

							<!-- Coordinación de proyectos de cooperación académica o  C-T -->
							<div class="form-group">
								<label for="inputCoordinacionDeProyectosCooperacion">Coordinación
									de proyectos de cooperación académica o C-T</label> <textarea wrap="hard"
									class="form-control"
									placeholder="Coordinación de proyectos de cooperación académica o  C-T"
									id="coordinacion_proyectos_cooperacion"
									path="coordinacion_proyectos_cooperacion"
									name="coordinacion_proyectos_cooperacion"></textarea>
							</div>

							<!-- PREMIOS Y/O DISTINCIONES -->

							<div class="form-group">
								<h3>Premios y/o distinciones</h3>
							</div>
							<!-- Premios y/o distinciones -->
							<div class="form-group">
								<label for="inputPremiosDistinciones">Premios y/o
									distinciones</label> <textarea wrap="hard" class="form-control"
									placeholder="Premios y/o distinciones"
									id="premios_distinciones" path="premios_distinciones"
									name="premios_distinciones"></textarea>
							</div>

							<!-- OTROS ANTECEDENTES -->

							<div class="form-group">
								<h3>Otros Antecedentes</h3>
							</div>

							<!--Dato Académico -->
							<div class="form-group">
								<label for="inputDatoAcademico">Dato Académico</label> <textarea wrap="hard"						type="text" class="form-control" placeholder="Dato Académico"
									id="dato_academico" path="dato_academico" name="dato_academico"></textarea>
							</div>

							

							<button type="submit" class="btn btn-primary" name="action"
								value="enviar">Guardar</button>

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
		
										<h3>Participación u organización de eventos CyT</h3>
									</div>
									<div class="col-md-1"></div>
									<div class="col-md-3">
										<button type="submit" class="btn btn-default" name="action"
											value="editar" enabled>Editar</button>
									</div>
								</div>
							</div>

							<!-- Participación u organización de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUEventos">Participación u organización de eventos CyT: </label>
								<c:out value="${otrosAntecedentes.participacion_organizacion_eventos}" />
							</div>

							<!-- Membresías, redes y/o programas de cooperación -->

							<div class="form-group">
								<h3>Membresías, redes y/o programas de cooperación</h3>
							</div>

							<!-- Membresías n asocianiones C-T y/o profesionales -->
							<div class="form-group">
								<label for="inputMembresíasEnAsociacionesCT">Membresías
									en asocianiones C-T y/o profesionales: </label>
								<c:out value="${otrosAntecedentes.membresias_asociaciones_ct}" />
							</div>

							<!-- Participación en redes temáticas o institucionales -->
							<div class="form-group">
								<label for="inputParticipacionEnRedesTematicas">Participación
									en redes temáticas o institucionales: </label>
								<c:out
									value="${otrosAntecedentes.participacion_redes_tematicas}" />
							</div>

							<!-- Coordinación de proyectos de cooperación académica o  C-T -->
							<div class="form-group">
								<label for="inputCoordinacionDeProyectosCooperacion">Coordinación
									de proyectos de cooperación académica o C-T: </label>
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

							<!--Dato Académico -->
							<div class="form-group">
								<label for="inputDatoAcademico">Dato Académico: </label>
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