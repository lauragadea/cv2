<%@include file="includes/header.jsp" %>

<body>

	<header>
		<title>Registro de usuario</title>
	</header>

	<div class="col-lg-6 col-lg-offset-3">
	<img src="resources/imagenes/marca.png">
		<div class="well">
			<div class="container">
				<div class="row">
					<div class="col-lg-6">
						<form:form id="registration-form" class="form-horizontal" method="post"
							action="${pageContext.request.contextPath}/registrado" modelAttribute="user">

							
							<!-- Nro DOCUMENTO -->
							<div class="form-group">
								<label for="inputNumDoc">N� Documento</label> <br>
								<c:out value="${DNI}">${DNI}</c:out>
                                <input path="DNI" id="DNI" class="form-control" type="text" name="DNI" value="${DNI}">
							</div>

							<div class="form-group">
								<label for="inputPass">Contrase�a</label> <br>
								<c:out value="${password}">${password}</c:out>
                                <input path="password" id="password" class="form-control" type="password" name="password" value="${password}">
							</div>
							

						
							<button type="submit" class="btn btn-primary">Enviar</button>

						</form:form>
					</div>
				</div>
			</div>
			<!--container-->
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

<%@include file="includes/footer.jsp" %>
</body>
</html>

