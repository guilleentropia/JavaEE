<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Insert title here</title>
</head>
<body>
<form method="post" action="AddLoan" class="form">
<p >Agregar Comic</p>
<div class="contiene">
		<br><br>
		<label style="color:black">Comic :</label>
		<select style="width:350px" id="comic" name="comic" onchange="comic" required
		oninvalid="setCustomValidity('Seleccione un Comic por favor...')" 
        oninput="setCustomValidity('')">
		<option value="">Seleccione un Comic</option>
		<c:forEach var="b" items="${lista}">
		<option value="${b.idComic}">${b.nameComic}</option>
		</c:forEach>
		</select>
		
		<br><br>
		
		 <label style="color:black">Persona :</label>
		<select style="width:350px" id="person" name="person" onchange="person" required
		oninvalid="setCustomValidity('Seleccione una Persona por favor...')" 
        oninput="setCustomValidity('')">
		<option value="">Seleccione una Persona</option>
		<c:forEach var="a" items="${listaper}">
		<option value="${a.idPerson}">${a.namePerson}</option>
		</c:forEach>
		
		</select>
		
		<br><br>
		
		<label style="color:black" name="fecha">Fecha :</label>
		<input type ="text" name="fecha" required
		oninvalid="setCustomValidity('El campo fecha es requerido')" 
        oninput="setCustomValidity('')"></input><label style="color:orange; width:350px">La fecha debe tener formato dd-mm-yyyy</label>
		
		<br><br><br><br>
		
	</div>	
	<input type="submit" value="Guardar">
<a href="/EjemploMavenProject/index.jsp"> Cancelar</a>
 

</form>

</body>
</html>