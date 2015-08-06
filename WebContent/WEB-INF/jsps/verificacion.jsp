<%@include file="includes/header.jsp" %>

<body>
	<header>
		<title>Ingrese su tipo y número de Documento</title>
	</header>

	<div class="col-lg-4 col-lg-offset-4">
		<img src="resources/images/marca.png">
		<div class="well">
			<div class="container2">
				<div class="row">
					 <div class="verific"> 
						<form:form class="myform" method="post"
							action="${pageContext.request.contextPath}/control" modelAttribute="alumno">

							<!-- TIPO DNI -->
							<div class="form-group">
								<div class="dropdown">
									<label for="inputNumDoc">Tipo de Documento</label><br> 
                                    <select class="form-control" id="sel1" id="alu_doc_id" value="hola" path="alu_doc_id" name="alu_doc_id">
                                        <option value="NONE" label="Seleccione un tipo de Documento"></option>
										<c:forEach var="documento" items="${documentos}">
											<option value="${documento.doc_id}"><c:out value="${documento.doc_nombre}"></c:out></option>
										</c:forEach>
                                    </select>
								</div>
							</div>

							<!-- Nro DOCUMENTO -->
							<div class="form-group">
								<label for="inputNumDoc">N° Documento</label> 
								<input type="text"class="form-control" path="alu_dni" id="alu_dni" name="alu_dni" placeholder="N° Documento">
							</div>

							
							<input type="hidden" name="cur_id" value="${cur_id}">

							<button type="submit" class="btn btn-primary">Enviar</button>

						</form:form>
					 </div>
				</div>
			</div> <!--container-->
		</div>
	</div>
	
	<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery-1.7.1.min.js"></script> 
	<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.js"></script> 
	<script src="resources/bootstrap-3.3.4-dist/assets/js/jquery.validate.min.js"></script> 
	<script src="resources/bootstrap-3.3.4-dist/script.js"></script> 
		 
	<script>
			addEventListener('load', prettyPrint, false);
			$(document).ready(function(){
			$('pre').addClass('prettyprint linenums');
				});
	</script> 

</body>

</html>
