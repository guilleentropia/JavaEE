<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Insert title here</title>
</head>

<body>
<form method="post"
		action="UpdatePerson" class="form">
		<fieldset>
		<p >Modificar Persona</p>
<div class="contiene">			
			<div>
				 <input type="hidden" name="Id"
					id="Id" value="${person.idPerson}"  /><br><br>
			</div>
			
			<div style="color:black">
				<label for="namePerson">Nombre</label> <input name="Name" id="Name" 
					value="${person.namePerson}"
					required maxlength=45
				oninvalid="setCustomValidity('Debe ingresar un Nombre!')" 
       		    oninput="setCustomValidity('')" /><br><br>
			</div>

				
			<div style="color:black">
				<label for="telephonePerson">Telefono</label> <input type ="number" name="Telephone" id="Telephone" 
					value="${person.telephonePerson}"
					required maxlength=45
				oninvalid="setCustomValidity('Ingrese un numero de Telefono valido')" 
        		oninput="setCustomValidity('')" /><br><br>
			</div>			
		

</div>		
	</fieldset>
			 <input type="submit" value="Guardar" /><a href="${pageContext.request.contextPath}/index.jsp">Cancelar</a>
		
	</form>

<c:set var="compare" value="${ sessionScope.rol}">
	</c:set>
	<c:choose>
		<c:when test="${compare=='USUARIO'}">


		</c:when>
		<c:when test="${compare =='VISITANTE'}">
			<%
				response.sendRedirect("Login.jsp");
			%>
		</c:when>

		<c:when test="${compare == null}">
			<%
				response.sendRedirect("Login.jsp");
			%>
		</c:when>
	</c:choose>


</body>
</html>