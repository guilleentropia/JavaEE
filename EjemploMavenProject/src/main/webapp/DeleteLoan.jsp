<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Eliminar Prestamo</title>
</head>
<%
	if (session.getAttribute("rol") == null || session.getAttribute("rol")!="ADMINISTRADOR") {
		response.sendRedirect("Login.jsp");
	}
%>
<body>

<form method="post"
		action="DeleteLoan" class="form">
<p >Eliminar Prestamo</p>
<div class="contiene">		
		<fieldset>
			<br>
			<div style="color:black">
				<input type="hidden" name="Id"
					id="Id"  value="${loan.idLoan}"  /><br><br>
			</div>

			<div style="color:black">
				<label>Persona</label> <input name="person" id="person" disabled
					value="${person.namePerson}"  /><br><br>
			</div>

			<div style="color:black">
				<label>Comic</label> <input name="comic" id="comic" disabled
					value="${comic.nameComic}"  /><br><br>
			</div>

		</fieldset>

</div>		
			  <input type="submit" value="Guardar" /><a href="/EjemploMavenProject/index.jsp">Cancelar</a>
		
	</form>


</body>
</html>