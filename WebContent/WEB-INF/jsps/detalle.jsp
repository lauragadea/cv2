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
								<label for="inputName">Pa�s:</label>
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
								<label for="inputTesistaMaestria">Tesista Maestr�a:</label>
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

							<!-- Pasantes de I+D y/o formaci�n acad�mica -->
							<div class="form-group">
								<label for="inputPasantesDeIDFormacionAcademcia">Pasantes
									de I+D y/o formaci�n acad�mica:</label>
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
									cientifico y tecnol�gico: </label>
								<c:out
									value="${antecedentes.financiamiento_cientifico_tecnologico}" />
							</div>


							<!--EXTENSION -->

							<div class="form-group">
								<h3>Extensi�n</h3>
							</div>

							<!-- Actividades de divulgaci�n CyT -->
							<div class="form-group">
								<label for="inputActividadesDeDivulgacion">Actividades
									de divulgaci�n CyT: </label>
								<c:out value="${antecedentes.actividades_divulgacion}" />
							</div>


							<!-- Extension rural o industrial -->
							<div class="form-group">
								<label for="inputExtensionRuralIndustrial">Extensi�n
									rural o industrial: </label>
								<c:out value="${antecedentes.extension_rural_industrial}" />
							</div>


							<!-- Prestaci�n de servicios sociales y/o comunitarios -->
							<div class="form-group">
								<label for="inputPrestacionServiciosSocialesComunitarios">EPrestaci�n
									de sericios sociales y/o comunitarios: </label>
								<c:out value="${antecedentes.prestacion_servicios_sociales}" />
							</div>


							<!-- Producci�n y/o divulgaci�n art�stica o cultural -->
							<div class="form-group">
								<label for="inputProduccionDivulgacionArtisticaCultural">Producci�n
									y/o divulgaci�n art�stica o cultural: </label>
								<c:out value="${antecedentes.produccion_divulgacion_artistica}" />
							</div>


							<!-- Otro tipo de actividad de extensi�n -->
							<div class="form-group">
								<label for="inputOtroTipoActividadExtension">Otro tipo
									de actividad de extensi�n: </label>
								<c:out value="${antecedentes.otro_tipo_actividad}" />
							</div>


							<!--EVALUACION -->
							<div class="form-group">
								<h3>Evaluaci�n</h3>
							</div>

							<!-- Evaluaci�n de personal CyT Y jurado de tesis y/o premios -->
							<div class="form-group">
								<label for="inputEvaluacionDePersonal">Evaluaci�n de
									personal CyT Y jurado de tesis y/o premios: </label>
								<c:out value="${antecedentes.evaluacion_personal}" />
							</div>


							<!-- Evaluaci�n de programas/proyectos de I+D y/o extensi�n -->
							<div class="form-group">
								<label for="inputEvaluacionProgramas">Evaluaci�n de
									programas/proyectos de I+D y/o extensi�n: </label>
								<c:out value="${antecedentes.evaluacion_programas}" />
							</div>


							<!-- Evaluacion institucional -->
							<div class="form-group">
								<label for="inputEvaluacionInstitucional">Evaluacion
									institucional: </label>
								<c:out value="${antecedentes.evaluacion_institucional}" />
							</div>

							<!-- Otro tipo de evaluaci�n -->
							<div class="form-group">
								<label for="inputOtroTipoEvaluacio">Otro tipo de
									evaluaci�n: </label>
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

							<!-- Estancias y pasant�as -->
							<div class="form-group">
								<label for="inputEstanciasPasantias">Estancias y
									pasant�as: </label>
								<c:out value="${antecedentes.estancias_pasantias}" />
							</div>

							<!-- Operaci�n y mantenimiento de sistemas de alta complejidad -->
							<div class="form-group">
								<label for="inputOperacionyMantenimiento">Operaci�n y
									mantenimiento de sistemas de alta complejidad: </label>
								<c:out value="${antecedentes.operacion_mantenimiento}" />
							</div>

							<!-- Producci�n -->
							<div class="form-group">
								<label for="inputProduccion">Producci�n: </label>
								<c:out value="${antecedentes.produccion}" />
							</div>

							<!-- Normalizaci�n -->
							<div class="form-group">
								<label for="inputNormalizacion">Normalizaci�n: </label>
								<c:out value="${antecedentes.normalizacion}" />
							</div>

							<!-- Ejercicio de la profesi�n en el �mbito no acad�mico -->
							<div class="form-group">
								<label for="inputEjercicioProfesionAmbitoNoAcademico">Ejercicio
									de la profesi�n en el �mbito no acad�mico: </label>
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
							<!-- cargos en organismos cient�fico-tecnol�gicos -->
							<div class="form-group">
								<label for="inputCargosEnOrganismosCT">Cargos en
									organismos cient�fico-tecnol�gicos: </label>
								<c:out value="${cargos.cargos_organismos_ct}" />
							</div>

							<!-- Categorizaci�n del programa de incentivos -->
							<div class="form-group">
								<label for="inputCategorizacionProgramaIncentivos">Categorizaci�n
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
							<h3>Formaci�n Acad�mica</h3>

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
								<h3>Formaci�n Complementaria</h3>
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
							<!-- Participaci�n u organizaci�n de eventos CyT -->
							<div class="form-group">
								<label for="inputParticipacionUEventos">Participaci�n u
									organizaci�n de eventos CyT: </label>
								<c:out
									value="${otrosAntecedentes.participacion_organizacion_eventos}" />
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
							<h3>Producci�n cient�fica</h3>
							<!-- PRODUCCION -->

							<!-- Art�culos publicados en revistas con/sin referato -->
							<div class="form-group">
								<label for="artRef">Art�culos publicados en revistas con
									referato: </label>
								<c:out value="${produccion.articulos_revistas_con_referato}" />
							</div>

							<div class="form-group">
								<label for="artSRef">Art�culos publicados en revistas
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

							<!-- Dem�s producciones C-T -->
							<div class="form-group">
								<label for="Estado">Dem�s producciones C-T: </label>
								<c:out value="${produccion.demas_producciones_ct}" />
							</div>


							<!-- PRODUCCION TECNOLOGICA-->

							<div class="form-group">
								<h3>Producci�n Tecnol�gica</h3>
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

							<!-- servicio cient�fico-tecnol�gico -->
							<div class="form-group">
								<label for="Estado">Servicio cient�fico-tecnol�gico: </label>
								<c:out value="${produccion.servicio_ct}" />
							</div>

							<!-- Informe t�cnico -->
							<div class="form-group">
								<label for="Estado">Informe t�cnico: </label>
								<c:out value="${produccion.informe_tecnico}" />
							</div>

							<!-- PRODUCCION ART�SICA-->

							<div class="form-group">
								<h3>Producci�n Art�stica</h3>
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

							<!-- Genero literario dram�tico, po�tico o ensayo -->
							<div class="form-group">
								<label for="Estado">Genero literario dram�tico, po�tico
									o ensayo: </label>
								<c:out value="${produccion.genero_literario_dramatico}" />
							</div>

							<!-- Genero literario gui�n -->
							<div class="form-group">
								<label for="Estado">Genero literario gui�n: </label>
								<c:out value="${produccion.genero_literario_guion}" />
							</div>

							<!-- otro tipo de Genero literario -->
							<div class="form-group">
								<label for="Estado">Otro tipo de Genero literario: </label>
								<c:out value="${produccion.otro_tipo}" />
							</div>

							<!-- otra producci�n art�stica -->
							<div class="form-group">
								<label for="Estado">Otra producci�n art�stica: </label>
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