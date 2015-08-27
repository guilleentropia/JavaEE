<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<title>Modificar Usuario</title>
</head>
<body>
<form method="post"
		action="UpdateLogin" class="form">
		<p >Modificar Usuario</p>
<div class="contiene">
			<div>
				 <input type="hidden" name="Id"
					id="Id" value="${login.idLogin}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="user">Usuario</label>
				<input type ="text"name="user" id="user" value="${login.usuario}"
				 required
				 oninvalid="setCustomValidity('Ingrese un valor valido para Usuario!')"
                 oninput="setCustomValidity('')"/><br><br>
			</div>

			<div style="color:black">
				<label for="password">Contraseña</label> 
				<input name="password" id="password" value="${login.password}"
					required 
					oninvalid="setCustomValidity('Debe ingresar una Contraseña!')" 
        			oninput="setCustomValidity('')"/><br><br>
			</div>
			

</div>
		
			 <input type="submit" value="Guardar" /> <a href="${pageContext.request.contextPath}/index.jsp">Cancelar</a>
		
	</form>

</body>
</html>