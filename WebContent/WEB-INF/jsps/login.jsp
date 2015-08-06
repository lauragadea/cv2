<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<!DOCTYPE html>
<html>

<head>
	<title>Currículum Vitae</title>
	
	<meta charset="UTF-8">
	<link rel="stylesheet"	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
	<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
</head>

<body onload='document.loginForm.username.focus();'>

	<div class="col-lg-4 col-lg-offset-4">
		<img src="resources/images/marca.png">
		<div class="well">

		<c:choose>
			<c:when test="${objeto == false}">
				<label> Usted ya se encuentra registrado. </label>
			</c:when>
		</c:choose>

			<form class="form-signin" name='loginForm'
				action="<c:url value='/j_spring_security_check' />"
				method='POST'>

				<div class="form-group">
					<label for="inputNumDoc"> N° Documento</label> <input
						type="text" name="username" placeholder="N° Documento">
				</div>
				<div class="form-group">
					<label for="inputPass">Contraseña</label> <input
						type="password" name="password">
				</div>
				<input class="btn btn-primary" name="submit" type="submit" value="Iniciar Sesión" />
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			
			<div class="mensaje">
				¿No tenés una cuenta? <a href="<c:url value="/registro" />">Regístrate aquí.</a>
			<div class="mensajepass"> Si olvidó su contraseña o no puede ingresar, comuníquese con el Departamento de Tecnología a sistemas@um.edu.ar o llamando al 4202017 (int 167)
				
			<c:if test="${not empty error}">
				<div class="error">${error}</div>
			</c:if>
			<c:if test="${not empty msg}">
				<div class="msg">${msg}</div>
			</c:if>
			</div>
		</div>	
	</div>		
</body>
</html>