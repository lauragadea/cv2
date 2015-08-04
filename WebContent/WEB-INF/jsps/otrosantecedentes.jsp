<%@include file="includes/header.jsp" %>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/otrosantecedentesEditar"
					modelAttribute="produccion">

					<div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${dni}" readonly></label></div>
					

	
					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
			                     <h2>OTROS ANTECEDENTES</h2>
			                     <h3>Participación u organización de eventos CyT</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default disabled" name="action" value="editar">Editar</button>	
		                   	</div>
		                </div>
					</div>

                   <!-- Participación u organización de eventos CyT -->
       				    <div class="form-group">
       				       <label for="inputEstanciasyPasantias">Estancias y pasantías: </label>
       				       <c:out value="${estancias_pasantias}"/>
       				    </div> 

                   <!-- Membresías, redes y/o programas de cooperación -->

                   <div class="form-group">
                     <h3>Membresías, redes y/o programas de cooperación</h3>
                   </div>   
                             				
                   <!-- Membresías n asocianiones C-T y/o profesionales -->                
                   <div class="form-group">
                       <label for="inputMembresíasEnAsociacionesCT">Membresías en asocianiones C-T y/o profesionales: </label>
                       <c:out value="${membresias_asociaciones_ct}"/>
                   </div>
                   
                   <!-- Participación en redes temáticas o institucionales --> 
                   <div class="form-group">
                       <label for="inputParticipacionEnRedesTematicas">Participación en redes temáticas o institucionales: </label>
                       <c:out value="${participacion_redes_tematicas}"/>
                   </div>
                   
                   <!-- Coordinación de proyectos de cooperación académica o  C-T --> 
                   <div class="form-group">
                       <label for="inputCoordinacionDeProyectosCooperacion">Coordinación de proyectos de cooperación académica o  C-T: </label>
                       <c:out value="${coordinacion_proyectos_cooperacion}"/>
                   </div>

                   <!-- PREMIOS Y/O DISTINCIONES -->

                   <div class="form-group">
                       <h3>Premios y/o distinciones</h3>
                   </div>   
                   <!-- Premios y/o distinciones --> 
                   <div class="form-group">
                       <label for="inputPremiosDistinciones">Premios y/o distinciones: </label>
                       <c:out value="${premios_distinciones}"/>
                   </div>

                     <!-- OTROS ANTECEDENTES --> 

                   <div class="form-group">
                       <h3>Otros Antecedentes</h3>
                   </div> 
                   
                   <!--Dato Académico --> 
                   <div class="form-group">
                       <label for="inputDatoAcademico">Dato Académico: </label>
                       <c:out value="${dato_academico}"/>
                   </div>
                   
                   <!-- Curriculum Vitae --> 
                   <div class="form-group">
                       <label for="inputCurriculVitae">Curriculum Vitae: </label>
                        <c:out value="${curriculum_vitae}"/>
                   </div>

                  	<button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>
        			
				</form:form>
			</div>	<!--container-->
		</div>
	</div>

	<%@include file="includes/footer.jsp" %>

</body>

</html>