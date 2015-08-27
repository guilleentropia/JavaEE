<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Listado de Usuarios</title>
</head>
<body>
<p class="titulo"> Listado de Usuarios </p>
<table>

		<tr>
			
			<th>Usuario</th>
			<th>Contraseña</th>
			<th>Modificar</th>
		    <th>Eliminar</th>
		    
		</tr>
<c:forEach var="b" items="${lista}">
	
			<tr>
		    
			<td>${b.usuario}</td>
			<td>${b.password}</td>
			<td width=50px>
				 <form name = "modificar" method="get" action="UpdateLogin" class="acciones">
					<a href="/EjemploMavenProject/UpdateLogin?Id=${b.idLogin}">
					<img src="http://png-4.findicons.com/files/icons/77/icandy_junior_toolbar/128/write.png"
					width=32px height=32px>
					</a>
				</form>
			</td>
			<td width=50px> 
				<form name = "eliminar" method="get" action="DeleteLogin" class="acciones">
					<a href="/EjemploMavenProject/DeleteLogin?Id=${b.idLogin}">
					<img src="https://files.opensuse.org/opensuse/en/b/be/Icon-trash.png"
					width=32px height=32px>
					</a>
				</form>
			</td>
			
		</tr>
	</c:forEach>
</table>
<br><br>
		<a href="/EjemploMavenProject/index.jsp"  style="margin: 0 auto; display:block; text-align: center">
  		 <button>Volver al Inicio</button>
		</a>


</body>
</html>