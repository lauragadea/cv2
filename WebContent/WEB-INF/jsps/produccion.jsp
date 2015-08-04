<%@include file="includes/header.jsp" %>
<body>
	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/produccionEditar"
					modelAttribute="produccion">

					<div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${dni}" readonly>
						</label>
					</div>
					

					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		                       <h2>PRODUCCION</h2>
		                       <h3>Producci�n cient�fica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar" enabled >Editar</button>	
		                   	</div>
		                </div>
					</div>

        			<!-- PRODUCCION -->

                   <!-- Art�culos publicados en revistas con/sin referato --> 
                   <div class="form-group">
                       <label for="artRef">Art�culos publicados en revistas con referato: </label>
                       <c:out value="${articulos_revistas_con_referato}" />
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Art�culos publicados en revistas sin referato: </label>
                       <c:out value="${articulos_revistas_sin_referato}" />
                   </div>
                   
                   <!-- Libros --> 
                   <div class="form-group">
                       <label for="libros">Libros: </label>
                      <c:out value="${libros}" />
                   </div>
                   
                   <!-- Partes de Libros --> 
                   <div class="form-group">
                       <label for="partesLibros">Partes de Libros: </label>
                      <c:out value="${partes_libros}" />
                   </div>
                   
                   <!-- Trabajos en eventos C-T publicados --> 
                   <div class="form-group">
                       <label for="Estado">Trabajos en eventos C-T publicados: </label>
                      <c:out value="${trabajos_eventos_ct_publicados}" />
                   </div>
                   
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados: </label>
                       <c:out value="${trabajos_eventos_ct_no_publicados}" />
                   </div>
                   
                   <!-- Dem�s producciones C-T --> 
                   <div class="form-group">
                       	<label for="Estado">Dem�s producciones C-T: </label>
                   		<c:out value="${demas_producciones_ct}" />
                   </div>
                   

                   <!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producci�n Tecnol�gica</h3>
                   </div> 
                   
                   <!-- Con titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Con titulo de propiedad intelectual: </label>
                       <c:out value="${con_titulo_prop_int}" />
                   </div>
                   
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual: </label>
                       <c:out value="${sin_titulo_prop_int}" />
                   </div>
                   
                   <!-- servicio cient�fico-tecnol�gico --> 
                   <div class="form-group">
                       <label for="Estado">Servicio cient�fico-tecnol�gico: </label>
                       <c:out value="${servicio_ct}" />
                   </div>
                   
                   <!-- Informe t�cnico --> 
                   <div class="form-group">
                       <label for="Estado">Informe t�cnico: </label>
                       <c:out value="${informe_tecnico}" />
                   </div>
                   
                   <!-- PRODUCCION ART�SICA-->

                   <div class="form-group">
                       <h3>Producci�n Art�stica</h3>
                   </div>     
                   
                   <!-- Musical-sonora --> 
                   <div class="form-group">
                       <label for="Estado">Musical-sonora: </label>
                       <c:out value="${musical_sonora}" />
                   </div>
                   
                   <!-- Visual --> 
                   <div class="form-group">
                       <label for="Estado">Visual: </label>
                       <c:out value="${visual}" />
                   </div>
                   
                   <!-- Audiovisual multimedial --> 
                   <div class="form-group">
                       <label for="Estado">Audiovisual multimedial: </label>
                       <c:out value="${audiovisual}" />
                   </div>
                   
                   <!-- Corporal teatral --> 
                   <div class="form-group">
                       <label for="Estado">Corporal teatral: </label>
                      <c:out value="${corporal_teatral}" />
                   </div>
                   
                   <!-- Genero literario narrativo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario narrativo: </label>
                       <c:out value="${genero_literario_narrativo}" />
                   </div>
                   
                   <!-- Genero literario dram�tico, po�tico o ensayo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario dram�tico, po�tico o ensayo: </label>
                       <c:out value="${genero_literario_dramatico}" />
                   </div>
                   
                   <!-- Genero literario gui�n --> 
                   <div class="form-group">
                      <label for="Estado">Genero literario gui�n: </label>
                      <c:out value="${genero_literario_guion}" />
                   </div>
                   
                   <!-- otro tipo de Genero literario --> 
                   <div class="form-group">
                       <label for="Estado">Otro tipo de Genero literario: </label>
                       <c:out value="${otro_tipo}" />
                   </div>
                   
                   <!-- otra producci�n art�stica --> 
                   <div class="form-group">
                       <label for="Estado">Otra producci�n art�stica: </label>
                       <c:out value="${otra_produccion}" />
                   </div>

				</form:form>
			</div>	<!--container-->
		</div>
	</div>

<%@include file="includes/footer.jsp" %>
</body>
</html>