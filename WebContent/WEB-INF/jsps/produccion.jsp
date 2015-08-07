<%@include file="includes/header.jsp" %>
<body>
<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<%@include file="includes/menu.jsp" %>
				
				<c:choose>
					<c:when test="${objeto == false}">
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/crearproduccion"
					modelAttribute="produccion">

<<<<<<< HEAD
					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">
=======
					<div class="form-group">
						<label for="dni">DNI
						<input type="text"
							id="dni" class="form-control" path="dni"
							name="dni" placeholder="DNI" value="${produccion.dni}" readonly></label></div>
>>>>>>> a7d6ede978e00091e272d17417aeb38fe38b240f
					

        			<!-- PRODUCCION -->
        			
        			<!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producci�n Cient�fica</h3>
                   </div>

                   <!-- Art�culos publicados en revistas con/sin referato --> 
                   <div class="form-group">
                       <label for="artRef">Art�culos publicados en revistas con referato</label>
                       <input type="text" id="articulos_revistas_con_referato" path="articulos_revistas_con_referato" name="articulos_revistas_con_referato" class="form-control"
					  placeholder="Art�culos publicados en revistas con referato">
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Art�culos publicados en revistas sin referato</label>
                       <input type="text" id="articulos_revistas_sin_referato" path="articulos_revistas_sin_referato" name="articulos_revistas_sin_referato" class="form-control"
					  placeholder="Art�culos publicados en revistas sin referato">
                   </div>
                   <!-- Libros --> 
                   <div class="form-group">
                       <label for="libros">Libros</label>
                       <input type="text" id="libros" path="libros" name="libros" class="form-control"  placeholder="Libros">
                   </div>
                   <!-- Partes de Libros --> 
                   <div class="form-group">
                       <label for="partesLibros">Partes de Libros</label>
                       <input type="text" id="partes_libros" path="partes_libros" name="partes_libros"  class="form-control"  placeholder="Partes de Libros">
                   </div>
                   <!-- Trabajos en eventos C-T publicados --> 
                   <div class="form-group">
                       <label for="Estado">Trabajos en eventos C-T publicados</label>
                       <input type="text" id="trabajos_eventos_ct_publicados" path="trabajos_eventos_ct_publicados" name="trabajos_eventos_ct_publicados" class="form-control"  placeholder="Trabajos en eventos C-T publicados">
                   </div>
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados</label>
                       <input type="text" id="trabajos_eventos_ct_no_publicados" path="trabajos_eventos_ct_no_publicados" name="trabajos_eventos_ct_no_publicados"  class="form-control"  placeholder="Trabajos en eventos C-T no publicados">
                   </div>
                   <!-- Dem�s producciones C-T --> 
                   <div class="form-group">
                       <label for="Estado">Dem�s producciones C-T</label>
                       <input type="text" id="demas_producciones_ct" path="demas_producciones_ct" name="demas_producciones_ct" class="form-control"  placeholder="Dem�s producciones C-T">
                   </div>

                   <!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producci�n Tecnol�gica</h3>
                   </div> 
                   <!-- Con titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Con titulo de propiedad intelectual</label>
                       <input type="text" id="con_titulo_prop_int" path="con_titulo_prop_int" name="con_titulo_prop_int"  class="form-control"  placeholder="Con titulo de propiedad intelectual">
                   </div>
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual</label>
                       <input type="text" id="sin_titulo_prop_int" path="sin_titulo_prop_int" name="sin_titulo_prop_int"  class="form-control"  placeholder="Sin titulo de propiedad intelectual">
                   </div>
                   <!-- servicio cient�fico-tecnol�gico --> 
                   <div class="form-group">
                       <label for="Estado">Servicio cient�fico-tecnol�gico</label>
                       <input type="text" id="servicio_ct" path="servicio_ct" name="servicio_ct"  class="form-control"  placeholder="Servicio cient�fico-tecnol�gico">
                   </div>
                   <!-- Informe t�cnico --> 
                   <div class="form-group">
                       <label for="Estado">Informe t�cnico</label>
                       <input type="text" id="informe_tecnico" path="informe_tecnico" name="informe_tecnico"  class="form-control"  placeholder="Informe t�cnico">
                   </div>
                   
                   <!-- PRODUCCION ART�SICA-->

                   <div class="form-group">
                       <h3>Producci�n Art�stica</h3>
                   </div>     
                   <!-- Musical-sonora --> 
                   <div class="form-group">
                       <label for="Estado">Musical-sonora</label>
                       <input type="text" id="musical_sonora" path="musical_sonora" name="musical_sonora"  class="form-control"  placeholder="Musical-sonora">
                   </div>
                   <!-- Visual --> 
                   <div class="form-group">
                       <label for="Estado">Visual</label>
                       <input type="text" id="visual" path="visual" name="visual" class="form-control"  placeholder="Visual">
                   </div>
                   <!-- Audiovisual multimedial --> 
                   <div class="form-group">
                       <label for="Estado">Audiovisual multimedial</label>
                       <input type="text" id="audiovisual" path="audiovisual" name="audiovisual" class="form-control"  placeholder="Audiovisual multimedial">
                   </div>
                   <!-- Corporal teatral --> 
                   <div class="form-group">
                       <label for="Estado">Corporal teatral</label>
                       <input type="text" id="corporal_teatral" path="corporal_teatral" name="corporal_teatral"  class="form-control"  placeholder="Corporal teatral">
                   </div>
                   <!-- Genero literario narrativo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario narrativo</label>
                       <input type="text" id="genero_literario_narrativo" path="genero_literario_narrativo" name="genero_literario_narrativo" class="form-control"  placeholder="Genero literario narrativo">
                   </div>
                   <!-- Genero literario dram�tico, po�tico o ensayo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario dram�tico, po�tico o ensayo</label>
                       <input type="text" id="genero_literario_dramatico" path="genero_literario_dramatico" name="genero_literario_dramatico"  class="form-control"  placeholder="Genero literario dram�tico, po�tico o ensayo">
                   </div>
                   <!-- Genero literario gui�n --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario gui�n</label>
                       <input type="text" id="genero_literario_guion" path="genero_literario_guion" name="genero_literario_guion" class="form-control"  placeholder="Genero literario gui�n">
                   </div>
                   <!-- otro tipo de Genero literario --> 
                   <div class="form-group">
                       <label for="Estado">Otro tipo de Genero literario</label>
                       <input type="text" id="otro_tipo" path="otro_tipo" name="otro_tipo"  class="form-control"  placeholder="Otro tipo de Genero literario">
                   </div>
                   <!-- otra producci�n art�stica --> 
                   <div class="form-group">
                       <label for="Estado">Otra producci�n art�stica</label>
                       <input type="text" id="otra_produccion" path="otra_produccion" name="otra_produccion"  class="form-control"  placeholder="Otra producci�n art�stica">
                   </div>

                  
                   <button type="submit" class="btn btn-primary" name="action" value="enviar">Enviar</button>

				</form:form>
				
				</c:when>
				
				<c:otherwise>
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/produccionEditar"
					modelAttribute="produccion">

<<<<<<< HEAD
					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">
=======
					<!-- -DNI -->
					<div class="form-group">
						<label for="inputName">DNI:</label>
						<c:out value="${dni}" />
						<input type="hidden" id="dni"value="${produccion.dni}" path="dni" name="dni">
					</div>
>>>>>>> a7d6ede978e00091e272d17417aeb38fe38b240f

					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		
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
                       <c:out value="${produccion.articulos_revistas_con_referato}" />
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Art�culos publicados en revistas sin referato: </label>
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
                       <label for="Estado">Trabajos en eventos C-T publicados: </label>
                      <c:out value="${produccion.trabajos_eventos_ct_publicados}" />
                   </div>
                   
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados: </label>
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
                       <label for="Estado">Con titulo de propiedad intelectual: </label>
                       <c:out value="${produccion.con_titulo_prop_int}" />
                   </div>
                   
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual: </label>
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
                       <label for="Estado">Genero literario dram�tico, po�tico o ensayo: </label>
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

				</form:form>
				
				</c:otherwise>
			
			</c:choose>
				
			</div>	<!--container-->
		</div>
	</div>
<%@include file="includes/footer.jsp" %>
</body>
</html>