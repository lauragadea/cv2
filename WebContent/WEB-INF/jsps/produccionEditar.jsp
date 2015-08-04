<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
	<link type="text/css" rel="stylesheet" href="http://fonts.googleapis.com/css?family=Archivo+Narrow:400,700,700italic,400italic">
	<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>

	<script src="jquery-1.8.3.js"></script>
	<script src="resources/bootstrap-3.3.4-dist/js/bootstrap.js"></script>


	<header>
		<title>Curr�culum Vitae</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
		<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				
				<div class="logout">
					<div class="row">
						<div class="col-md-7"></div>
						<div class="col-md-3">Usuario: ${dni}</div>
						<div class="col-md-2"><a href="<c:url value="/logout" />">Salir</a></div>
					</div>
				</div>
				
				<h1>Curr�culum Vitae</h1>
				<p>Seleccione una categor�a para cargar/editar sus datos:</p>
				
				<!-- NAVBAR -->
					
					<nav class="navbar navbar-default">
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li><a href="http://localhost:8080/spring/datos" role="button">Datos Personales</a></li>
				        <li><a href="http://localhost:8080/spring/formacion" role="button">Formaci�n</a></li>
				        <li><a href="http://localhost:8080/spring/cargos" role="button">Cargos</a></li>
				        <li><a href="http://localhost:8080/spring/antecedentes" role="button">Antecedentes</a></li>
				        <li><a href="http://localhost:8080/spring/produccion" role="button">Producci�n</a></li>
				        <li><a href="http://localhost:8080/spring/otrosantecedentes" role="button">Otros Antecedentes</a></li>
				      </ul>
				    </div>
				</nav>
				<!--  -->

				<form:form id="registration-form" class="form-horizontal"
					method="post"
					action="${pageContext.request.contextPath}/modificarproduccion"
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
		                       <h2>PRODUCCION</h2>
		                       <h3>Producci�n cient�fica</h3>
		     				</div>
		                   	<div class="col-md-1"></div>
		                   	<div class="col-md-3">
	                   	</div>
		                </div>
					</div>

        			<!-- PRODUCCION -->

                   <!-- Art�culos publicados en revistas con/sin referato --> 
                   <div class="form-group">
                       <label for="artRef">Art�culos publicados en revistas con referato</label>
                       <input type="text" id="articulos_revistas_con_referato" path="articulos_revistas_con_referato" 
                       	name="articulos_revistas_con_referato" class="form-control"
					  	placeholder="Art�culos publicados en revistas con referato"
					  	value="${articulos_revistas_con_referato}">
                   </div>
                   
                   <div class="form-group">
                       <label for="artSRef">Art�culos publicados en revistas sin referato</label>
                       <input type="text" id="articulos_revistas_sin_referato" path="articulos_revistas_sin_referato" 
                       		name="articulos_revistas_sin_referato" class="form-control"
					  		placeholder="Art�culos publicados en revistas sin referato"
					  		value="${articulos_revistas_sin_referato}">
                   </div>
                   <!-- Libros --> 
                   <div class="form-group">
                       <label for="libros">Libros</label>
                       <input type="text" id="libros" path="libros" name="libros" class="form-control" 
                       		placeholder="Libros" value="${libros}">
                   </div>
                   <!-- Partes de Libros --> 
                   <div class="form-group">
                       <label for="partesLibros">Partes de Libros</label>
                       <input type="text" id="partes_libros" path="partes_libros" name="partes_libros"  
                       		class="form-control"  placeholder="Partes de Libros" value="${partes_libros}">
                   </div>
                   <!-- Trabajos en eventos C-T publicados --> 
                   <div class="form-group">
                       <label for="Estado">Trabajos en eventos C-T publicados</label>
                       <input type="text" id="trabajos_eventos_ct_publicados" path="trabajos_eventos_ct_publicados" 
                       		name="trabajos_eventos_ct_publicados" class="form-control"  
                       		placeholder="Trabajos en eventos C-T publicados" value="${trabajos_eventos_ct_publicados}">
                   </div>
                   <!-- Trabajos en eventos C-T no publicados --> 
                   <div class="form-group">
                       <label for="Trab">Trabajos en eventos C-T no publicados</label>
                       <input type="text" id="trabajos_eventos_ct_no_publicados" path="trabajos_eventos_ct_no_publicados" 
                       name="trabajos_eventos_ct_no_publicados"  class="form-control"  
                       placeholder="Trabajos en eventos C-T no publicados" value="${trabajos_eventos_ct_no_publicados}">
                   </div>
                   <!-- Dem�s producciones C-T --> 
                   <div class="form-group">
                       <label for="Estado">Dem�s producciones C-T</label>
                       <input type="text" id="demas_producciones_ct" path="demas_producciones_ct" name="demas_producciones_ct" 
                       class="form-control"  placeholder="Dem�s producciones C-T" value="${demas_producciones_ct}">
                   </div>

                   <!-- PRODUCCION TECNOLOGICA-->

                   <div class="form-group">
                       <h3>Producci�n Tecnol�gica</h3>
                   </div> 
                   <!-- Con titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Con titulo de propiedad intelectual</label>
                       <input type="text" id="con_titulo_prop_int" path="con_titulo_prop_int" name="con_titulo_prop_int"  
                       		class="form-control"  placeholder="Con titulo de propiedad intelectual" value="${con_titulo_prop_int}">
                   </div>
                   <!-- sin titulo de propiedad intelectual --> 
                   <div class="form-group">
                       <label for="Estado">Sin titulo de propiedad intelectual</label>
                       <input type="text" id="sin_titulo_prop_int" path="sin_titulo_prop_int" name="sin_titulo_prop_int"  
                       		class="form-control"  placeholder="Sin titulo de propiedad intelectual" value="${sin_titulo_prop_int}">
                   </div>
                   <!-- servicio cient�fico-tecnol�gico --> 
                   <div class="form-group">
                       <label for="Estado">Servicio cient�fico-tecnol�gico</label>
                       <input type="text" id="servicio_ct" path="servicio_ct" name="servicio_ct"  class="form-control"
                       		placeholder="Servicio cient�fico-tecnol�gico" value="${servicio_ct}">
                   </div>
                   <!-- Informe t�cnico --> 
                   <div class="form-group">
                       <label for="Estado">Informe t�cnico</label>
                       <input type="text" id="informe_tecnico" path="informe_tecnico" name="informe_tecnico"  
                       class="form-control"  placeholder="Informe t�cnico" value="${informe_tecnico}">
                   </div>
                   
                   <!-- PRODUCCION ART�SICA-->

                   <div class="form-group">
                       <h3>Producci�n Art�stica</h3>
                   </div>     
                   <!-- Musical-sonora --> 
                   <div class="form-group">
                       <label for="Estado">Musical-sonora</label>
                       <input type="text" id="musical_sonora" path="musical_sonora" name="musical_sonora"  
                       class="form-control"  placeholder="Musical-sonora" value="${musical_sonora}">
                   </div>
                   <!-- Visual --> 
                   <div class="form-group">
                       <label for="Estado">Visual</label>
                       <input type="text" id="visual" path="visual" name="visual" class="form-control" placeholder="Visual" value="${visual}">
                   </div>
                   <!-- Audiovisual multimedial --> 
                   <div class="form-group">
                       <label for="Estado">Audiovisual multimedial</label>
                       <input type="text" id="audiovisual" path="audiovisual" name="audiovisual" class="form-control"  
                       placeholder="Audiovisual multimedial" value="${audiovisual}">
                   </div>
                   <!-- Corporal teatral --> 
                   <div class="form-group">
                       <label for="Estado">Corporal teatral</label>
                       <input type="text" id="corporal_teatral" path="corporal_teatral" name="corporal_teatral"  
                       class="form-control"  placeholder="Corporal teatral" value="${corporal_teatral}">
                   </div>
                   <!-- Genero literario narrativo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario narrativo</label>
                       <input type="text" id="genero_literario_narrativo" path="genero_literario_narrativo" 
                       name="genero_literario_narrativo" class="form-control"  placeholder="Genero literario narrativo"
                       value="${genero_literario_narrativo}">
                   </div>
                   <!-- Genero literario dram�tico, po�tico o ensayo --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario dram�tico, po�tico o ensayo</label>
                       <input type="text" id="genero_literario_dramatico" path="genero_literario_dramatico"
						name="genero_literario_dramatico"  class="form-control"  
						placeholder="Genero literario dram�tico, po�tico o ensayo" value="${genero_literario_dramatico}">
                   </div>
                   <!-- Genero literario gui�n --> 
                   <div class="form-group">
                       <label for="Estado">Genero literario gui�n</label>
                       <input type="text" id="genero_literario_guion" path="genero_literario_guion" 
                       name="genero_literario_guion" class="form-control"  placeholder="Genero literario gui�n" value="${genero_literario_guion}">
                   </div>
                   <!-- otro tipo de Genero literario --> 
                   <div class="form-group">
                       <label for="Estado">Otro tipo de Genero literario</label>
                       <input type="text" id="otro_tipo" path="otro_tipo" name="otro_tipo"  class="form-control"  
                       placeholder="Otro tipo de Genero literario" value="${otro_tipo}">
                   </div>
                   <!-- otra producci�n art�stica --> 
                   <div class="form-group">
                       <label for="Estado">Otra producci�n art�stica</label>
                       <input type="text" id="otra_produccion" path="otra_produccion" name="otra_produccion"  
                       class="form-control"  placeholder="Otra producci�n art�stica" value="${otra_produccion}">
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
</body>

<footer>
	<div class="col-lg-6 col-lg-offset-3">
		<div class="well">
			<div class="row">
				<div class="col-lg-12">
					<div class="col-md-4">
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="https://mail.um.edu.ar/horde3/imp/">Webmail</a>
							</div>
						</div>
						<div class="row">
							<div class="col-md-4">
								<a class="enlace" target="_blank"
									href="/es/mapa-sitio.html?lang=es">Mapa del Sitio</a>
							</div>
						</div>

					</div>

					<div class="col-md-7">
						<p>Boulogne Sur Mer 683. CP 5500. Mendoza, Argentina
							Tel�fonos: 54 261 4202017. Fax: 54 261 4202017 (Opci�n 9)</p>
					</div>
				</div><!--col-6-->
			</div>
		</div><!--well-->
	</div>
</footer>
</html>