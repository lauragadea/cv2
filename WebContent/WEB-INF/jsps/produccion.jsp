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

					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">

        			<!-- PRODUCCION -->
        			
        			<!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producción Científica</h3>
                   </div>

                   <!-- Artículos publicados en revistas con/sin referato --> 
                   <div class="form-group">
                       <label for="artRef">Artículos publicados en revistas con referato</label>
                       <textarea wrap="hard" id="articulos_revistas_con_referato" path="articulos_revistas_con_referato" name="articulos_revistas_con_referato" class="form-control"
					  placeholder="Artículos publicados en revistas con referato"></textarea>
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Artículos publicados en revistas sin referato</label>
                       <textarea wrap="hard" id="articulos_revistas_sin_referato" path="articulos_revistas_sin_referato" name="articulos_revistas_sin_referato" class="form-control"
					  placeholder="Artículos publicados en revistas sin referato"></textarea>
                   </div>
                   <!-- Libros --> 
                   <div class="form-group">
                       <label for="libros">Libros</label>
                       <textarea wrap="hard" id="libros" path="libros" name="libros" class="form-control"  placeholder="Libros"></textarea>
                   </div>
                   <!-- Partes de Libros --> 
                   <div class="form-group">
                       <label for="partesLibros">Partes de Libros</label>
                       <textarea wrap="hard" id="partes_libros" path="partes_libros" name="partes_libros"  class="form-control"  placeholder="Partes de Libros"></textarea>
                   </div>
                   <!-- Trabajos en eventos C-T publicados --> 
                   <div class="form-group">
                       <label for="Estado">Trabajos en eventos C-T publicados</label>
                       <textarea wrap="hard" id="trabajos_eventos_ct_publicados" path="trabajos_eventos_ct_publicados" name="trabajos_eventos_ct_publicados" class="form-control"  placeholder="Trabajos en eventos C-T publicados"></textarea>
                   </div>
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados</label>
                       <textarea wrap="hard" id="trabajos_eventos_ct_no_publicados" path="trabajos_eventos_ct_no_publicados" name="trabajos_eventos_ct_no_publicados"  class="form-control"  placeholder="Trabajos en eventos C-T no publicados"></textarea>
                   </div>
                   <!-- Demás producciones C-T --> 
                   <div class="form-group">
                       <label for="Estado">Demás producciones C-T</label>
                       <textarea wrap="hard" id="demas_producciones_ct" path="demas_producciones_ct" name="demas_producciones_ct" class="form-control"  placeholder="Demás producciones C-T"></textarea>
                   </div>

                   <!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producción Tecnológica</h3>
                   </div> 
                   <!-- Con titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Con titulo de propiedad intelectual</label>
                       <textarea wrap="hard" id="con_titulo_prop_int" path="con_titulo_prop_int" name="con_titulo_prop_int"  class="form-control"  placeholder="Con titulo de propiedad intelectual"></textarea>
                   </div>
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual</label>
                       <textarea wrap="hard" id="sin_titulo_prop_int" path="sin_titulo_prop_int" name="sin_titulo_prop_int"  class="form-control"  placeholder="Sin titulo de propiedad intelectual"></textarea>
                   </div>
                   <!-- servicio científico-tecnológico --> 
                   <div class="form-group">
                       <label for="Estado">Servicio científico-tecnológico</label>
                       <textarea wrap="hard" id="servicio_ct" path="servicio_ct" name="servicio_ct"  class="form-control"  placeholder="Servicio científico-tecnológico"></textarea>
                   </div>
                   <!-- Informe técnico --> 
                   <div class="form-group">
                       <label for="Estado">Informe técnico</label>
                       <textarea wrap="hard" id="informe_tecnico" path="informe_tecnico" name="informe_tecnico"  class="form-control"  placeholder="Informe técnico"></textarea>
                   </div>
                   
                   <!-- PRODUCCION ARTÍSICA-->

                   <div class="form-group">
                       <h3>Producción Artística</h3>
                   </div>     
                   <!-- Musical-sonora --> 
                   <div class="form-group">
                       <label for="Estado">Musical-sonora</label>
                       <textarea wrap="hard" id="musical_sonora" path="musical_sonora" name="musical_sonora"  class="form-control"  placeholder="Musical-sonora"></textarea>
                   </div>
                   <!-- Visual --> 
                   <div class="form-group">
                       <label for="Estado">Visual</label>
                       <textarea wrap="hard" id="visual" path="visual" name="visual" class="form-control"  placeholder="Visual"></textarea>
                   </div>
                   <!-- Audiovisual multimedial --> 
                   <div class="form-group">
                       <label for="Estado">Audiovisual multimedial</label>
                       <textarea wrap="hard" id="audiovisual" path="audiovisual" name="audiovisual" class="form-control"  placeholder="Audiovisual multimedial"></textarea>
                   </div>
                   <!-- Corporal teatral --> 
                   <div class="form-group">
                       <label for="Estado">Corporal teatral</label>
                       <textarea wrap="hard" id="corporal_teatral" path="corporal_teatral" name="corporal_teatral"  class="form-control"  placeholder="Corporal teatral"></textarea>
                   </div>
                   <!-- Genero literario narrativo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario narrativo</label>
                       <textarea wrap="hard" id="genero_literario_narrativo" path="genero_literario_narrativo" name="genero_literario_narrativo" class="form-control"  placeholder="Genero literario narrativo"></textarea>
                   </div>
                   <!-- Genero literario dramático, poético o ensayo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario dramático, poético o ensayo</label>
                       <textarea wrap="hard" id="genero_literario_dramatico" path="genero_literario_dramatico" name="genero_literario_dramatico"  class="form-control"  placeholder="Genero literario dramático, poético o ensayo"></textarea>
                   </div>
                   <!-- Genero literario guión --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario guión</label>
                       <input type="text" id="genero_literario_guion" path="genero_literario_guion" name="genero_literario_guion" class="form-control"  placeholder="Genero literario guión">
                   </div>
                   <!-- otro tipo de Genero literario --> 
                   <div class="form-group">
                       <label for="Estado">Otro tipo de Genero literario</label>
                       <textarea wrap="hard" id="otro_tipo" path="otro_tipo" name="otro_tipo"  class="form-control"  placeholder="Otro tipo de Genero literario"></textarea>
                   </div>
                   <!-- otra producción artística --> 
                   <div class="form-group">
                       <label for="Estado">Otra producción artística</label>
                       <textarea wrap="hard" id="otra_produccion" path="otra_produccion" name="otra_produccion"  class="form-control"  placeholder="Otra producción artística"></textarea>
                   </div>

                  
                   <button type="submit" class="btn btn-primary" name="action" value="enviar">Guardar</button>

				</form:form>
				
				</c:when>
				
				<c:otherwise>
				
				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/produccionEditar"
					modelAttribute="produccion">

					<input type="hidden" id="dni" path="dni" name="dni" placeholder="DNI" value="${dni}">


					<!-- BOTON EDITAR -->
					<div class="form-group">
		     			<div class="row">
		     				<div class="col-md-8">
		
		                       <h3>Producción científica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
		                   		<button type="submit" class="btn btn-default" name="action" value="editar" enabled >Editar</button>	
		                   	</div>
		                </div>
					</div>

        			<!-- PRODUCCION -->

                   <!-- Artículos publicados en revistas con/sin referato --> 
                   <div class="form-group">
                       <label for="artRef">Artículos publicados en revistas con referato: </label>
                       <c:out value="${produccion.articulos_revistas_con_referato}" />
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Artículos publicados en revistas sin referato: </label>
                       <span class="texto"><c:out value="${produccion.articulos_revistas_sin_referato}" /></span>
                   </div>
                   
                   <!-- Libros --> 
                   <div class="form-group">
                       <label for="libros">Libros: </label>
                      <span class="texto"><c:out value="${produccion.libros}" /></span>
                   </div>
                   
                   <!-- Partes de Libros --> 
                   <div class="form-group">
                       <label for="partesLibros">Partes de Libros: </label>
                      <span class="texto"><c:out value="${produccion.partes_libros}" /></span>
                   </div>
                   
                   <!-- Trabajos en eventos C-T publicados --> 
                   <div class="form-group">
                       <label for="Estado">Trabajos en eventos C-T publicados: </label>
                      <span class="texto"><c:out value="${produccion.trabajos_eventos_ct_publicados}" /></span>
                   </div>
                   
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados: </label>
                       <span class="texto"><c:out value="${produccion.trabajos_eventos_ct_no_publicados}" /></span>
                   </div>
                   
                   <!-- Demás producciones C-T --> 
                   <div class="form-group">
                       	<label for="Estado">Demás producciones C-T: </label>
                   		<span class="texto"><c:out value="${produccion.demas_producciones_ct}" /></span>
                   </div>
                   

                   <!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producción Tecnológica</h3>
                   </div> 
                   
                   <!-- Con titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Con titulo de propiedad intelectual: </label>
                       <span class="texto"><c:out value="${produccion.con_titulo_prop_int}" /></span>
                   </div>
                   
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual: </label>
                       <span class="texto"><c:out value="${produccion.sin_titulo_prop_int}" /></span>
                   </div>
                   
                   <!-- servicio científico-tecnológico --> 
                   <div class="form-group">
                       <label for="Estado">Servicio científico-tecnológico: </label>
                       <span class="texto"><c:out value="${produccion.servicio_ct}" /></span>
                   </div>
                   
                   <!-- Informe técnico --> 
                   <div class="form-group">
                       <label for="Estado">Informe técnico: </label>
                       <span class="texto"><c:out value="${produccion.informe_tecnico}" /></span>
                   </div>
                   
                   <!-- PRODUCCION ARTÍSICA-->

                   <div class="form-group">
                       <h3>Producción Artística</h3>
                   </div>     
                   
                   <!-- Musical-sonora --> 
                   <div class="form-group">
                       <label for="Estado">Musical-sonora: </label>
                       <span class="texto"><c:out value="${produccion.musical_sonora}" /></span>
                   </div>
                   
                   <!-- Visual --> 
                   <div class="form-group">
                       <label for="Estado">Visual: </label>
                       <span class="texto"><c:out value="${produccion.visual}" /></span>
                   </div>
                   
                   <!-- Audiovisual multimedial --> 
                   <div class="form-group">
                       <label for="Estado">Audiovisual multimedial: </label>
                       <span class="texto"><c:out value="${produccion.audiovisual}" /></span>
                   </div>
                   
                   <!-- Corporal teatral --> 
                   <div class="form-group">
                       <label for="Estado">Corporal teatral: </label>
                      <span class="texto"><c:out value="${produccion.corporal_teatral}" /></span>
                   </div>
                   
                   <!-- Genero literario narrativo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario narrativo: </label>
                       <span class="texto"><c:out value="${produccion.genero_literario_narrativo}" /></span>
                   </div>
                   
                   <!-- Genero literario dramático, poético o ensayo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario dramático, poético o ensayo: </label>
                       <span class="texto"><c:out value="${produccion.genero_literario_dramatico}" /></span>
                   </div>
                   
                   <!-- Genero literario guión --> 
                   <div class="form-group">
                      <label for="Estado">Genero literario guión: </label>
                      <span class="texto"><c:out value="${produccion.genero_literario_guion}" /></span>
                   </div>
                   
                   <!-- otro tipo de Genero literario --> 
                   <div class="form-group">
                       <label for="Estado">Otro tipo de Genero literario: </label>
                       <span class="texto"><c:out value="${produccion.otro_tipo}" /></span>
                   </div>
                   
                   <!-- otra producción artística --> 
                   <div class="form-group">
                       <label for="Estado">Otra producción artística: </label>
                       <span class="texto"><c:out value="${produccion.otra_produccion}" /></span>
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