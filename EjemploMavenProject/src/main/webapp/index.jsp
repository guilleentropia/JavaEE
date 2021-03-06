<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%><%@ taglib
	uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" />
<title >Comic Store</title>
</head>

<%
	if (session.getAttribute("rol") == null) {
		response.sendRedirect("Login.jsp");
	}
%>



<body class="body">

	<p style="text-align: right; color: orange; font-size: 16px; font-style:bold;">
		Bienvenido!!
		<c:out value="${sessionScope.usuario}">
		</c:out>
		<a style="color: white;" href="/EjemploMavenProject/Logout">Logout</a>
	</p>
	<h2 class="tituloinicial">COMIC STORE</h2>

	<header>
		<nav>
			<ul>
				<li id="users">Usuarios
					<div>
						<ul>
							<li><a href="ListLogin" class="lista">Mostrar todos los
									Usuarios</a></li>
							<li><a href="/EjemploMavenProject/AddLogin" class="lista">Agregar
									Usuario</a></li>

						</ul>
					</div>
				</li>
			
			
				<li id="comics">Comics
					<div>
						<ul>
							<li><a href="ListComic" class="lista">Mostrar todos los
									Comics</a></li>
							<li id="addcomic"><a
								href="/EjemploMavenProject/AddComic.jsp" class="lista">Agregar
									Comic</a></li>
						</ul>
					</div>
				</li>
			

		

				<li id="persons">Personas
					<div>
						<ul>
							<li><a href="ListPerson" class="lista">Mostrar todas las
									Personas</a></li>
							<li><a href="/EjemploMavenProject/AddPerson.jsp"
								class="lista">Agregar Persona</a></li>
						</ul>
					</div>
				</li>

			

			
				<li id="loan">Prestamos
					<div>
						<ul>
							<li><a href="ListLoan" class="lista">Mostrar todos los
									Prestamos</a></li>
							<li><a href="/EjemploMavenProject/AddLoan"
								class="lista">Agregar Prestamo</a></li>
						</ul>
					</div>
				</li>

			</ul>

		</nav>
	</header>
	<br>
	<br>
	<br>
	<img id="imag"
		src="http://gamergrub.com/v2/wp-content/gallery/gamer-grub-big-bang-theory/gamer-grub-3_0.jpg"
		width=800px height=400px>

	<c:set var="compare" value="${ sessionScope.rol}">
	</c:set>
	<c:choose>
		<c:when test="${compare=='USUARIO'}">
			<script type="text/javascript">
				document.getElementById("users").style.visibility = "hidden";
			</script>

		</c:when>
		<c:when test="${compare == null}">
			<script type="text/javascript">
				document.getElementById("users").style.visibility = "hidden";
				document.getElementById("addcomic").style.visibility = "hidden";
				document.getElementById("loan").style.visibility = "hidden";
				document.getElementById("persons").style.visibility = "hidden";
				document.getElementById("comics").style.width = "300px";
				document.getElementById("comics").style.textAlign ="center";
			</script>
		</c:when>
		<c:when test="${compare =='VISITANTE'}">
			<script type="text/javascript">
				document.getElementById("users").style.visibility = "hidden";
				document.getElementById("addcomic").style.visibility = "hidden";
				document.getElementById("loan").style.visibility = "hidden";
				document.getElementById("persons").style.visibility = "hidden";
				document.getElementById("comics").style.width = "300px";
				document.getElementById("comics").style.textAlign ="center";
			</script>
		</c:when>
		<c:when test="${compare =='ADMINISTRADOR'}">

		</c:when>

	</c:choose>

</body>
</html>