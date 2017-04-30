<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro Pessoal - Infoprice</title>
</head>
<body>
	
	<h1>Lista de Endereços</h1>
	
	<table>
	
		<tr>
			<td>Nome</td>
			<td>Email</td>
			<td>Logradouro</td>
			<td>Numero</td>
			<td>Complemento</td>
			<td>Bairro</td>
			<td>Cidade</td>
		</tr>
		
		<c:forEach items="${address}" var="address">
		<tr>
			<td>${address.nome}</td>
			<td>${address.email}</td>
			<td>${address.logradouro}</td>
			<td>${address.numero}</td>
			<td>${address.complemento}</td>
			<td>${address.bairro}</td>
			<td>${address.cidade}</td>
		</tr>
		</c:forEach>
			
	</table>
	
</body>
</html>