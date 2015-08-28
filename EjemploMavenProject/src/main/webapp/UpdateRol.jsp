<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Modificar Rol</title>
</head>
<%
	if (session.getAttribute("rol") == null || session.getAttribute("rol")!="ADMINISTRADOR") {
		response.sendRedirect("Login.jsp");
	}
%>
<body>

<form method="post"
		action="UpdateRol" class="form">
		<p >Modificar Rol</p>
<div class="contiene">
			<div>
				 <input type="hidden" name="Id"
					id="Id" value="${rol.idRol}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="descripcion">Rol</label>
				<input type ="text"name="descripcion" id="descripcion" value="${rol.descripcion}"
				 required
				 oninvalid="setCustomValidity('Ingrese un nombre valido para el Rol')"
                 oninput="setCustomValidity('')"/><br><br>
			</div>

			
</div>
		
			 <input type="submit" value="Guardar" /> <a href="${pageContext.request.contextPath}/index.jsp">Cancelar</a>
		
	</form>



</body>
</html>