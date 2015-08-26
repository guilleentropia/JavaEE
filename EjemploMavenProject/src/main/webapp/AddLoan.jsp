<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="com.comics.app.Controller.comicController" %>
  <%@ page  import="java.util.ArrayList"%><%@ page  import="java.util.List"%>
  <%@ page import="com.comics.app.Model.Comic" %>
  <!DOCTYPE html>
<html>
<head>
<meta charset="${encoding}">
<link rel="stylesheet" type="text/css" href="Css/Style.css" /> 
<title>Insert title here</title>
</head>
<body>
<form method="post" action="AddComic" class="form">
<p >Agregar Comic</p>
<div class="contiene">
		<select>
		<option>Seleccione un Comic</option>
		<%
		comicController cont = new comicController();
		List<Comic> lista = new ArrayList<Comic>();
		lista = cont.getAll();
		for(int i =0; i<lista.size();i++){
	     %>
		<option><% lista.get(i).getNameComic(); %></option>
		<option> 3 </option>
		</select>
		<% } %>
		
		
	</div>	
 
</div>
</form>

</body>
</html>