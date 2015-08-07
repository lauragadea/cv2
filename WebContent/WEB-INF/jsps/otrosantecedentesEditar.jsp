<%@include file="includes/header.jsp" %>

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
				<%@include file="includes/menu.jsp" %>
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificarOtrosAntecedentes"
					modelAttribute="produccion">

				<input type="hidden" id="dni"value="${dni}" path="dni" name="dni">
						
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">

			                     <h3>Participación u organización de eventos CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3"></div>
		                </div>
					</div>

                   <!-- Participación u organización de eventos CyT -->
 				    <div class="form-group">
 				        <label for="inputEstanciasyPasantias">Estancias y pasantías</label>
 				        <input type="text" class="form-control"  placeholder="Estancias y pasantías" id="estancias_pasantias" 
 				        path="estancias_pasantias" name="estancias_pasantias" value="${otrosAntecedentes.estancias_pasantias}">
 				    </div> 

                   <!-- Membresías, redes y/o programas de cooperación -->

                   <div class="form-group">
                     <h3>Membresías, redes y/o programas de cooperación</h3>
                   </div>   
                             				
                   <!-- Membresías n asocianiones C-T y/o profesionales -->                
                   <div class="form-group">
                       <label for="inputMembresíasEnAsociacionesCT">Membresías en asocianiones C-T y/o profesionales</label>
                       <input type="text" class="form-control"  placeholder="Membresías en asocianiones C-T y/o profesionales"
                       id="membresias_asociaciones_ct" path="membresias_asociaciones_ct" name="membresias_asociaciones_ct"
                       value="${otrosAntecedentes.membresias_asociaciones_ct}">
                   </div>
                   
                   <!-- Participación en redes temáticas o institucionales --> 
                   <div class="form-group">
                       <label for="inputParticipacionEnRedesTematicas">Participación en redes temáticas o institucionales</label>
                       <input type="text" class="form-control"  placeholder="Participación en redes temáticas o institucionales"
                       id="participacion_redes_tematicas" path="participacion_redes_tematicas" name="participacion_redes_tematicas"
                       value="${otrosAntecedentes.participacion_redes_tematicas}">
                   </div>
                   
                   <!-- Coordinación de proyectos de cooperación académica o  C-T --> 
                   <div class="form-group">
                       <label for="inputCoordinacionDeProyectosCooperacion">Coordinación de proyectos de cooperación académica o  C-T</label>
                       <input type="text" class="form-control"  placeholder="Coordinación de proyectos de cooperación académica o  C-T"
                       id="coordinacion_proyectos_cooperacion" path="coordinacion_proyectos_cooperacion" name="coordinacion_proyectos_cooperacion"
                       value="${otrosAntecedentes.coordinacion_proyectos_cooperacion}">
                   </div>

                   <!-- PREMIOS Y/O DISTINCIONES -->

                   <div class="form-group">
                       <h3>Premios y/o distinciones</h3>
                   </div>   
                   <!-- Premios y/o distinciones --> 
                   <div class="form-group">
                       <label for="inputPremiosDistinciones">Premios y/o distinciones</label>
                       <input type="text" class="form-control"  placeholder="Premios y/o distinciones"
                       id="premios_distinciones" path="premios_distinciones" name="premios_distinciones"
                       value="${otrosAntecedentes.premios_distinciones}">
                   </div>

                     <!-- OTROS ANTECEDENTES --> 

                   <div class="form-group">
                       <h3>Otros Antecedentes</h3>
                   </div> 
                   
                   <!--Dato Académico --> 
                   <div class="form-group">
                       <label for="inputDatoAcademico">Dato Académico</label>
                       <input type="text" class="form-control"  placeholder="Dato Académico" id="dato_academico"
                       path="dato_academico" name="dato_academico" value="${otrosAntecedentes.dato_academico}">
                   </div>
                   
                   <!-- Curriculum Vitae --> 
                   <div class="form-group">
                       <label for="inputCurriculVitae">Curriculum Vitae</label>
                       <input type="text" class="form-control"  placeholder="Curriculum Vitae" id="curriculum_vitae"
                       path="curriculum_vitae" name="curriculum_vitae" value="${otrosAntecedentes.curriculum_vitae}">
                       (Próximamente podrá cargar su CV en formato PDF)
                   </div>

                  	<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>
        			
				</form:form>
			</div>	<!--container-->
		</div>
	</div>

	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script>
	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script>
	<script	src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/script.js"></script>

	<script>
		addEventListener('load', prettyPrint, false);
		$(document).ready(function() {
			$('pre').addClass('prettyprint linenums');
		});
	</script>

<%@include file="includes/footer.jsp" %>
</body>
</html>