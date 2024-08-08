<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Libros</title>
      <button onclick="window.location.href='/ismac-libreriaa-web-online/libros/findOne?opcion=1'; return false">
	Agregar
    </button>
</head>
<body>
	<h1>Libros</h1>

	<table>
		<thead>
			<tr>
				<th>idLibro</th>
				<th>T�tulo</th>
				<th>Editorial</th>
				<th>N�mero de P�ginas</th>
				<th>Edici�n</th>
				<th>Idioma</th>
				<th>Fecha de Publicaci�n</th>
				<th>Descripci�n</th>
				<th>Tipo de Pasta</th>
				<th>ISBN</th>
				<th>N�mero de Ejemplares</th>
				<th>Portada</th>
				<th>Presentaci�n</th>
				<th>Precio</th>
				<th>Categor�a</th>
				<th>Autor</th>
				<th>Acciones</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="item" items="${libros}">
				<tr>
					<td>${item.idLibro}</td>
					<td>${item.titulo}</td>
					<td>${item.editorial}</td>
					<td>${item.numPaginas}</td>
					<td>${item.edicion}</td>
					<td>${item.idioma}</td>
					<td>${item.fechaPublicacion}</td>
					<td>${item.descripcion}</td>
					<td>${item.tipoPasta}</td>
					<td>${item.ISBN}</td>
					<td>${item.numEjemplares}</td>
					<td>${item.portada}</td>
					<td>${item.presentacion}</td>
					<td>${item.precio}</td>
					<td>${item.categoria.categoria}</td>  
					<td>${item.autor.nombre}${item.autor.apellido}</td>
					<td>
					 	<button onclick="window.location.href='/libros/findOne?idLibro=${item.idLibro}&opcion=1'; return false">
					 		Actualizar
					 	</button>
					 	<button onclick="window.location.href='/libros/del?idLibro=${item.idLibro}'; return false">
					 		Eliminar
					 	</button>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>