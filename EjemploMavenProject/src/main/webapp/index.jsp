<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Comic Store</title>
</head>
<body class="body">
<h2>COMIC STORE</h2>
<p>	el atributo dice<%	String nombre_variable = (String)session.getAttribute("nombre_param"); %></p>
	<header>	
		<nav>	
		   <ul>
			    <li>Usuarios		
					<div>
						<ul>
							<li><a href="ListLogin" class="lista">Mostrar todos los Usuarios</a></li>
							<li><a href="/EjemploMavenProject/AddLogin" class="lista">Agregar Usuario</a></li>
						</ul>
					</div>	
				</li>	
				
			
			
			
			
			
				<li>Comics			
					<div>
						<ul>
							<li><a href="ListComic" class="lista">Mostrar todos los Comics</a></li>
							<li><a href="/EjemploMavenProject/AddComic.jsp" class="lista">Agregar Comic</a></li>
						</ul>
					</div>	
				</li>	
				
			
			
				<li>Personas			
					<div>
						<ul>
							<li><a href="ListPerson" class="lista">Mostrar todas las Personas</a></li>
							<li><a href="/EjemploMavenProject/AddPerson.jsp" class="lista">Agregar Persona</a></li>
						</ul>
					</div>	
				</li>	
				

   	
	
			
			
				<li>Prestamos		
					<div>
						<ul>
							<li><a href="ListLoan" class="lista">Mostrar todos los Prestamos</a></li>
							<li><a href="/EjemploMavenProject/AddLoan.jsp" class="lista">Agregar Prestamo</a></li>
						</ul>
					</div>	
				</li>	
				
			</ul>
			
		</nav>	
	</header>	
	
	<img src="http://howtolovecomics.com/wp-content/uploads/2013/09/shop_photo1.jpg?aac610"
width=250px height=250px>
</body>
</html>