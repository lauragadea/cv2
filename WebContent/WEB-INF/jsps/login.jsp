<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>
<head>
<title>Curr�culum Vitae</title>

<meta charset="UTF-8">
<link rel="stylesheet"
	href="resources/bootstrap-3.3.4-dist/css/bootstrap.css" />
<link rel="stylesheet" href="resources/bootstrap-3.3.4-dist/style.css" />
</head>
<body onload='document.loginForm.username.focus();'>

	<div class="col-lg-4 col-lg-offset-4">
		<img src="resources/images/marca.png">
		<div class="well">
			<form class="form-signin" name='loginForm'
				action="<c:url value='/j_spring_security_check' />"
				method='POST'>

				<div class="form-group">
					<label for="inputNumDoc"> N� Documento</label> <input
						type="text" name="username" placeholder="N� Documento">
				</div>
				<div class="form-group">
					<label for="inputPass">Contrase�a</label> <input
						type="password" name="password">
				</div>
				<input class="btn btn-primary" name="submit" type="submit" value="Iniciar Sesi�n" />
				<input type="hidden" name="${_csrf.parameterName}"
					value="${_csrf.token}" />
			</form>
			
			<div class="mensaje">
				�No ten�s una cuenta? <a href="<c:url value="/registro" />">Reg�strate aqu�.</a>
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