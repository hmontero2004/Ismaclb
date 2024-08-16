<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Eliminar Clientes</h1>
 
<form action="del" method="get">
 
    <!-- Verifica que el objeto "Clientes" esté presente antes de intentar acceder a sus atributos -->
    <input type="hidden" id="idClientess" name="idClientess" value="${Clientes.idClientess}" />
 
    <strong>¿Deseas Borrar esta Clientes?</strong>
    <br/>
    
    <!-- Botón para confirmar la eliminación -->
    <button type="submit">BORRAR</button>
    
    <!-- Botón para cancelar y redirigir a la lista de Clientess -->
   
    <button onclick="window.location.href='/ismac-libreriaa-web-online/clientes/findAll'; return false:">
        CANCELAR
    </button>
</form>

</body>
</html>