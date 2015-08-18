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
				
							<nav class="responsive navbar navbar-default">
								<div class="collapse navbar-collapse"
									id="bs-example-navbar-collapse-1">
									<ul class="nav navbar-nav">
										<h1><font color="white">Curriculum Vitae - Administrador</font></h1>
									</ul>
								</div>
							</nav>

				<!-- BOTON EDITAR -->
				<div class="form-group">
					<div class="row">
						<div class="col-md-8">
							<h3>Datos Personales</h3>
						</div>
						<div class="col-md-1"></div>
						<div class="col-md-3"></div>
					</div>
				</div>

				<div class="container">
					<div class="row-fluid">
						<div class="pull-left">
							<!-- -DNI -->
							<div class="form-group">
								<label for="inputName">DNI:</label>
								<c:out value="${datosPersonales.dni}" />
								<input type="hidden" id="dni" value="${datosPersonales.dni}"
									path="dni" name="dni">
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
								<fmt:formatDate pattern="dd/MM/yyyy"
									value="${datosPersonales.fecha_nac}" />
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


							<h3>Antecedentes</h3>


							<!-- Becarios -->
							<div class="form-group">
								<label for="inputBecarios">Becarios: </label>
								<c:out value="${antecedentes.becario}" />
							</div>

							<!-- Tesistas doctorado-->
							<div class="form-group">
								<label for="inputTesistaDoctorado">Tesista Doctoral:</label>
								<c:out value="${antecedentes.tesista_doctoral}" />
							</div>


							<!-- Tesistas maestria -->
							<div class="form-group">
								<label for="inputTesistaMaestria">Tesista Maestría:</label>
								<c:out value="${antecedentes.tesista_maestria}" />
							</div>

							<!-- Tesistas grado -->
							<div class="form-group">
								<label for="inputTesistaMaestria">Tesista Grado:</label>
								<c:out value="${antecedentes.tesista_grado}" />
							</div>

							<!-- Investigadores -->
							<div class="form-group">
								<label for="inputInvestigadores">Investigadores:</label>
								<c:out value="${antecedentes.investigadores}" />
							</div>

							<!-- Pasantes de I+D y/o formación académica -->
							<div class="form-group">
								<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
									de I+D y/o formación académica:</label>
								<c:out value="${antecedentes.pasantes_id_y_facademica}" />
							</div>

							<!-- Personal de apoyo a la I+D -->
							<div class="form-group">
								<label for="inputPersonalDeApoyoID">Personal de apoyo a
									la I+D :</label>
								<c:out value="${antecedentes.personal_apoyo_id}" />
							</div>


							<!-- FINANCIAMIENTO -->

							<div class="form-group">
								<h3>Financiamiento CyT</h3>
							</div>

							<!-- Financiamiento cientifico y tecnologico -->
							<div class="form-group">
								<label for="inputFinanciamientoCientificoTecnologico">inanciamiento
									cientifico y tecnológico: </label>
								<c:out
									value="${antecedentes.financiamiento_cientifico_tecnologico}" />
							</div>


							<!--EXTENSION -->

							<div class="form-group">
								<h3>Extensión</h3>
							</div>

							<!-- Actividades de divulgación CyT -->
							<div class="form-group">
								<label for="inputActividadesDeDivulgacion">Actividades
									de divulgación CyT: </label>
								<c:out value="${antecedentes.actividades_divulgacion}" />
							</div>


							<!-- Extension rural o industrial -->
							<div class="form-group">
								<label for="inputExtensionRuralIndustrial">Extensión
									rural o industrial: </label>
								<c:out value="${antecedentes.extension_rural_industrial}" />
							</div>


							<!-- Prestación de servicios sociales y/o comunitarios -->
							<div class="form-group">
								<label for="inputPrestacionServiciosSocialesComunitarios">EPrestación
									de sericios sociales y/o comunitarios: </label>
								<c:out value="${antecedentes.prestacion_servicios_sociales}" />
							</div>


							<!-- Producción y/o divulgación artística o cultural -->
							<div class="form-group">
								<label for="inputProduccionDivulgacionArtisticaCultural">Producción
									y/o divulgación artística o cultural: </label>
								<c:out value="${antecedentes.produccion_divulgacion_artistica}" />
							</div>


							<!-- Otro tipo de actividad de extensión -->
							<div class="form-group">
								<label for="inputOtroTipoActividadExtension">Otro tipo
									de actividad de extensión: </label>
								<c:out value="${antecedentes.otro_tipo_actividad}" />
							</div>


							<!--EVALUACION -->
							<div class="form-group">
								<h3>Evaluación</h3>
							</div>

							<!-- Evaluación de personal CyT Y jurado de tesis y/o premios -->
							<div class="form-group">
								<label for="inputEvaluacionDePersonal">Evaluación de
									personal CyT Y jurado de tesis y/o premios: </label>
								<c:out value="${antecedentes.evaluacion_personal}" />
							</div>


							<!-- Evaluación de programas/proyectos de I+D y/o extensión -->
							<div class="form-group">
								<label for="inputEvaluacionProgramas">Evaluación de
									programas/proyectos de I+D y/o extensión: </label>
								<c:out value="${antecedentes.evaluacion_programas}" />
							</div>


							<!-- Evaluacion institucional -->
							<div class="form-group">
								<label for="inputEvaluacionInstitucional">Evaluacion
									institucional: </label>
								<c:out value="${antecedentes.evaluacion_institucional}" />
							</div>

							<!-- Otro tipo de evaluación -->
							<div class="form-group">
								<label for="inputOtroTipoEvaluacio">Otro tipo de
									evaluación: </label>
								<c:out value="${antecedentes.otro_tipo_evaluacion}" />
							</div>

							<!--  BECAS -->

							<div class="form-group">
								<h3>Becas</h3>
							</div>

							<!-- Becas -->
							<div class="form-group">
								<label for="inputBecas">Becas: </label>
								<c:out value="${antecedentes.becas}" />
							</div>

							<!-- OTRAS ACTIVIDADES -->

							<div class="form-group">
								<h3>Otras Actividades CyT</h3>
							</div>

							<!-- Estancias y pasantías -->
							<div class="form-group">
								<label for="inputEstanciasPasantias">Estancias y
									pasantías: </label>
								<c:out value="${antecedentes.estancias_pasantias}" />
							</div>

							<!-- Operación y mantenimiento de sistemas de alta complejidad -->
							<div class="form-group">
								<label for="inputOperacionyMantenimiento">Operación y
									mantenimiento de sistemas de alta complejidad: </label>
								<c:out value="${antecedentes.operacion_mantenimiento}" />
							</div>

							<!-- Producción -->
							<div class="form-group">
								<label for="inputProduccion">Producción: </label>
								<c:out value="${antecedentes.produccion}" />
							</div>

							<!-- Normalización -->
							<div class="form-group">
								<label for="inputNormalizacion">Normalización: </label>
								<c:out value="${antecedentes.normalizacion}" />
							</div>

							<!-- Ejercicio de la profesión en el ámbito no académico -->
							<div class="form-group">
								<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
									de la profesión en el ámbito no académico: </label>
								<c:out
									value="${antecedentes.ejercicio_profesion_ambito_no_academico}" />
							</div>

							<!-- Otra actividad CyT -->
							<div class="form-group">
								<label for="inputOtraActividad">Otra actividad CyT: </label>
								<c:out value="${antecedentes.otra_actividad_cyt}" />
							</div>

							<h3>Docencia</h3>

							<!-- DOCENCIA -->

							<!-- nivel superior universitario y/o posgrado -->
							<div class="form-group">
								<label for="inputNivelSuperiorUniversitarioyPosgrado">Nivel
									superior universitario y/o posgrado: </label>
								<c:out value="${cargos.nivel_superior_universitario}" />
							</div>
							<!-- nivel terciario no universitario -->
							<div class="form-group">
								<label for="inputNivelTerciarioNoUniversitario">Nivel
									terciario no universitario: </label>
								<c:out value="${cargos.nivel_terciario_no_universitario}" />
							</div>
							<!-- Nivel basico y/o medio -->
							<div class="form-group">
								<label for="inputNivelBasicoyMedio">Nivel basico y/o
									medio: </label>
								<c:out value="${cargos.nivel_basico}" />
							</div>
							<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->
							<div class="form-group">
								<label for="inputCursosPosgradoyCapacitacionesExtracurriculares">Cursos
									de posgrado y/o capacitaciones extracurriculares: </label>
								<c:out value="${cargos.cursos_posgrado_y_capacitaciones}" />
							</div>

							<!-- CARGOS I+D -->

							<div class="form-group">
								<h3>Cargos I+D</h3>
							</div>
							<!-- cargos en organismos científico-tecnológicos -->
							<div class="form-group">
								<label for="inputCargosEnOrganismosCT">Cargos en
									organismos científico-tecnológicos: </label>
								<c:out value="${cargos.cargos_organismos_ct}" />
							</div>

							<!-- Categorización del programa de incentivos -->
							<div class="form-group">
								<label for="inputCategorizacionProgramaIncentivos">Categorización
									del programa de incentivos: </label>
								<c:out value="${cargos.categorizacion_programa_incentivos}" />
							</div>
							<!-- Cargos I+D en otro tipo de institucines -->
							<div class="form-group">
								<label for="inputCargosIDenOtroTipodeInstituciones">Cargos
									I+D en otro tipo de institucines: </label>
								<c:out value="${cargos.cargos_id_otro}" />
							</div>

							<!-- CARGOS EN GESTION INSTITUCIONAL -->

							<div class="form-group">
								<h3>Cargos en Gestion Institucional</h3>
							</div>
							<!-- cargos en gestion institucional -->
							<div class="form-group">
								<label for="inputCargosenGestionInstitucional">Cargos en
									gestion institucional: </label>
								<c:out value="${cargos.cargos_gestion_institucional}" />
							</div>

							<!-- OTROS CARGOS -->

							<div class="form-group">
								<h3>Otros Cargos</h3>
							</div>
							<!-- Otros Cargos -->
							<div class="form-group">
								<label for="inputOtrosCargos">Otros Cargos: </label>
								<c:out value="${cargos.otros_cargos}" />
							</div>
							<h3>Formación Académica</h3>

							<!-- Nivel Universitario de posgrado -->
							<div class="form-group">
								<label for="inputName">Nivel Universitario de Posgrado:</label>
								<c:out value="${formacion.nivel_universitario_posgrado}" />
							</div>


							<div class="form-group">
								<label for="inputName">Nivel Universitario de
									Posgrado/especializacion:</label>
								<c:out
									value="${formacion.nivel_universitario_posgrado_especializacion}" />
							</div>

							<div class="form-group">
								<label for="inputName">Nivel Universitario de Grado:</label>
								<c:out value="${formacion.nivel_universitario_grado}" />
							</div>


							<div class="form-group">
								<label for="inputName">Nivel Terciario no
									Univeresitario:</label>
								<c:out value="${formacion.nivel_terciario_no_universitario}" />
							</div>



							<!-- FORMACION COMPLEMENTARIA -->

							<div class="form-group">
								<h3>Formación Complementaria</h3>
							</div>
							<!-- Especialidad certificada por org de salud -->

							<div class="form-group">
								<label for="inputName">Especialidad certificada por
									organismo de salud:</label>
								<c:out value="${formacion.especialidad_certificada}" />
							</div>


							<!-- Posdoctorado -->

							<div class="form-group">
								<label for="inputName">Posdoctorado:</label>
								<c:out value="${formacion.posdoctorado}" />
							</div>

							<!-- Cursos de posgrado y/o capacitaciones extracurriculares -->

							<div class="form-group">
								<label for="inputName">Cursos de posgrado y/o
									capacitaciones extracurriculares:</label>
								<c:out value="${formacion.cursos_posgrado_y_capacitaciones}" />
							</div>


							<!-- Idiomas -->
							<div class="form-group">
								<label for="inputName">Idiomas:</label>
								<c:out value="${formacion.idiomas}" />
							</div>
							<h3>Otros Antecedentes</h3>
							<!-- Participación u organización de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUEventos">Participación u
									organización de eventos CyT: </label>
								<c:out
									value="${otrosAntecedentes.participacion_organizacion_eventos}" />
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
							<h3>Producción científica</h3>
							<!-- PRODUCCION -->

							<!-- Artículos publicados en revistas con/sin referato -->
							<div class="form-group">
								<label for="artRef">Artículos publicados en revistas con
									referato: </label>
								<c:out value="${produccion.articulos_revistas_con_referato}" />
							</div>

							<div class="form-group">
								<label for="artSRef">Artículos publicados en revistas
									sin referato: </label>
								<c:out value="${produccion.articulos_revistas_sin_referato}" />
							</div>

							<!-- Libros -->
							<div class="form-group">
								<label for="libros">Libros: </label>
								<c:out value="${produccion.libros}" />
							</div>

							<!-- Partes de Libros -->
							<div class="form-group">
								<label for="partesLibros">Partes de Libros: </label>
								<c:out value="${produccion.partes_libros}" />
							</div>

							<!-- Trabajos en eventos C-T publicados -->
							<div class="form-group">
								<label for="Estado">Trabajos en eventos C-T publicados:
								</label>
								<c:out value="${produccion.trabajos_eventos_ct_publicados}" />
							</div>

							<!-- Trabajos en eventos C-T no publicados -->
							<div class="form-group">
								<label for="Trab">Trabajos en eventos C-T no publicados:
								</label>
								<c:out value="${produccion.trabajos_eventos_ct_no_publicados}" />
							</div>

							<!-- Demás producciones C-T -->
							<div class="form-group">
								<label for="Estado">Demás producciones C-T: </label>
								<c:out value="${produccion.demas_producciones_ct}" />
							</div>


							<!-- PRODUCCION TECNOLOGICA-->

							<div class="form-group">
								<h3>Producción Tecnológica</h3>
							</div>

							<!-- Con titulo de propiedad intelectual -->
							<div class="form-group">
								<label for="Estado">Con titulo de propiedad intelectual:
								</label>
								<c:out value="${produccion.con_titulo_prop_int}" />
							</div>

							<!-- sin titulo de propiedad intelectual -->
							<div class="form-group">
								<label for="Estado">Sin titulo de propiedad intelectual:
								</label>
								<c:out value="${produccion.sin_titulo_prop_int}" />
							</div>

							<!-- servicio científico-tecnológico -->
							<div class="form-group">
								<label for="Estado">Servicio científico-tecnológico: </label>
								<c:out value="${produccion.servicio_ct}" />
							</div>

							<!-- Informe técnico -->
							<div class="form-group">
								<label for="Estado">Informe técnico: </label>
								<c:out value="${produccion.informe_tecnico}" />
							</div>

							<!-- PRODUCCION ARTÍSICA-->

							<div class="form-group">
								<h3>Producción Artística</h3>
							</div>

							<!-- Musical-sonora -->
							<div class="form-group">
								<label for="Estado">Musical-sonora: </label>
								<c:out value="${produccion.musical_sonora}" />
							</div>

							<!-- Visual -->
							<div class="form-group">
								<label for="Estado">Visual: </label>
								<c:out value="${produccion.visual}" />
							</div>

							<!-- Audiovisual multimedial -->
							<div class="form-group">
								<label for="Estado">Audiovisual multimedial: </label>
								<c:out value="${produccion.audiovisual}" />
							</div>

							<!-- Corporal teatral -->
							<div class="form-group">
								<label for="Estado">Corporal teatral: </label>
								<c:out value="${produccion.corporal_teatral}" />
							</div>

							<!-- Genero literario narrativo -->
							<div class="form-group">
								<label for="Estado">Genero literario narrativo: </label>
								<c:out value="${produccion.genero_literario_narrativo}" />
							</div>

							<!-- Genero literario dramático, poético o ensayo -->
							<div class="form-group">
								<label for="Estado">Genero literario dramático, poético
									o ensayo: </label>
								<c:out value="${produccion.genero_literario_dramatico}" />
							</div>

							<!-- Genero literario guión -->
							<div class="form-group">
								<label for="Estado">Genero literario guión: </label>
								<c:out value="${produccion.genero_literario_guion}" />
							</div>

							<!-- otro tipo de Genero literario -->
							<div class="form-group">
								<label for="Estado">Otro tipo de Genero literario: </label>
								<c:out value="${produccion.otro_tipo}" />
							</div>

							<!-- otra producción artística -->
							<div class="form-group">
								<label for="Estado">Otra producción artística: </label>
								<c:out value="${produccion.otra_produccion}" />
							</div>


						</div>

					</div>
				</div>

			</div>
			<!--container-->
		</div>
	</div>
	<%@include file="includes/footer.jsp"%>
</body>
</html>