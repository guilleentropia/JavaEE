<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Eliminar Comic</title>
</head>
<body>
<form method="post"
		action="DeleteComic" class="form">
<p >Eliminar Comic</p>
<div class="contiene">		
		<fieldset>
			<br>
			<div style="color:black">
				 <input type="hidden" name="Id"
					id="Id"  value="${comic.idComic}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="quantityComic">Cantidad</label>
				<textarea name="Quantity" id="Quantity"  disabled>${comic.quantityComic} </textarea><br><br>
			</div>

			<div style="color:black">
				<label for="nameComic">Nombre</label> <input name="Name" id="Name" disabled
					value="${comic.nameComic}"  /><br><br>
			</div>

			<div style="color:black">
				<label for="companyComic">Compania</label> <input name="Company" id="Company" disabled
					value="${comic.companyComic}"  /><br><br>
			</div>
			
			<div style="color:black">
				<label for="reviewComic">Review</label> 
				<input name="Review" id="Review" disabled value="${comic.reviewComic}"/>
				<br><br>
					  
			</div>

		</fieldset>

</div>		
			  <input type="submit" value="Guardar" /><a href="/EjemploMavenProject/index.jsp">Cancelar</a>
		
	</form>

</body>
</html>